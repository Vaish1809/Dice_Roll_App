import 'package:flutter/material.dart';
import 'package:flutter_application_1/gradient_container.dart';
//to get recommendationsright click on the widget we want to wrap  and select refactoring we get opeions
//class(blueprint)contains data(properties) and functions(methods)
//instance of a classs is object which posses the properties of class
// eevrything is a widget
//const we can resuse the function
//add , after every bracket anad then ctrl shift p format beautify;)
void main() {
  runApp(
   const MaterialApp(
      home: Scaffold(
        body: GradientContainer()
      ),
    ),
  );
}
