#ifndef TCPCLIENT_H
#define TCPCLIENT_H

#pragma once
#define WIN32_LEAN_AND_MEAN
#include <windows.h>
#include <winsock2.h>
#include <ws2tcpip.h>
#include <stdlib.h>
#include <stdio.h>

class TCPClient
{
private:
    short port;
    struct addrinfo* ptr = NULL;
    struct addrinfo hints;

    SOCKET sock;
public:
    TCPClient();
    void trimiteLogIn(string username, string parola);
    void connect(const char* ip_dest, short port_dest);
    int send(const char* send_buf, const int size) const;
    int recv(char* recv_buf, const int size) const;
    void closeConnection();
    bool receive();
};

#endif // TCPCLIENT_H
