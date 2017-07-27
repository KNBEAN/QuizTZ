import QtQuick 2.7
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.0
//import QtQml 2.2
import PropertyBinding 1.0
import QtQuick.Controls.Styles 1.4

//TODO:
//1.) Skrocenie odpowiedzi do pytania o srodek ciezkosci
//pytanie o miescnie szkieletowe
//cztery podstawowe elementy poprawnosci chodu

//6.) Odchudzenie projektu

ApplicationWindow {
    id: main
    //width:parent.width
   // width: 320//480
    //height: 480//800
    visible: true
     property int goodanswers:0
     property int counter:0
     property int buttonstate: 0
    PropertyBinding {
        id: propertyBinding
    }
    StackView {
        id: stack
        anchors.fill: parent
    }

    Component {
        id: form1
    Rectangle {
            id: r1
            //width: 320//480  //270
            width:parent.width
            height:parent.height
            //height: 480//800 //480
            //Column {

    Image {
        id: logoTzf1
        //width: 360//180
        width:parent.width
        height: parent.height/2.4
        anchors.top:parent.top
        anchors.topMargin: parent.height/20
        fillMode: Image.PreserveAspectFit
        source: "images/Tzlogo.png"
        }

    Button {
        id: startButton
        text: "ROZPOCZNIJ QUIZ"
        font.pointSize: 24
        Layout.fillWidth: true
        //width: 360
        width:parent.width
        height:parent.height/6
        //height: 100
        anchors.top: logoTzf1.bottom
        anchors.topMargin:parent.height/20
        //anchors.topMargin: 25
        onClicked:stack.push(form2)
    }

    Image {
        id: logoKn
        width:parent.width
        height:parent.height/4
        anchors.top:startButton.bottom
        anchors.topMargin: parent.height/20
        fillMode: Image.PreserveAspectFit
        source: "images/Logo Bean tlo.png"
        }
       //     }
    }

    }

    Component {
        id: form2
        Rectangle {
            id:r2
            width:parent.width
            height:parent.height

 //           MouseArea {// ograniczenie wielkosci do labela z textem
  //              width: r2.width
   //             height: r2.height
              property int selected: 0
              property int correct


            //color: "lightblue"
            //Column {

                    Label {
                    width:parent.width
                    height:parent.height/3.98
                    id: questionlabel
                    font.pointSize: 14
                    anchors.top:parent.top
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    //text: propertyBinding.Firstquestionloader
                    text:propertyBinding.Firstquestionloader//Questionloader
                    //text:propertyBinding.Firstquestionloader
                    wrapMode: Text.Wrap
                 //   Layout.fillWidth: true
                  //  Layout.fillHeight: true
                }



                    RadioButton {
                        id:a
                        //width: 40
                        //height:40
                        width:parent.width/9
                        height:parent.height/15.1
                        //font.pointSize: 12
                        //text: "A"
                        //text:propertyBinding.Aloader
                        anchors.top:questionlabel.bottom
                        //layer.wrapMode : Text.Wrap

                        //text:propertyBinding.Firstloader
                        /*onClicked:{
                            selected = 1
                        }*/
                    }
                    RadioButton {
                        id:b
                         //width: 40
                         //height:40
                        width:parent.width/9
                        height:parent.height/15.1

                        // font.pointSize: 12
                        //text: "B"
                        anchors.top:a.bottom
                        //text:propertyBinding.Bloader
                        //layer.wrapMode : Text.Wrap
                       /*onClicked:{
                            selected = 2
                        }*/
                    }
                    RadioButton {
                        id:c
                        width:parent.width/9
                        height:parent.height/15.1
                       //  font.pointSize: 12
                        anchors.top:b.bottom
                        //text:propertyBinding.Cloader
                        /*onClicked:{
                            selected = 3
                        }*/
                    }
                    RadioButton {
                        id:d
                        // font.pointSize: 12
                        width:parent.width/9
                        height:parent.height/15.25
                         // height: 50
                         anchors.top:c.bottom
                        //text:propertyBinding.Firstloader
                        /*onClicked:{
                            selected = 4
                        }*/
                    }

                    Text{
                        id:questiona
                        width:parent.width/(9/8)-1
                        height:parent.height/15.1
                        anchors.top:questionlabel.bottom
                        anchors.left:a.right
                        text:propertyBinding.Aloader
                        //text:propertyBinding.Firstquestionloader
                        font.pointSize: 12
                        wrapMode: Text.Wrap
                        verticalAlignment: Text.AlignVCenter

                        MouseArea {
                            anchors.fill: parent
                            onClicked:{
                            a.checked=true
                        }
                    }
                    }


                    Text{
                        id:questionb
                        width:parent.width/(9/8)-1
                        height:parent.height/15.1
                        anchors.top:questiona.bottom
                        anchors.left:b.right
                        text:propertyBinding.Bloader
                        //text:propertyBinding.Firstquestionloader
                        font.pointSize: 12
                        wrapMode: Text.Wrap
                        verticalAlignment: Text.AlignVCenter
                        MouseArea {
                            anchors.fill: parent
                            onClicked:b.checked=true
                        }
                    }
                    Text{
                        id:questionc
                        width:parent.width/(9/8)-1
                        height:parent.height/15.1
                        anchors.top:questionb.bottom
                        anchors.left:c.right
                        text:propertyBinding.Cloader
                        //text:propertyBinding.Firstquestionloader
                        font.pointSize: 12
                        wrapMode: Text.Wrap
                        verticalAlignment: Text.AlignVCenter
                        MouseArea {
                            anchors.fill: parent
                            onClicked:c.checked=true
                        }
                    }
                    Text{
                        id:questiond
                        width:parent.width/(9/8)-1
                        height:parent.height/15.25
                        anchors.top:questionc.bottom
                        anchors.left:d.right
                        text:propertyBinding.Firstloader
                        font.pointSize: 12
                        wrapMode: Text.Wrap
                        verticalAlignment: Text.AlignVCenter
                        MouseArea {
                            anchors.fill: parent
                            onClicked:d.checked=true
                        }
                    }
                    //onClicked: d.checked=true   //do poprawy




                    Text {
                        id: text1
                        wrapMode: Text.Wrap
                        width: parent.width
                        height:  parent.height/12
                        font.pointSize: 20
                        anchors.top:d.bottom
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                      //  text: 0 + "/7 correct: " +
                        //text: goodanswers + "/7"
                        PropertyAnimation {id: animateColor; target: text1; properties: "color"; to: "white"; duration: 2000}
                    }

                    Button {
                    id: test
                     text: "ODPOWIEDZ"
                    width: parent.width
                    height: parent.height/12
                    anchors.top:text1.bottom
                    onClicked:{
                     if(buttonstate==0)
                     {
                    if(a.checked==true)
                     {selected=1}
                    else if(b.checked==true)
                    {selected=2}
                    else if(c.checked==true)
                    {selected=3}
                    else if(d.checked==true)
                    {selected=4}

                    if(selected==0)
                    {
                    animateColor.stop()
                    text1.text= "ZAZNACZ ODPOWIEDŹ!"
                    text1.color="000000"
                    }
                    else{

                   if (counter < 6) {

                   counter = counter + 1
                   correct=propertyBinding.Answearloader

                   if(selected==correct)
                   {
                       a.checked=false
                       b.checked=false
                       c.checked=false
                       d.checked=false
                   text1.text= "POPRAWNA ODPOWIEDŹ!"
                   text1.color= "#00AA00"
                   goodanswers=goodanswers+1
                   questionlabel.text=propertyBinding.Questionloader
                   questiona.text=propertyBinding.Aloader
                   questionb.text=propertyBinding.Bloader
                   questionc.text=propertyBinding.Cloader
                   questiond.text=propertyBinding.Dloader
                     selected = 0
                   animateColor.start()
                   }
                   else
                   {
                       a.enabled=false
                       b.enabled=false
                       c.enabled=false
                       d.enabled=false
                       animateColor.stop()
                       if(correct==1)
                       {text1.text ="POPRAWNA ODPOWIEDŹ TO A.)"}
                       else if(correct==2)
                       {text1.text ="POPRAWNA ODPOWIEDŹ TO B.)"}
                       else if(correct==3)
                       {text1.text ="POPRAWNA ODPOWIEDŹ TO C.)"}
                       else if(correct==4)
                       {text1.text ="POPRAWNA ODPOWIEDŹ TO D.)"}
                   text1.color= "#FF0000"
                       test.text= "NASTĘPNE PYTANIE"
                       buttonstate=1
                   }


                    }

                    else{
                        animateColor.stop()
                       correct=propertyBinding.Answearloader
                       if(selected==correct)
                       {
                       text1.text= "POPRAWNA ODPOWIEDŹ!"
                       text1.color= "#00AA00"
                       goodanswers=goodanswers+1
                       }
                       else
                       {
                       if(correct==1)
                       {text1.text ="POPRAWNA ODPOWIEDŹ TO A.)"}
                       else if(correct==2)
                       {text1.text ="POPRAWNA ODPOWIEDŹ TO B.)"}
                       else if(correct==3)
                       {text1.text ="POPRAWNA ODPOWIEDŹ TO C.)"}
                       else if(correct==4)
                       {text1.text ="POPRAWNA ODPOWIEDŹ TO D.)"}

                       //text1.text= "BŁĘDNA ODPOWIEDŹ!"
                       text1.color= "#FF0000"
                       }
                    buttonstate=2
                       a.enabled=false
                       b.enabled=false
                       c.enabled=false
                       d.enabled=false
                    test.text= "PRZEJDŹ DO PODSUMOWANIA"

                     //onClicked:stack.push(form3)
                    }
                    }
                    }//koniec if 1 klikniecie
                    else if(buttonstate==1)
                    {
                         questionlabel.text=propertyBinding.Questionloader
                         questiona.text=propertyBinding.Aloader
                         questionb.text=propertyBinding.Bloader
                         questionc.text=propertyBinding.Cloader
                         questiond.text=propertyBinding.Dloader
                           selected = 0
                    text1.text=""
                    test.text= "ODPOWIEDZ"
                         a.checked=false
                         b.checked=false
                         c.checked=false
                         d.checked=false
                    a.enabled=true
                    b.enabled=true
                    c.enabled=true
                    d.enabled=true
                    buttonstate=0
                    }

                     else if(buttonstate==2)
                     {
                     propertyBinding.ValuefromQML=goodanswers
                     stack.push(form3)
                         buttonstate=0
                         a.enabled=true
                         b.enabled=true
                         c.enabled=true
                         d.enabled=true

                     }



                    }//koniec onclicka
}
                Image {
                    id: logoKn
                    width:parent.width
                    height:parent.height/4
                    anchors.top:test.bottom
                    anchors.topMargin: parent.height/20
                    fillMode: Image.PreserveAspectFit
                    //anchors.top:test.bottom
                    //anchors.topMargin: 30

                    source: "images/Logo Bean tlo.png"
                    }
}
        //}
    //}
}

    Component {
        id: form3
        Rectangle {
            //id: r3
            width:parent.width
            height:parent.height
    Image {
        id: logoTzf3
        width:parent.width
        height: parent.height/2.4
        anchors.top:parent.top
        anchors.topMargin: parent.height/20
        fillMode: Image.PreserveAspectFit
        source: "images/Tzlogo.png"
        }

    Label {
        id: resume

        text: "GRATULACJE! UZYSKAŁEŚ/AŚ "+ goodanswers+"/7 PUNKTÓW"
        //text:propertyBinding.ResumeLoader
        font.pointSize: 14
        width:parent.width
        height:parent.height/12
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.top:logoTzf3.bottom
        anchors.topMargin: parent.height/20
       // anchors.left:parent
      //  anchors.verticalCenterOffset: -225//25
        //onClicked: pageLoader.source = "Page1.qml"

    }

    Button{
    id: repeat
    text: "ZAGRAJ JESZCZE RAZ"
    width:parent.width
    height: parent.height/12
    anchors.top:resume.bottom
    onClicked:
    {
    goodanswers=0
    counter=0
    stack.push(form2)
    }


    }


Image {
    id: logoKn
    width:parent.width
    height:parent.height/4
    anchors.top:repeat.bottom
    anchors.topMargin: parent.height/20
    fillMode: Image.PreserveAspectFit
    source: "images/Logo Bean tlo.png"
    }

        }

    }

    Component.onCompleted: stack.push(form1)

}

