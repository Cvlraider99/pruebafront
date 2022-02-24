import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

const colorFondo = Color(0xff050624);
const colorTextoBar = Color(0xff777FA0);
const colorPrimerTexto = Color(0xffDBE5FF);
const colorBoton = Color(0xffF0A824);
const colorBotonDes = Color.fromRGBO(240, 168, 36, 0.3);

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Poppins'),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  MyHomePage createState() => MyHomePage();
}

class MyHomePage extends State<MyApp> {



  //Declaracion de los controladores
  TextEditingController controladorTelefono = new TextEditingController();
  String valorTelefono;
  TextEditingController controladorCorreo = new TextEditingController();
  String valorCorreo;
  TextEditingController controladorContra = new TextEditingController();
  String valorContra;
  TextEditingController controladorConContra = new TextEditingController();
  String valorConContra;

  @override
  Widget build(BuildContext context) {
    final double anchogeneral = MediaQuery.of(context).size.width;

    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) =>[
          SliverAppBar(
            backgroundColor: colorFondo,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: colorBoton),
              onPressed: () {

              },
            ),
            title: Text("Regístrate",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: colorTextoBar,
                )
            ),
          )
        ],
        body: Container(
          color: colorFondo,
          child: ListView(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                    child: Text("Vamos a crear una cuenta Ingresa tus datos personales.",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: colorPrimerTexto,
                      ),),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 40, 0),
                    child: Text("Teléfono",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: colorPrimerTexto,
                      ),),
                  ),
                  Row(
                    children: <Widget>[
                      //campo para del codigo de pais
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                        child: Container (
                          width: anchogeneral/7,
                          padding: EdgeInsets.only(
                              top: 2, left: 5, right: 5, bottom: 2
                          ),
                          decoration: BoxDecoration (
                            border: Border.all(
                              width: 1,
                              color:Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: colorFondo,
                          ),
                          child: TextField(
                            enabled: false,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "+52",
                              hintStyle: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                      //Campo para poner el numero telefonico
                      Padding(
                        padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                        child: Container (
                          width: anchogeneral/1.5,
                          padding: EdgeInsets.only(
                              top: 2, left: 16, right: 16, bottom: 2
                          ),
                          decoration: BoxDecoration (
                            border: Border.all(
                              width: 1,
                              color:Colors.white,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(7)),
                            color: colorFondo,
                          ),
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            controller: controladorTelefono,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              border: InputBorder.none,
                            ),
                            onChanged: (value){
                              setState(() {
                                valorTelefono = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 40, 0),
                    child: Text("Correo electrónico",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: colorPrimerTexto,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Container (
                      padding: EdgeInsets.only(
                          top: 2, left: 16, right: 16, bottom: 2
                      ),
                      decoration: BoxDecoration (
                        border: Border.all(
                          width: 1,
                          color:Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: colorFondo,
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: controladorCorreo,
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        onChanged: (value){
                          setState(() {
                            valorCorreo = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 40, 0),
                    child: Text("Contraseña",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: colorPrimerTexto,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Container (
                      padding: EdgeInsets.only(
                          top: 2, left: 16, right: 16, bottom: 2
                      ),
                      decoration: BoxDecoration (
                        border: Border.all(
                          width: 1,
                          color:Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: colorFondo,
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: controladorContra,
                        obscureText:  true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        onChanged: (value){
                          setState(() {
                            valorContra = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 40, 0),
                    child: Text("Confirmar contraseña ",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12,
                        color: colorPrimerTexto,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(16, 12, 16, 0),
                    child: Container (
                      padding: EdgeInsets.only(
                          top: 2, left: 16, right: 16, bottom: 2
                      ),
                      decoration: BoxDecoration (
                        border: Border.all(
                          width: 1,
                          color:Colors.white,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(7)),
                        color: colorFondo,
                      ),
                      child: TextField(
                        style: TextStyle(color: Colors.white),
                        controller: controladorConContra,
                        obscureText:  true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                        onChanged: (value){
                          setState(() {
                            valorConContra = value;
                          });
                        },
                      ),
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(17.25, 16, 0, 0),
                        child:  new Image.asset('assets/icono.png', //Logo de la aplicacion
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.fromLTRB(5.25, 16, 20, 0),
                          child: Container(
                            width: anchogeneral/1.2,
                            child: Text("-Tu contraseña debe de contener al menos 8 caracteres\n"
                                "-Al menos 1 caracter alfanúmerico (a-z, A-Z o 0-9)\n"
                                "-Al menos 1 simbolo (ejemplo: @, &, % )\n"
                                "-No debe de contener tu e-mail.\n"
                                "-No debe de contener más de 3 caracteres identicos (ejemplo:111).\n"
                                "-No debe de contener más de 3 caracteres alfanúmericos. consecutivos (ejemplo: 1234).\n",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: colorPrimerTexto,
                              ),
                            ),
                          )
                      ),
                    ],
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 25, 0, 0),
                      child: MaterialButton(
                        minWidth: anchogeneral/1.1,
                        height: 40.0,
                        shape: new RoundedRectangleBorder(
                            borderRadius: new BorderRadius.circular(10.0)
                        ),
                        onPressed: (){

                        },
                        color: valorContra == null || valorContra.isEmpty ||
                            valorConContra == null || valorConContra.isEmpty ||
                            valorTelefono == null || valorTelefono.isEmpty ||
                            valorCorreo == null || valorCorreo.isEmpty ?
                            colorBotonDes: colorBoton,
                        child: Text('Siguiente',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            )
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.fromLTRB(0, 14, 0, 20),
                      child: TextButton(
                        onPressed: (){

                        },
                        child: Text('Cancelar',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w500,)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

