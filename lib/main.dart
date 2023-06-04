import 'package:flutter/material.dart';
import 'package:ecomm/screens/login_screen.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Ecommerce",
      home: LoginScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Colors.transparent,
          cursorColor: Color.fromRGBO(128, 44, 110, 1),
          selectionHandleColor: Color.fromRGBO(128, 44, 110, 1),
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          color: Colors.transparent,
          elevation: 0,
          actionsIconTheme: IconThemeData(
            color: Color.fromRGBO(128, 44, 110, 1),
          ),
          iconTheme: IconThemeData(
            color: Color.fromRGBO(128, 44, 110, 1),
          ),
        ),
        textTheme: const TextTheme(
          bodyText1: TextStyle(
            fontFamily: 'Montserrat',
            color: Color.fromRGBO(128, 44, 110, 1),
            fontSize: 16,
            fontStyle: FontStyle.normal,
          ),
          headline1: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 30,
            color: Color.fromRGBO(128, 44, 110, 1),
            fontWeight: FontWeight.bold,
          ),
          headline2: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 20,
            color: Color.fromRGBO(128, 44, 110, 1),
            fontWeight: FontWeight.bold,
          ),
          headline3: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 18,
            color: Color.fromRGBO(128, 44, 110, 1),
            fontWeight: FontWeight.bold,
          ),
        ),
        hintColor: Color.fromRGBO(128, 44, 110, 1),
        shadowColor: Color.fromRGBO(128, 44, 110, 1),
        focusColor: Color.fromRGBO(128, 44, 110, 1),
        inputDecorationTheme: const InputDecorationTheme(
          focusColor: Color.fromRGBO(128, 44, 110, 1),
          labelStyle: TextStyle(
            color: Color.fromRGBO(128, 44, 110, 1),
          ),
          border: InputBorder.none,
          disabledBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          focusedErrorBorder: InputBorder.none,
          iconColor: Color.fromRGBO(128, 44, 110, 1),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
            foregroundColor: Color.fromRGBO(128, 44, 110, 1),
            shadowColor: Color.fromRGBO(128, 44, 110, 1),
            side: const BorderSide(
              color: Color.fromRGBO(128, 44, 110, 1),
            ),
          ),
        ),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(
          backgroundColor: Color.fromRGBO(128, 44, 110, 1),
        ),
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(128, 44, 110, 1),
        ),
        listTileTheme: const ListTileThemeData(
          iconColor: Color.fromRGBO(128, 44, 110, 1),
        ),
      ),
    ),
  );
}
