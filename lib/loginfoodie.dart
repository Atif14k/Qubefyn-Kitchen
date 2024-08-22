import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubefyn_kitchen/home.dart';

class FoodieLogin extends StatefulWidget {
  const FoodieLogin({super.key});

  @override
  State<FoodieLogin> createState() => _FoodieLoginState();
}

class _FoodieLoginState extends State<FoodieLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BGimage.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        //padding: EdgeInsets.all(100),
        margin: EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 80),
        //decoration: BoxDecoration(),
        decoration: BoxDecoration(
            color: const Color.fromARGB(180, 255, 255, 255),
            border: Border.all(
              color: const Color.fromARGB(145, 255, 255, 255),
            ),
            borderRadius: BorderRadius.all(Radius.circular(15))),

        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Welcome To Our Kitchen",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            SizedBox(
              height: 86,
            ),
            Text(
              "Let's Start",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
            SizedBox(height: 30),
            SizedBox(
              width: 310,
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  filled: true,
                  fillColor: Color.fromARGB(160, 255, 255, 255),
                  border: OutlineInputBorder(),
                  hintText: 'Enter your Email address',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SizedBox(
              width: 310,
              child: TextField(
                decoration: InputDecoration(
                  //contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  filled: true,
                  fillColor: Color.fromARGB(160, 255, 255, 255),
                  border: OutlineInputBorder(),
                  hintText: 'Enter your Password',
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 50,
                width: 200,
                decoration: BoxDecoration(
                    color: Colors.orange[300],
                    border: Border.all(
                      color: const Color.fromARGB(145, 255, 255, 255),
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Text("Login",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
              onTap: () {
                Get.to(Home());
              },
            ),
          ],
        ),
      )
    ]));
  }
}
