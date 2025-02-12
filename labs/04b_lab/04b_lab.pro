# NOTICE:
#
# Application name defined in TARGET has a corresponding QML filename.
# If name defined in TARGET is changed, the following needs to be done
# to match new name:
#   - corresponding QML filename must be changed
#   - desktop icon filename must be changed
#   - desktop filename must be changed
#   - icon definition filename in desktop file must be changed
#   - translation filenames have to be changed

# The name of your application
TARGET = 04b_lab

CONFIG += sailfishapp

SOURCES += src/04b_lab.cpp

DISTFILES += qml/04b_lab.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/04b_lab.changes.in \
    rpm/04b_lab.changes.run.in \
    rpm/04b_lab.spec \
    rpm/04b_lab.yaml \
    translations/*.ts \
    04b_lab.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n
