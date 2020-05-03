import 'dart:html';

import 'package:flutter/material.dart';
import 'package:inicio/paciente.dart';

class TerceraPantalla extends StatelessWidget {
Paciente p =Paciente("","","","","","","");
  TerceraPantalla(this.p);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
     appBar: AppBar(
       title: Text("Datos del usuario"),
     ) ,
     body: Padding(
       padding: EdgeInsets.all(20.0),
       child: Container(
        alignment: Alignment.topLeft,
           child: Row(


             children: <Widget>[
              Column( 
crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                     

Text(

  "Nombre",
  textAlign: TextAlign.left,
  style: TextStyle(
    fontSize: 20.0,
    color: Colors.blue,
    height: 2.0,
    fontFamily: 'Raleway',
  ),
),
Text("Edad",
   textAlign: TextAlign.left,
  style: TextStyle(
    fontSize: 20.0,
        height: 2.0,

    color: Colors.blue,
    fontFamily: 'Raleway',
  ),),
Text("Cedula",
  textAlign: TextAlign.left,
  style: TextStyle(
    fontSize: 20.0,
        height: 2.0,
    color: Colors.blue,
    fontFamily: 'Raleway',
  ),),
Text("Sexo",

  style: TextStyle(
    fontSize: 20.0,
    color: Colors.blue,
        height: 2.0,
    fontFamily: 'Raleway',
  ),),
Text("Sangre",  
  style: TextStyle(
    fontSize: 20.0,
            height: 2.0,
    color: Colors.blue,
    fontFamily: 'Raleway',
  ),),
Text("Enfermedad",  

  style: TextStyle(
    fontSize: 20.0,
        height: 2.0,
    color: Colors.blue,
    fontFamily: 'Raleway',
  ),),
Text("Obervaciones", 
  style: TextStyle(
    
    fontSize: 20.0,
    height: 2.0,
    color: Colors.blue,
    fontFamily: 'Raleway',
  ),),

 ],
),
Column( 
  crossAxisAlignment: CrossAxisAlignment.start,

 children: <Widget>[
                      
Text(
  p.getNombre,


  style: TextStyle(
    fontSize: 20.0,
    height: 2.0,
    color: Colors.black,
  
    fontFamily: 'Raleway',
  ),
),
Text(p.getEdad,
  style: TextStyle(
       fontSize: 20.0,
    height: 2.0,
    color: Colors.black,
    fontFamily: 'Raleway',
  ),),
Text(p.getCedula,
  style: TextStyle(
     fontSize: 20.0,
    height: 2.0,
    color: Colors.black,
    fontFamily: 'Raleway',
  ),),
Text(p.getSexo,
  style: TextStyle(
       fontSize: 20.0,
    height: 2.0,
    color: Colors.black,
    fontFamily: 'Raleway',
  ),),
Text(p.getSangre,  
  style: TextStyle(
       fontSize: 20.0,
    height: 2.0,
    color: Colors.black,
    fontFamily: 'Raleway',
  ),),
Text(p.getEnfermedad, 
  style: TextStyle(
       fontSize: 20.0,
    height: 2.0,
    color: Colors.black,
    fontFamily: 'Raleway',
  ),),
Text(p.getObervaciones, 
  style: TextStyle(
      fontSize: 20.0,
    height: 2.0,
    color: Colors.black,
    fontFamily: 'Raleway',
  ),),

 ],
),
Column(
  children:<Widget>[
  RaisedButton(
    child: Text("Leer"),
    onPressed: (){

    },
  
  ),
  ],

  ),

             ],
             
           ),
           
         ))
       
       
    );
  }

}