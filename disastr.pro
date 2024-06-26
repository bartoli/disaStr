######################################################################
# Automatically generated by qmake (3.1) Fri Nov 3 11:56:13 2023
######################################################################

QT += websockets gui widgets

TEMPLATE = app
TARGET = disaStr
INCLUDEPATH += .

#INCLUDEPATH += /data/QNostr/include
#QMAKE_LFLAGS += -L /data/QNostr/lib

#Openssl config
MY_OPENSSL_DIR = $$(OPENSSL_DIR)
!isEmpty(MY_OPENSSL_DIR) {
  INCLUDEPATH += $${MY_OPENSSL_DIR}/include
  LIBS += -L$${MY_OPENSSL_DIR}/lib
}
win32-msvc* {
    LIBS += -llibssl -llibcrypto
} else {
    LIBS += -lssl -lcrypto
}

SCHNORR_DIR = $$_PRO_FILE_PWD_/3rdparty/secp256k1
INCLUDEPATH += $$SCHNORR_DIR/include/ bech32/ bitcoin-core/

DEFINES += \
        SECP256K1_ENABLED \
        SECP256K1_BUILD \
        ENABLE_MODULE_ECDH \
        ENABLE_MODULE_RECOVERY \
        ENABLE_MODULE_EXTRAKEYS \
        ENABLE_MODULE_SCHNORRSIG \
        ENABLE_MODULE_ELLSWIFT

SOURCES += \
        $$SCHNORR_DIR/src/secp256k1.c \
        $$SCHNORR_DIR/src/precomputed_ecmult_gen.c \
        $$SCHNORR_DIR/src/precomputed_ecmult.c

# You can make your code fail to compile if you use deprecated APIs.
# In order to do so, uncomment the following line.
# Please consult the documentation of the deprecated API in order to know
# how to port your code away from it.
# You can also select to disable deprecated APIs only up to a certain version of Qt.
DEFINES += QT_DISABLE_DEPRECATED_BEFORE=0x060000    # disables all the APIs deprecated before Qt 6.0.0

# Input
SOURCES += $$files(*.cpp)
SOURCES += $$files(app/*.cpp)
SOURCES += $$files(crypto/*.cpp)
SOURCES += $$files(gui/*.cpp)
SOURCES += $$files(nostr/*.cpp)

#Header to scan for moc etc..
HEADERS += $$files(*.hpp, true)

