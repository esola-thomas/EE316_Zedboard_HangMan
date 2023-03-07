# Import libraries
from uart import *
import tkinter as tk
from time import sleep
import random

# Import words for hangman into list
w = open('words.txt', 'r')
words = w.readlines()
w.close()
words = [word.strip() for word in words]

# Constants for hangman
MAX_GUESSES = 6
GAMES_TOTAL = 0
GAMES_WON = 0
USED_WORDS = []

# Draw hangman
def draw_hangman(guess):
    # Reset canvas
    if guess == -1:
        canvas.delete("all")
    # Draw gallows
    if guess == 0:
        canvas.create_line(50, 250, 150, 250)
        canvas.create_line(100, 250, 100, 50)
        canvas.create_line(100, 50, 200, 50)
        canvas.create_line(200, 50, 200, 100)
    # Draw head
    elif guess == 1:
        canvas.create_oval(190, 100, 210, 120)
    # Draw body
    elif guess == 2:
        canvas.create_line(200, 120, 200, 200)
    # Draw arms
    elif guess == 3:
        canvas.create_line(200, 150, 180, 130)
    elif guess == 4:
        canvas.create_line(200, 150, 220, 130)
    # Draw legs
    elif guess == 5:
        canvas.create_line(200, 200, 180, 230)
    elif guess == 6:
        canvas.create_line(200, 200, 220, 230)
    canvas.pack()
    window.update()

def gui_text(text, x, y, color="black", size=20, id=None):
    # If id is given, delete text with that id to refresh
    if id:
        canvas.delete(id)
    # If text is -1, delete all text
    if text == -1:
        canvas.delete("all")
    else:
        text_id = canvas.create_text(x, y, text=text, fill=color, font=("Arial", size))
        canvas.pack()
        window.update()
        return text_id


# Create window
window = tk.Tk()
window.title('EE316 Lab 4: Hangman')
canvas = tk.Canvas(window, width=800, height=600)

# Define UART
uart = "test"

def main(GAMES_TOTAL, GAMES_WON):
    while GAMES_TOTAL < len(words):
        # Get random word
        while True:
            word = random.choice(words)
            if word not in USED_WORDS:
                USED_WORDS.append(word)
                break

        # Create string of underscores
        underscores = ['_' for i in word]
        underscores = ''.join(underscores)

        # Create list of letters
        alphabet = 'abcdefghijklmnopqrstuvwxyz'
        letters = [letter for letter in word if letter in alphabet]
        letters = ''.join(letters)

        # Create lists
        guesses = []
        incorrect = []
        correct = []
        used = []

        # Start game
        while True:
            WIN = False
            if len(incorrect) == 0 and len(correct) == 0:
                FIRST = True
            else:
                FIRST = False

            # Draw/Update hangman
            draw_hangman(len(incorrect))
            # Display underscores
            if FIRST:
                under_id = gui_text(underscores, 400, 200)
            else:
                under_id = gui_text(underscores, 400, 200, id=under_id)
            # Display Alphabet with used letters in red and correct letters in green
            for i in range(len(alphabet)):
                if alphabet[i] in used:
                    if alphabet[i] in correct:
                        gui_text(alphabet[i], 150 + 20 * i, 400, "green")
                    else:
                        gui_text(alphabet[i], 150 + 20 * i, 400, "red")
                else:
                    gui_text(alphabet[i], 150 + 20 * i, 400)
            # Show number of games in upper right
            gui_text(f"Games: {GAMES_TOTAL}", 700, 50)
            # Show number of games won
            gui_text(f"Games Won: {GAMES_WON}", 700, 100)

            # Get guess from UART
            guess = read_uart("test")

            # Check if guess is valid or has been used
            if guess not in alphabet:
                write_uart(uart, "Invalid guess")
                continue
            if guess in used:
                write_uart(uart, "Guess already used")
                continue
            used.append(guess)

            # Check if guess is correct
            if guess in letters:
                for i in range(len(letters)):
                    if letters[i] == guess:
                        underscores = underscores[:i] + guess + underscores[i+1:]
                        correct.append(guess)
                write_uart(uart, "Correct")
            else:
                incorrect.append(guess)
                write_uart(uart, "Incorrect")
            print(underscores)

            # Check if game is over
            if len(incorrect) == MAX_GUESSES:
                write_uart(uart, "Game over: Word was " + word)
                draw_hangman(len(incorrect))
                gui_text(underscores, 400, 200, color="red")
                break

            # Check if game is won
            if len(correct) == len(letters):
                write_uart(uart, "You win: Word was " + word)
                # Update underscore text
                gui_text(underscores, 400, 200, color="green", id=under_id)
                WIN = True
                break

        # Increment games total
        GAMES_TOTAL += 1

        # Check if game is won
        if WIN:
            GAMES_WON += 1

        # Ask if user wants to play again
        if GAMES_TOTAL == len(words):
            write_uart(uart, "You have played all the words, thank you for playing!")
            gui_text("You have played all the words", 400, 300, size=50)
            gui_text("Thank you for playing!", 400, 350, size=50)
            sleep(5)
            break
        write_uart(uart, "Play again? (y/n)")
        pa = gui_text("Play again? (y/n)", 400, 300, size=50)
        play_again = read_uart(uart)
        if play_again.lower() == "n":
            write_uart(uart, "Thank you for playing!")
            gui_text("Thank you for playing!", 400, 300, size=50, id=pa)
            sleep(5)
            break
        else:
            # Reset game
            draw_hangman(-1)
            gui_text(-1, 400, 200)

# Run main
main(GAMES_TOTAL, GAMES_WON)
