import 'dart:html';
import 'dart:js';

import 'package:flutter/material.dart';

void main() {
  runApp(ujian());
}

class ujian extends StatefulWidget {
  @override
  State<ujian> createState() => ujian_State();
}

class ujian_State extends State<ujian> {
  TextEditingController namacontroller = TextEditingController();
  TextEditingController paswordcontroller = TextEditingController();
  String pesan = "";
  void login() {
    setState(() {
      namacontroller;
      paswordcontroller;
      if (namacontroller.text == "geral") {
        pesan = ("anda geral");
      } else if (namacontroller == "aldi") {
        pesan = ("anda aldi");
      } else {
        pesan = ("anda bukan keduanya");
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            children: [
              TextField(
                controller: namacontroller,
                decoration: InputDecoration(
                  labelText: "username",
                  hintText: "masukkan nama",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: paswordcontroller,
                decoration: InputDecoration(
                  labelText: "password",
                  hintText: "masukkan password",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(onPressed: () {}, child: Text("login")),
              Text(pesan),
            ],
          ),
        ),
      ),
    );
  }
}
