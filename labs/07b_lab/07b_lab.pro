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
TARGET = 07b_lab

CONFIG += sailfishapp

SOURCES += src/07b_lab.cpp

DISTFILES += qml/07b_lab.qml \
    qml/cover/CoverPage.qml \
    qml/pages/CustomButton.qml \
    qml/pages/FirstPage.qml \
    qml/pages/TrafficLight.qml \
    qml/pages/task01.qml \
    qml/pages/task02.qml \
    qml/pages/task03.qml \
    qml/pages/task04.qml \
    qml/pages/task05.qml \
    qml/pages/task06.qml \
    qml/pages/task07-demo.qml \
    qml/pages/task07.qml \
    rpm/07b_lab.changes.in \
    rpm/07b_lab.changes.run.in \
    rpm/07b_lab.spec \
    rpm/07b_lab.yaml \
    translations/*.ts \
    07b_lab.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/07b_lab-de.ts
