//
// Created by root on 2019/8/4.
//

#ifndef TLPL_EXAMPLE_QT_H
#define TLPL_EXAMPLE_QT_H

#include <hiredis/adapters/qt.h>

#include <QDialog>


class ExampleQt : public QObject {

Q_OBJECT

public:
    ExampleQt(const char * value, QObject * parent = 0)
            : QObject(parent), m_value(value) {}

//signals:
//   void finished();

public slots:
    void run();

//private:
  //  void finish() { emit finished(); }

private:
    const char * m_value;
    redisAsyncContext * m_ctx;
    RedisQtAdapter m_adapter;

    friend
    void getCallback(redisAsyncContext *, void *, void *);
};

#endif //TLPL_EXAMPLE_QT_H
