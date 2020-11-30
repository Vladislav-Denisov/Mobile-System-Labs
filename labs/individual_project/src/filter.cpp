#include "filter.h"

QString Filter::getUrl()
{
    return url;
}

bool Filter::setUrl(QString _url) {
    bool flag = false;
    flag = QUrl(_url).isValid();
    if (flag) {
        url = _url;
        emit onUrlChanged();
    } else {
        qDebug() << "Invalid URL: " << _url;
    }
    return flag;
}

void Filter::loadImage() {
    QNetworkAccessManager* networkManager = new QNetworkAccessManager(this);

    connect(networkManager,
            SIGNAL(finished(QNetworkReply*)),
            this,
            SLOT(replyFinish(QNetworkReply*)));

    networkManager->get(QNetworkRequest(QUrl(url)));
}

Q_INVOKABLE QString Filter::grayfilter() {
    if (!image.isNull()) {
        qDebug() << "Width and Height: " << image.width() << " " << image.height();
        qDebug() << "Processing...";
        for(int i = 0; i < image.height(); ++i) {
            for(int j = 0; j < image.width(); ++j){
                QColor newColor(image.pixelColor(j, i));
                // The calculation of the color in grayscale.
                int grayColorOfPixel = static_cast<int>(0.2952 * newColor.red() + 0.5547 * newColor.green() + 0.148 * newColor.blue());
                // Setting the color for each channel.
                newColor.setRed(grayColorOfPixel);
                newColor.setGreen(grayColorOfPixel);
                newColor.setBlue(grayColorOfPixel);
                // Converting an image pixel to grayscale
                image.setPixelColor(j, i, newColor);
            }
        }
        qDebug() <<"Complete";
    } else {
        qDebug() <<"The image is not defined!";
        QString img;
        return img;
    }

    return reciveImage();
}

QString Filter::reciveImage() {
    QByteArray bArray;
    QBuffer buffer(&bArray);
    buffer.open(QIODevice::WriteOnly);
    image.save(&buffer, "JPEG");

    QString newStr("data:image/jpg;base64,");
    newStr.append(QString::fromLatin1(bArray.toBase64().data()));

    return newStr;
}

// SLOT
void Filter::replyFinish(QNetworkReply *reply) {
    if (reply->error() == QNetworkReply::NoError)
    {
        QByteArray data = reply->readAll();
        image = QImage::fromData(data);
        qDebug() << "Image from data isNull: " << image.isNull();;
    } else {
        qDebug() << "Error QNetworkReply";
    }
}
