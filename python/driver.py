import serial
from uart import *

uart = create_uart()

while True:
    data = read_uart(uart)
    print(data)