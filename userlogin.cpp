#include "userlogin.h"
#include<QDebug>
#include<qsql.h>
#include <QSqlQuery>
//void callMe(QString(name));

UserLogin::UserLogin(QObject *parent) : QObject(parent)
{
    // validity=0;
    db = QSqlDatabase::addDatabase("QSQLITE");
    db.setDatabaseName("C:/Users/Admin/Desktop/NewPage2/datafile.db");

   bool ok = db.open();
     if(ok == true){
         qDebug()<<"The database connection is successfully done"<<endl;
     }
     else{
         qDebug()<<"The databse is not connectd"<<endl;
     }

}

UserLogin::~UserLogin()
{
    db.close();
}
void UserLogin::callME(QString uname,QString passw)
{
    qDebug() <<"Inside the callMe function"<<Qt::endl;
    qDebug()<<"Username = "<<uname<<endl;
    qDebug()<<"Password = "<<passw<<endl;



}
void UserLogin::receiveMe( QString newuname,QString newpass,QString conformuserpassword)
{
    qDebug()<<"new username = "<<newuname<<endl;
    if(newpass==conformuserpassword)
    {

        qDebug()<<" new Password = "<<newpass<<endl;
        qDebug()<<" conform Password = "<<conformuserpassword<<endl;
    }
    else{
        qDebug()<<"password is not matching";
    }
}

void UserLogin::createdb()
{

    qDebug()<<"Inside the createDb function"<<endl;
    bool ok;
    qDebug()<<"inside the database"<< Q_FUNC_INFO <<endl;
//    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
//    db.setDatabaseName("C:/Users/Admin/Desktop/NewPage2/datafile.db");

   // ok = db.open();
//    if(ok == true){
//        qDebug()<<"The database connection is successfully done"<<endl;
//    }
//    else{
//        qDebug()<<"The databse is not connectd"<<endl;
//    }
    QString query="CREATE TABLE users(user_name VARCHAR(20),user_password integer);";
    // "CREATE TABLE gallary(user_name VARACHAR(20),images VARCHAR(100));";
    // "CREATE TABLE gecgallary(user_name VARCHAR(100),IMAGES VARCHAR(100));";
    // QString query="CREATE TABLE IMAGES(user_name VARCHAR(20), image QString);";

    QSqlQuery qry;
    if(!qry.exec(query))
    {
        qDebug()<<"error in table";
    }
    //      addvalues("avinash",9901);
    //       addvalues("akash",7090);
    //       addvalues("akash n k",7099);

    db.close();
    qDebug()<<"end";
}
void UserLogin::addvalues(QString user_name,int user_password)
{
    bool ok;

    ok = db.open();
    if(ok == true){
        qDebug()<<"db opened"<<endl;
    }
    else{
        qDebug()<<"The db is not open"<<endl;
    }

    qDebug()<<"signupusername="<<user_name<<endl;
    qDebug()<<"signuppassword="<<user_password<<endl;
    // qDebug()<<"qt side images"<<image<<endl;

    qDebug()<<Q_FUNC_INFO<<endl;
    QSqlQuery query;
    bool sucess;

    query.prepare("INSERT INTO users(user_name,user_password) "
                  "VALUES (:uname, :upassw)");
    query.bindValue(":uname", user_name);
    query.bindValue(":upassw", user_password);
    // query.bindValue(":uimage",image);
    //query.bindValue(":image",image);
    //query.bindValue(":images",image)
    sucess=query.exec();
    if(sucess)qDebug()<<"sucessfull";
    else{
        qDebug()<<"failed";
    }
}
void UserLogin::selectvalue(QString username,int userpassword)
{
    qDebug()<<"login username="<<username<<endl;
    qDebug()<<"login password="<<userpassword<<endl;
    bool ok;
//    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
//    db.setDatabaseName("C:/Users/Admin/Desktop/NewPage2/datafile.db");

//    ok = db.open();
//    if(ok == true){
//        qDebug()<<"db opened"<<endl;
//    }
//    else{
//        qDebug()<<"The db is not open"<<endl;
//    }
    QSqlQuery query;
    bool sucess;

    query.prepare("SELECT * FROM users");
    sucess=query.exec();
    if(sucess)
    {
        qDebug()<<"sucessfull";

        //         while (query.next()) {
        //             qDebug()<<"Val is "<<query.value(0).toString()<<endl;
        //                    qDebug()<<query.value(1).toString()<<endl;

        //        }
        //     else{
        //         qDebug()<<"failed";
        //     }
    }
}
int UserLogin::retrive(QString username,QString userpassword)
{
    qDebug()<<"i am in retrive function";
    //   int count=0;
    bool ok;
    // qDebug()<<"retrive username="<<user_name<<endl;
    //qDebug()<<"retrive userpassword="<<user_password<<endl;
//    QSqlDatabase db = QSqlDatabase::addDatabase("QSQLITE");
//    db.setDatabaseName("C:/Users/Admin/Desktop/NewPage2/datafile.db");
/*
    ok = db.open();
    if(ok == true){
        qDebug()<<"db opened"<<endl;
    }
    else{
        qDebug()<<"The db is not open"<<endl;
    }*/       // qDebug()<<"db opened"<<endl;

    QSqlQuery query;
    bool sucess;
    query.prepare("SELECT * FROM users");
    // query.prepare("SELECT *FROM gallary");
    sucess=query.exec();
    if(sucess)
    {
        qDebug()<<"sucessfull";
        while (query.next()) {
            qDebug()<<"Val is "<<query.value(0).toString()<<endl;
            qDebug()<<query.value(1).toString()<<endl;

            if(query.value(0).toString() == username && query.value(1).toString()==userpassword )
            {
                qDebug()<<"login sucessfull";

                return 1;
            }
            else{
                qDebug()<<"Inside the else condition************"<<endl;
                continue;


            }
        }
    }  else{
        qDebug()<<"failed";
    }
    return 0;
}

