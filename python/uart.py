# Import libraries
import serial

# Constants for UART
BAUD_RATE = 9600
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
        uart.write(bytes(data, 'utf-8'))
    except serial.SerialTimeoutException:
        print("Write timeout.")

# Read from UART
def read_uart(uart):
    data = uart.readline().decode('utf-8')
    print(f"Read: {data}")
    return data

# Close UART
def close_uart(uart):
    print("Closing UART.")
    uart.close()