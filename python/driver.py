from uart import *
import threading
from time import sleep

uart = create_uart()

def read(uart):
    while True:
        return read_uart(uart)

data = "Hello World"
t1 = threading.Thread(target=read, args=(uart,))
t1.start()

t1.join()

while True:
    try:
        print(read(uart))
        write_uart(uart, data)
    except KeyboardInterrupt:
        break

uart.close()