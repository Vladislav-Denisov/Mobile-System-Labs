#ifndef FILTER_H
#define FILTER_H

#include <QObject>
#include <QDebug>
#include <QImage>
#include <QString>
#include <QColor>
#include <QRgb>
//#include <QImageReader>
#include <QByteArray>
#include <QBuffer>
#include <QNetworkAccessManager>
#include <QNetworkRequest>
#include <QNetworkReply>


class Filter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString url READ getUrl WRITE setUrl NOTIFY onUrlChanged)
private:
    QImage image;
    QString url = "null";
protected:
    QString reciveImage();
public:
    Q_INVOKABLE Filter() : QObject() {}
    Q_INVOKABLE QString getUrl();
    Q_INVOKABLE bool setUrl(QString _url);
    Q_INVOKABLE void loadImage();
    Q_INVOKABLE QString grayfilter();
signals:
    void onUrlChanged();
private slots:
    void replyFinish(QNetworkReply *reply);
};


#endif // FILTER_H
