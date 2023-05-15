// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_login/login.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class register extends StatefulWidget {
  const register({Key? key}) : super(key: key);

  @override
  State<register> createState() => _registerState();
}

class _registerState extends State<register> {
  @override
  final fromKey = GlobalKey<FormState>();

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(178, 2, 2, 2),
      body: Center(
        child: Form(
          key: fromKey,
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    'Buat Akun',
                    style: TextStyle(
                      fontSize: 50,
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 255, 2, 1)
                      ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Silahkan isi Semua',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 2, 1),
                      fontSize: 20
                      ),
                  ),
                  const Text(
                    'Biodata Akun',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 2, 1)
                      ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelStyle: TextStyle( color: Color.fromRGBO(255, 255, 2, 1)),
                        labelText: 'Nama Kamu',
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'wajib Di-isi';
                        }
                        return null;
                      },
                      controller: name,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'E-mail Kamu',
                        labelStyle: TextStyle( color: Color.fromRGBO(255, 255, 2, 1)),
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'wajib Di-isi';
                        }
                        return null;
                      },
                      controller: email,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Bikin Password',
                        labelStyle: TextStyle( color: Color.fromRGBO(255, 255, 2, 1)),
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'wajib Di-isi';
                        }
                        return null;
                      },
                      controller: pass,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Ulangi Passowrd',
                        labelStyle: TextStyle( color: Color.fromRGBO(255, 255, 2, 1)),
                      ),
                      validator: (val) {
                        if (val!.isEmpty) {
                          return 'wajib Di-isi';
                        } else if (val != pass.text) {
                          return 'Password tidak sama';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: const Color.fromRGBO(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      child: const Text(
                        'Buat Akun',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 2, 1),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
