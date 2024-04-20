QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets

win32:LIBS +=-lws2_32

CONFIG += c++17

# You can make your code fail to compile if it uses deprecated APIs.
# In order to do so, uncomment the following line.
#DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

SOURCES += \
    creearecont.cpp \
    main.cpp \
    login.cpp \
    setpassword.cpp \
    tcpclient.cpp \
    utils.cpp \
    welcome.cpp

HEADERS += \
    creearecont.h \
    login.h \
    setpassword.h \
    tcpclient.h \
    utils.h \
    welcome.h

FORMS += \
    creearecont.ui \
    login.ui \
    setpassword.ui \
    welcome.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target
