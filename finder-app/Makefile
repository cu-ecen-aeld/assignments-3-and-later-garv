CC = gcc

CFLAGS = -Wall -Wextra -g

TARGET = writer

SRCS = writer.c

OBJS = $(SRCS:.c=.o)

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CROSS_COMPILE)$(CC) $(CFLAGS) -o $(TARGET) $(OBJS)

%.o: %.c
	$(CROSS_COMPILE)$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(TARGET) $(OBJS)

.PHONY: all clean