QList<QString> UserLogin::images(QString image)
{

    qDebug()<<"qt side images"<<image<<endl;
//    if(image==NULL){
//        return list;
//    }
    QSqlQuery query;
    bool sucess;
    query.prepare("INSERT INTO gecgallary(images) "
                  "VALUES (:uimages)");

    query.bindValue(":uimages",image);
    qDebug()<<"insertion of images to gec"<<endl;
    qDebug()<<"query image"<<image<<endl;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"failed";
        qDebug()<<"inside the query"<<endl;
    }

}

QList<QString> UserLogin::images2()
{
    qDebug()<<"qt side gecgallary"<<image<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("SELECT *FROM gecgallary");
    query.exec();
    while (query.next()) {
        qDebug()<<"Val is "<<query.value(0).toString()<<endl;
        qDebug()<< "image is="<<query.value(1).toString()<<endl;
        list.append(query.value(1).toString());
    }
    return list;
}

void UserLogin::adminimages( QString ADMNIMAGES)
{
    qDebug()<<"qt side ADMINIMAGESimages"<<ADMNIMAGES<<endl;
    QSqlQuery query;
    bool sucess;
    query.prepare("INSERT INTO ADMINIMAGE(ADMNIMAGES) "
                  "VALUES (:uADMNIMAGES)");
    query.bindValue(":uADMNIMAGES",ADMNIMAGES);
    //query.bindValue(":uname",username);
    qDebug()<<"insertion of images to ADMINIMAGES"<<endl;
    qDebug()<<"query image"<<ADMNIMAGES<<endl;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"failed";
        qDebug()<<"inside the query"<<endl;
    }
}

QList<QString> UserLogin::userimage()
{
    qDebug()<<"qt side ADMINimages"<<ADMNIMAGES<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("SELECT *FROM ADMINIMAGE");
    query.exec();
    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(0).toString()<<endl;
        qDebug()<< "ADMNIMAGES updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(0).toString());
    }
    return list;
}

void UserLogin::admitiondetail(QString STUDENT,int YERA,QString BRANCH,QString DATE,int FEE,int MAINTENANCE,int TOTAL,QString AMOUNTIN)
{
    qDebug()<<"qt side ADMINIMAGESimages"<<STUDENT<<YERA<<endl;
    QSqlQuery query;
    bool sucess;
    query.prepare("INSERT INTO ADMITIONFORM2(STUDENT,YERA,BRANCH,DATE,FEE,MAINTENANCE,TOTAL,AMOUNTIN) "
                  "VALUES (:uSTUDENT,:uYERA,:uBRANCH,:uDATE,:uFEE,:uMAINTENANCE,:uTOTAL,:uAMOUNTIN)");
    query.bindValue(":uSTUDENT",STUDENT);
    query.bindValue(":uYERA",YERA);
     query.bindValue(":uBRANCH",BRANCH);
      query.bindValue(":uDATE",DATE);
       query.bindValue(":uFEE",FEE);
        query.bindValue(":uMAINTENANCE",MAINTENANCE);
         query.bindValue(":uTOTAL",TOTAL);
          query.bindValue(":uAMOUNTIN",AMOUNTIN);
    qDebug()<<"insertion of images to ADMINIMAGES"<<endl;
    qDebug()<<"query image"<<STUDENT<<YERA<<endl;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"failed";
        qDebug()<<"inside the query"<<endl;
    }
}

