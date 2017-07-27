#include "propertybinding.h"
int question=qrand() % ((44 + 1) - 0);
int tmp=0;
int correctanswers;
QVector<int> Pq;
propertybinding::propertybinding(QObject *parent) : QObject(parent) { }

propertybinding::~propertybinding() { }


QString propertybinding::Firstquestionloader(){
    Pq.clear();
    Pq.push_back(question);
QString s= Questions.at(question*5);
   return s;
}

QString propertybinding::Questionloader() const {
    question=qrand() % ((44 + 1) - 0);

    while(Pq.contains(question))
    {
    question=qrand() % ((44 + 1) - 0);
    }

   Pq.push_back(question);
   QString s= Questions.at(question*5);
    return s;
}

QString propertybinding::Aloader(){
QString a=Questions.at((question*5)+1);
  return a;
}

QString propertybinding::Bloader(){
QString b=Questions.at((question*5)+2);
  return b;
}

QString propertybinding::Cloader(){
QString c=Questions.at((question*5)+3);
  return c;
}
QString propertybinding::Dloader(){
QString d=Questions.at((question*5)+4);
  return d;
}

int propertybinding::Answearloader(){
   int answear = Answears.at(question);
    return answear;
}

QString propertybinding::Firstloader(){
    Pq.clear();
    question=qrand() % ((44 + 1) - 0);
    Pq.push_back(question);
QString q=Questions.at((question*5)+4);
    return q;
}

void propertybinding:: ValuefromQML(int a){
 correctanswers=a;
}

QString propertybinding::ResumeLoader(){
    QString r;
    if( correctanswers==0)
      {
    r="NIESTETY ZBOBYŁEŚ/AŚ "+ QString::number(correctanswers)+"/7 PUNKTÓW";
     }

   else if( correctanswers<4)
   {
   r="ZBOBYŁEŚ/AŚ TYLKO " + QString::number(correctanswers)+"/7 PUNKTÓW";
    }

   else if( correctanswers<6)
   {
   r="ZBOBYŁEŚ/AŚ " + QString::number(correctanswers)+"/7 PUNKTÓW";
   }
   else{
    r="GRATULACJE! ZDOBYŁEŚ/AŚ "+ QString::number(correctanswers)+"/7 PUNKTÓW";
    }
    return r;
}

