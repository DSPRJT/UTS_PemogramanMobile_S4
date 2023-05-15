// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'dart:async';
import 'package:http/http.dart' as http;
import 'dart:convert';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
  
}

class _loginState extends State<login> {
  @override
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(178, 2, 2, 2),
      body: Center(
        child: Form(
          child: ListView(
            shrinkWrap: true,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Welcome',
                    style: TextStyle(
                      fontSize: 50, 
                      fontWeight: FontWeight.bold,
                      color: Color.fromRGBO(255, 255, 2, 1)
                      ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Selamat datang di DSotre',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 2, 1)
                      ),
                  ),
                  Text(
                    'Silahkan Buat Akun jika tidak punya akun',
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(255, 255, 2, 1),
                      ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Image.asset('assets/img/DS.png'),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: false,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Nama Pengguna atau Email',
                        labelStyle: TextStyle( color: Color.fromRGBO(255, 255, 2, 1))
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
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          
                        ),
                        labelText: 'Masukan Password',
                        labelStyle: TextStyle( color: Color.fromRGBO(255, 255, 2, 1))
                        
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
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
                    height: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Color.fromARGB(255, 0, 0, 0),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15))),
                      onPressed: () {
                        Navigator.pushNamed(context, 'home');
                      },
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(255, 255, 2, 1)
                        ),
                      ),
                    ),
                  ),
                  TextButton( 
                    style: TextButton.styleFrom(
                      textStyle: const TextStyle(fontSize: 15),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    
                    child: const Text(
                      "Jika Kamu Tidak Mempunyai Akun?  Buat Akun",
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 2, 1)
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