QList<QString> UserLogin::studentname()
{
    qDebug()<<"student name="<<STUDENT<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2 WHERE AMOUNTIN =(SELECT MAX(AMOUNTIN) FROM ADMITIONFORM2)");
    query.exec();
    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(0).toString()<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(0).toString());
//            list.append(query.value(1).toString());
//                list.append(query.value(2).toString());
//                    list.append(query.value(4).toString());
//                        list.append(query.value(5).toString());
//                            list.append(query.value(6).toString());
//                                list.append(query.value(7).toString());

       //  list.append(query.value(1).toString());
    }
    return list ;
}

QList<QString> UserLogin::year()
{
    qDebug()<<"student name="<<STUDENT<<YERA<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2 WHERE AMOUNTIN =(SELECT MAX(AMOUNTIN) FROM ADMITIONFORM2)");
    query.exec();
    qDebug()<<"YEAR="<<YERA<<endl;
    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(1).toString()<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(1).toString());
//            list.append(query.value(1).toString());
//                list.append(query.value(2).toString());
//                    list.append(query.value(4).toString());
//                        list.append(query.value(5).toString());
//                            list.append(query.value(6).toString());
//                                list.append(query.value(7).toString());

       //  list.append(query.value(1).toString());
    }
    return list ;
}

QList<QString> UserLogin::branch()
{
    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2 WHERE AMOUNTIN =(SELECT MAX(AMOUNTIN) FROM ADMITIONFORM2)");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(2).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(2).toString());

    }
    return list ;
}

QList<QString> UserLogin::fee()
{
    qDebug()<<"student FEE="<<FEE<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2 WHERE AMOUNTIN =(SELECT MAX(AMOUNTIN) FROM ADMITIONFORM2);");
    query.exec();
    qDebug()<<"FEE="<<FEE<<endl;
    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(4).toString()<<endl;
         qDebug()<<"Val is "<<query.value(7).toString()<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(4).toString());

    }
    return list ;

}

QList<QString> UserLogin::date()
{

    qDebug()<<"student DATE="<<DATE<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2 WHERE AMOUNTIN =(SELECT MAX(AMOUNTIN) FROM ADMITIONFORM2);");
    query.exec();
    qDebug()<<"DATE="<<DATE<<endl;
    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(3).toString()<<endl;
         qDebug()<<"Val is "<<query.value(7).toString()<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(3).toString());

    }
    return list ;
}

QList<QString> UserLogin::total()
{
    qDebug()<<"student totral="<<TOTAL<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2 WHERE AMOUNTIN =(SELECT MAX(AMOUNTIN) FROM ADMITIONFORM2);");
    query.exec();
    qDebug()<<"DATE="<<DATE<<endl;
    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(6).toString()<<endl;
        // qDebug()<<"Val is "<<query.value(7).toString()<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(6).toString());

    }
    return list ;
}

QList<QString> UserLogin::stdid()
{

    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(0).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(0).toString());
      //list.append(query.value(1).toString());
//        list.append(query.value(2).toString());
//        list.append(query.value(3).toString());
//        list.append(query.value(4).toString());
        //// qDebug()<<"valuesss="<<;
    }
    return list ;

}

QList<QString> UserLogin::allyears()
{
    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(0).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(1).toString());
      //list.append(query.value(1).toString());
//        list.append(query.value(2).toString());
//        list.append(query.value(3).toString());
//        list.append(query.value(4).toString());
        //// qDebug()<<"valuesss="<<;
    }
    return list ;
}

QList<QString> UserLogin::allbranches()
{
    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(2).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(2).toString());
      //list.append(query.value(1).toString());
//        list.append(query.value(2).toString());
//        list.append(query.value(3).toString());
//        list.append(query.value(4).toString());
        //// qDebug()<<"valuesss="<<;
    }
    return list ;
}

QList<QString> UserLogin::alldates()
{
    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(3).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(3).toString());
      //list.append(query.value(1).toString());
