import 'package:flutter/material.dart';
import 'package:inicio/datos2.dart';
import 'package:inicio/paciente.dart';

class Datos extends StatefulWidget{
_IngresoDatos createState() => _IngresoDatos();
  
}

class _IngresoDatos extends State<Datos>{

final scaffolKey =  GlobalKey<ScaffoldState>();
final formkey =  GlobalKey<FormState>();
String _nombre;
String _edad;
String _sexo;
String _sangre;
String _enfermedad;
String _observaciones;
@override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffolKey,
      appBar:  AppBar(title: Text("Validando datos")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
   
/*
          
TextFormField(
  validator: (valor) => valor.length < 5 ?"Datos insuficientes":null,
  onSaved: (valor) => _nombre =valor,
  decoration: InputDecoration(labelText: "Nombres"),

),
SizedBox(height: 15.0,),
TextFormField(
    validator: (valor) => valor.toString().length <=0 || valor.toString().length >2 ?"Datos insuficientes":null,
  onSaved: (valor) => _edad =valor,
  decoration: InputDecoration(labelText: "Edad"),
),
SizedBox(height: 15.0,),
TextFormField(
  validator: (valor) => valor.length < 5 ?"Datos insuficientes":null,
  onSaved: (valor) => _sexo =valor,
  decoration: InputDecoration(labelText: "Sexo"),

),
SizedBox(height: 15.0,),
TextFormField(
  validator: (valor) => valor.length < 2 ?"Datos insuficientes":null,
  onSaved: (valor) => _sangre =valor,
  decoration: InputDecoration(labelText: "Sangre"),

),
SizedBox(height: 15.0,),
TextFormField(
  validator: (valor) => valor.length < 4 ?"Datos insuficientes":null,
  onSaved: (valor) => _enfermedad =valor,
  decoration: InputDecoration(labelText: "Enfermedad"),

),
SizedBox(height: 15.0,),
TextFormField(
  validator: (valor) => valor.length < 10 ?"Datos insuficientes":null,
  onSaved: (valor) => _observaciones =valor,
  decoration: InputDecoration(labelText: "Observaciones"),

),
SizedBox(height: 15.0,),
*/
RaisedButton(
  child: Text("Enviar datos"),
  onPressed: (){
    final form = formkey.currentState;
    if(form.validate()){
      form.save();
mostrarSnackBar();
    
    }
  Paciente p = new Paciente("Jhan Mauricio", "21","1005150237"," Masculino", "o+", "Ninguna", "Revision medica, estable");
  Paciente b = new Paciente("Juan Sebastian Pereira", "22","2812345"," Masculino", "o-", "Corazon roto", "Revision medica, estable");
  Paciente c = new Paciente("Neider Yesid Cabrera", "21","123456789"," Masculino", "o+", "Corazón roto", "Revision medica, estable");




  Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => SegundaPantalla(p,b,c),
    ));
  })
             
              ],
            )
          ),)
          ),
    );
  }

void mostrarSnackBar(){
  final snackbar = SnackBar(
    content: Text("Email : $_nombre, edad: $_edad"),
    );
   scaffolKey.currentState.showSnackBar(snackbar);
}
}
