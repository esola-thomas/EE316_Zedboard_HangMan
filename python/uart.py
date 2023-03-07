# Import libraries
import serial

# Constants for UART
BAUD_RATE = 9600
PORT = '/dev/ttyUSB0'

# Create UART object
def create_uart():
    input("Connect?")
    return True
    return serial.Serial(PORT, BAUD_RATE)

# Write to UART
def write_uart(uart, data):
    print(data)
    #uart.write(bytes(data, 'utf-8'))

# Read from UART
def read_uart(uart):
    test = input("Read from UART: ")
    return test
    return uart.readline().decode('utf-8')

# Close UART
def close_uart(uart):
    uart.close()