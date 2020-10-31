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
TARGET = 05b_lab

CONFIG += sailfishapp

SOURCES += src/05b_lab.cpp

DISTFILES += qml/05b_lab.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    qml/pages/task01_1.qml \
    qml/pages/task01_2.qml \
    qml/pages/task01_3.qml \
    qml/pages/task02_1.qml \
    qml/pages/task02_2.qml \
    qml/pages/task03-04-05.qml \
    qml/pages/task03_dialog.qml \
    qml/pages/task04_dialog.qml \
    qml/pages/task05_dialog.qml \
    qml/pages/task06.qml \
    qml/pages/task07.qml \
    qml/pages/task08.qml \
    qml/pages/task09.qml \
    qml/pages/task10.qml \
    rpm/05b_lab.changes.in \
    rpm/05b_lab.changes.run.in \
    rpm/05b_lab.spec \
    rpm/05b_lab.yaml \
    translations/*.ts \
    05b_lab.desktop

SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/05b_lab-de.ts
