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

# Название нашего приложения
TARGET = 02b_lab

# CONFIG - это спец переменная, которую qmake исп-eт при создании Makefile.
CONFIG += sailfishapp

# Список файлов исходного кода, которые будут использоваться при построении проекта.
SOURCES += src/02b_lab.cpp

# Данная переменная содержит список файлов, которые должны быть включены в конечный файл. Данная особенность поддерживается только в UnixMake.
DISTFILES += qml/02b_lab.qml \
    qml/cover/CoverPage.qml \
    qml/pages/FirstPage.qml \
    rpm/02b_lab.changes.in \
    rpm/02b_lab.changes.run.in \
    rpm/02b_lab.spec \
    rpm/02b_lab.yaml \
    translations/*.ts \
    02b_lab.desktop


SAILFISHAPP_ICONS = 86x86 108x108 128x128 172x172

# to disable building translations every time, comment out the
# following CONFIG line
# Задает параметры конфигурации проекта и компилятора. Эти значения внутренне распознаются qmake и имеют особое значение.
CONFIG += sailfishapp_i18n

# German translation is enabled as an example. If you aren't
# planning to localize your app, remember to comment out the
# following TRANSLATIONS line. And also do not forget to
# modify the localized app name in the the .desktop file.
TRANSLATIONS += translations/02b_lab-de.ts
