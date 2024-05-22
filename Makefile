CC = g++
CFLAGS = -g -Wall -Werror -std=c++11

all: first

first.o: scenarios/first.cpp
	$(CC) $(CFLAGS) -c scenarios/first.cpp

first: first.o host.o link_installer.o message_service_installer.o echo_service_installer.o message_service.o manual_router.o
	$(CC) $(CFLAGS) -o first

host.o: host.cpp host.h
	$(CC) $(CFLAGS) -c host.cpp

link_installer.o: link_installer.cpp link_installer.h
	$(CC) $(CFLAGS) -c link_installer.cpp

message_service_installer.o: message_service_installer.cpp message_service_installer.h
	$(CC) $(CFLAGS) -c message_service_installer.cpp

echo_service_installer.o: echo_service_installer.cpp echo_service_installer.h
	$(CC) $(CFLAGS) -c echo_service_installer.cpp

message_service.o: message_service.cpp message_service.h
	$(CC) $(CFLAGS) -c message_service.cpp

manual_router.o: manual_router.cpp manual_router.h
	$(CC) $(CFLAGS) -c manual_router.cpp

clean:
	rm -f *.o first