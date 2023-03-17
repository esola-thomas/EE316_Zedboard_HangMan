# Import libraries
import serial
from time import sleep

# Constants for UART
BAUD_RATE = 9600
# PORT = '/dev/tty.usbmodem141301'
# PORT = '/dev/tty.usbmodem141101'
PORT = 'COM3'

# Create UART object
def create_uart():
    try:
        uart = serial.Serial(PORT, BAUD_RATE, write_timeout=1, timeout=1)
        print("Connected to UART.")
        return uart
    # Except permission denied
    except PermissionError:
        print("Permission denied. Please close any other programs using the UART.")
        return None

# Write to UART
def write_uart(uart, data):
    print(f"Write: {data}")
    try:
        print(f"Wrote: {data}")
        uart.write(data)
    except serial.SerialTimeoutException:
        print("Write timeout.")

space = " " 
space4 = "    "
# Update the guess count on the seven segment display
def update_seven_segment(uart, guess):
    # First bit is command, second bit is guess number
    command = "A"
    # Convert to hex
    data = bytes(f"{command}{guess}{space}", 'utf-8').hex()
    # Write to UART
    #write_uart(uart, data)
    message = "" + space + command + str(guess) + space
    write_uart(uart, message.encode('utf-8'))
 

# Update LCD with underscores/messages
def update_lcd(uart, text, row):
    if row == 1:
        LCD_WRITE = "B"
    elif row == 2:
        LCD_WRITE = "C"
    else:
        print("Huh?")

    text_size = len(text)

    if text_size < 16:
        for i in range(16 - text_size):
            text += " "
    
    message = "" + space + LCD_WRITE + text[:16] + space4
    write_uart(uart, message.encode('utf-8'))
    
# Read from UART
def read_uart(uart):
    data = uart.read().decode('utf-8')
    if (data != ""):
        print(f"Read: {data}")
    return data

# Close UART
def close_uart(uart):
    print("Closing UART.")
    uart.close()