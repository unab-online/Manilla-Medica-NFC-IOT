import 'package:flutter/material.dart';
import 'package:inicio/datos3.dart';
import 'package:inicio/paciente.dart';


class SegundaPantalla extends StatelessWidget {

  Paciente p =  Paciente("","","","","","","");
    Paciente c =  Paciente("","","","","","","");
        Paciente b =  Paciente("","","","","","","");

String _nombre;


 SegundaPantalla(this.p, this.b, this.c);

final scaffolKey =  GlobalKey<ScaffoldState>();
final formkey =  GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            key: scaffolKey,
      appBar: AppBar(
        title : Text("Paciente")

      ),
    body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
TextFormField(
  validator: (valor) => valor.length < 5 ?"Datos insuficientes":null,
  onSaved: (valor) => _nombre =valor,
  decoration: InputDecoration(labelText: "Cedula"),

),
SizedBox(height: 15.0,),

 RaisedButton(
  child: Text("Enviar datos"),
  onPressed: (){
    final form = formkey.currentState;
 if(form.validate()){
    form.save();
if(p.getCedula==_nombre){
     mostrarSnackBar2("Usuario encontrado");
       Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => TerceraPantalla(p),
    ));
} else if(b.getCedula==_nombre){
     mostrarSnackBar2("Usuario encontrado");
       Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => TerceraPantalla(b),
    ));
} else if(c.getCedula==_nombre){
     mostrarSnackBar2("Usuario encontrado");
       Navigator.of(context).push(MaterialPageRoute(
    builder: (context) => TerceraPantalla(c),
    ));
}
else{
     mostrarSnackBar2("Usuario no encontrado");
}
  }
  })
          ],
        )
      ),
       )
        ),
    );
  }
  void mostrarSnackBar2(String cedula){
  final snackbar = SnackBar(
    content: Text(cedula),
    );
   scaffolKey.currentState.showSnackBar(snackbar);
}
void pasarPagina(){

}
  
}

