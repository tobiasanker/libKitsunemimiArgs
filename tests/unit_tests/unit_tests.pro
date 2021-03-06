include(../../defaults.pri)

QT -= qt core gui

CONFIG   -= app_bundle
CONFIG += c++14 console

LIBS += -L../../src -lKitsunemimiArgs
INCLUDEPATH += $$PWD

LIBS += -L../../../libKitsunemimiCommon/src -lKitsunemimiCommon
LIBS += -L../../../libKitsunemimiCommon/src/debug -lKitsunemimiCommon
LIBS += -L../../../libKitsunemimiCommon/src/release -lKitsunemimiCommon
INCLUDEPATH += ../../../libKitsunemimiCommon/include

LIBS += -L../../../libKitsunemimiPersistence/src -lKitsunemimiPersistence
LIBS += -L../../../libKitsunemimiPersistence/src/debug -lKitsunemimiPersistence
LIBS += -L../../../libKitsunemimiPersistence/src/release -lKitsunemimiPersistence
INCLUDEPATH += ../../../libKitsunemimiPersistence/include

LIBS +=  -lboost_filesystem -lboost_system

SOURCES += \
    main.cpp \
    arg_parser_test.cpp \
    sub_command_test.cpp \
    sub_command_entry_test.cpp

HEADERS += \
    arg_parser_test.h \
    sub_command_test.h \
    sub_command_entry_test.h
