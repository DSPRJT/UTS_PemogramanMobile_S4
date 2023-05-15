// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';


class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(178, 2, 2, 2),
      appBar: AppBar(
        backgroundColor:Color.fromARGB(178, 2, 2, 2),
        title: Text("Tampillan Home DStore",
        style: TextStyle (
          color: Color.fromRGBO(255, 255, 2, 1)
        ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              "Selamat Datang Di Dylan Store ",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600,
                color: Color.fromRGBO(255, 255, 2, 1)
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
                  Navigator.pushNamed(context, 'login');
                },
                child: Text("Keluar",
                style: TextStyle(
                        color: Color.fromRGBO(255, 255, 2, 1)
                      ),
                ),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