//        list.append(query.value(2).toString());
//        list.append(query.value(3).toString());
//        list.append(query.value(4).toString());
        //// qDebug()<<"valuesss="<<;
    }
    return list ;
}

QList<QString> UserLogin::allfees()
{
    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(4).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(4).toString());
      //list.append(query.value(1).toString());
//        list.append(query.value(2).toString());
//        list.append(query.value(3).toString());
//        list.append(query.value(4).toString());
        //// qDebug()<<"valuesss="<<;
    }
    return list ;
}

QList<QString> UserLogin::allmaintain()
{
    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(5).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(5).toString());
      //list.append(query.value(1).toString());
//        list.append(query.value(2).toString());
//        list.append(query.value(3).toString());
//        list.append(query.value(4).toString());
        //// qDebug()<<"valuesss="<<;
    }
    return list ;
}

QList<QString> UserLogin::alltotal()
{
    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(6).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(6).toString());
      //list.append(query.value(1).toString());
//        list.append(query.value(2).toString());
//        list.append(query.value(3).toString());
//        list.append(query.value(4).toString());
        //// qDebug()<<"valuesss="<<;
    }
    return list ;
}

QList<QString> UserLogin::allstdid()
{
    qDebug()<<"student branch="<<BRANCH<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2");
    query.exec();

    list.clear();
    while (query.next()) {
         qDebug()<<"Val is "<<query.value(7).toString()<<endl;
         qDebug()<<"BRANCH="<<BRANCH<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(7).toString());
      //list.append(query.value(1).toString());
//        list.append(query.value(2).toString());
//        list.append(query.value(3).toString());
//        list.append(query.value(4).toString());
        //// qDebug()<<"valuesss="<<;
    }
    return list ;
}

QList<QString> UserLogin::refstdid()
{
    qDebug()<<"student FEE="<<FEE<<endl;
     // qDebug()<<"Val is "<<YERA<<endl;
       // qDebug()<<"student YEAR="<<YEAR<<endl;

    QSqlQuery query;
    bool sucess;
    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"USER IMAGES failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("select * from ADMITIONFORM2 WHERE AMOUNTIN =(SELECT MAX(AMOUNTIN) FROM ADMITIONFORM2);");
    query.exec();
    qDebug()<<"FEE="<<FEE<<endl;
    list.clear();
    while (query.next()) {
        // qDebug()<<"Val is "<<query.value(4).toString()<<endl;
         qDebug()<<"Val is "<<query.value(7).toString()<<endl;
           //qDebug()<<"Val is "<<query.value(1).toString()<<endl;
        //qDebug()<< "ADMITIONFORM updates  is="<<query.value(0).toString()<<endl;
        list.append(query.value(7).toString());

    }
    return list ;
}

























void UserLogin::video(QString videos)
{
    qDebug()<<"qt side images"<<videos<<endl;
    QSqlQuery query;
    bool sucess;
    query.prepare("INSERT INTO video(videos) "
                  "VALUES (:uvideos)");

    query.bindValue(":uvideos",videos);
    //query.bindValue(":uname",username);
    qDebug()<<"insertion of videos to video"<<endl;
    qDebug()<<"query videos"<<videos<<endl;

    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("SELECT *FROM video");
    query.exec();
    while (query.next()) {
        qDebug()<<"Val is "<<query.value(0).toString()<<endl;
        qDebug()<< "video is="<<query.value(1).toString()<<endl;
        list.append(query.value(1).toString());
    }
}

void UserLogin::video()
{
    qDebug()<<"qt side images"<<videos<<endl;
    // qDebug()<<"qt side username="<<user_name;
    QSqlQuery query;
    bool sucess;

    query.prepare("INSERT INTO video(videos) "
                  "VALUES (:uvideos)");

    query.bindValue(":uvideos",videos);
    //query.bindValue(":uname",username);
    qDebug()<<"insertion of videos to video"<<endl;
    qDebug()<<"query videos"<<videos<<endl;

    sucess=query.exec();
    if(sucess)
        qDebug()<<"sucessfull";
    else{
        qDebug()<<"failed";
        qDebug()<<"inside the query"<<endl;
    }
    query.prepare("SELECT *FROM video");
    query.exec();
    while (query.next()) {
        qDebug()<<"Val is "<<query.value(0).toString()<<endl;
        qDebug()<< "video is="<<query.value(1).toString()<<endl;
        list.append(query.value(1).toString());
    }

}
