import 'package:flutter/material.dart';

dataEntry (top,name,label){
  return  Container(
    margin: EdgeInsets.only(top:10, bottom: 10, right: 23,left: 23),
    child: Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: top, left: 5),
          child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 4),
              child:Text(
                name.toUpperCase(),
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(15, 66, 125, 1),
                ),
                ) ,
            )
            
          ],
        ),
        ),
        TextField(
          decoration:InputDecoration(
            labelText: label,
            contentPadding: EdgeInsets.only(bottom: -2, left: 10)),)
      ],
    ),
  );
}

class loginPage extends StatefulWidget{

  @override
  _loginPage createState() => _loginPage();
}

class _loginPage extends State<loginPage>{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'loginPage',
        home: Material(
        child:Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/background.jpg'),
              fit: BoxFit.cover )
          ),
          child: Container(
            margin: EdgeInsets.only(left: 20,right: 20,top: 230,bottom: 220),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.3),
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0,0)
                )
              ],
              borderRadius: BorderRadius.circular(15),
              color: Color.fromRGBO(248, 244, 244, 1)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50, left: 20,right: 20),
                  child:Image(
                    image: AssetImage('/Funcicolombia.png'),
                    fit: BoxFit.contain,)
                ),
                dataEntry(30,'nombre:','Ingrese su nombre'),
                dataEntry(10,'código de curso:','Ingrese el código del cuso'),
                Container(
                  margin: EdgeInsets.only(top: 22, bottom: 10, right: 22,left: 22),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color.fromRGBO(	47, 117, 192, 1),Color.fromRGBO(	64,	173,	241, 1)],
                      begin: Alignment.topLeft,
                      end: Alignment.topRight,
                    ),
                    borderRadius: BorderRadius.circular(100),),
                  child: ElevatedButton(
                    onPressed: (){},
                    child: Text('ingresar'.toUpperCase(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w800,
                    ),),
                    style: ElevatedButton.styleFrom( 
                      padding: EdgeInsets.symmetric(horizontal: 125, vertical: 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100)
                      ),
                      primary: Color.fromARGB(0, 0, 0, 0),
                      onPrimary: Color(0xFF40ADF1),
                      ),
                    ),    
                ),
                Container(
                  margin: EdgeInsets.only(left: 8),
                  child: Text('¿Olvidó su código?',
                  style: TextStyle(
                    color: Colors.black54,
                    fontSize: 15,
                  ),),
                )   
            ]),
          ),
        )),
    );
  }
}