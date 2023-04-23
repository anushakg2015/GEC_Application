#ifndef USERLOGIN_H
#define USERLOGIN_H
#include<QtSql/QSqlDatabase>
#include<qsql.h>
#include <QSqlQuery>
#include <QObject>
#include <QList>

class UserLogin : public QObject
{
    Q_OBJECT
public:
    explicit UserLogin(QObject *parent = nullptr);
    ~UserLogin();

signals:
    //void sucessSignal(QString msg);
    //void falsesignal(QString msg);
public slots:

    void callME(QString,QString );
    void receiveMe(QString,QString,QString);
    void createdb();
    void addvalues(QString ,int);
    void selectvalue(QString ,int);
    int retrive(QString,QString);
    QList<QString> images(QString);
    QList<QString> images2();
    void video(QString);
    void video();
    void adminimages(QString);
//    QList<QString>userimage(QString);
    QList<QString>userimage();
   // QList<QString>gallaryAdminimages();
   // void staffinfo();
    void admitiondetail(QString, int,QString,QString,int,int,int,QString);
    QList<QString> studentname();
    //void addimages(QString);
    // void sucess(QString,QString);
     QList<QString>year();
     QList<QString>branch();
      QList<QString>fee();
       QList<QString>date();
       QList<QString>total();
       QList<QString>stdid();
        QList<QString>allyears();
         QList<QString>allbranches();
          QList<QString>alldates();
           QList<QString>allfees();
            QList<QString>allmaintain();
             QList<QString>alltotal();
              QList<QString>allstdid();
               QList<QString>refstdid();

private:
    QList<QString> list;
    QString   username;
    QString   userpassword;
    QString   newusername;
    QString   newuserpassword;
    QString image;
    QString videos;
    //QString imagee;
    // QString image;
    QString   conformuserpassword;
    QString ADMNIMAGES;
    QString STUDENT;
    int YERA;
    QString BRANCH;
    QString DATE;
    int FEE;
    int MAINTENANCE;
    int TOTAL;
    QString AMOUNTIN;
     QSqlDatabase db;
     QSqlQuery qry;


    //int validity;
    // QString user_name;
    // QString user_password;


};

#endif // USERLOGIN_H
