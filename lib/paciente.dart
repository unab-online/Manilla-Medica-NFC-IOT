import 'package:flutter/material.dart';

class Paciente{

  String nombre;
  String edad;
  String cedula;

  String sexo;
  String sangre;
  String enfermedad;
  String observaciones;

  Paciente(String _nombre, String _edad, String _cedula, String _sexo, String _sangre, String _enfermedad, String _observaciones){

  this. nombre =_nombre;
  this. edad =_edad;
  this. sexo =_sexo;
  this. cedula=_cedula;
  this. sangre =_sangre;
  this. enfermedad =_enfermedad;
  this. observaciones =_observaciones;

  }
 String get getCedula{
    return this.cedula;
  }

  String get getNombre{
    return this.nombre;
  }
  String get getEdad{
    return this.edad;
  }
    String get getSexo{
    return this.sexo;
  }
    String get getSangre{
    return this.sangre;
  }
    String get getEnfermedad{
    return this.enfermedad;
  }
    String get getObervaciones{
    return this.observaciones;
  }


}