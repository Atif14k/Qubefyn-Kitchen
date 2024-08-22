import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubefyn_kitchen/loginfoodie.dart';
import 'package:qubefyn_kitchen/loginkitchen.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
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

        child: Column(children: [
          SizedBox(
            height: 60,
          ),
          Text(
            "Welcome To Our Kitchen",
            style: TextStyle(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.black),
          ),
          SizedBox(
            height: 120,
          ),
          Text(
            "Let's Start",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w800, color: Colors.black),
          ),
          SizedBox(height: 30),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.orange[300],
                  border: Border.all(
                    color: const Color.fromARGB(145, 255, 255, 255),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Start as Foodie",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
            onTap: () {
              Get.to(FoodieLogin());
            },
          ),
          SizedBox(
            height: 35,
          ),
          InkWell(
            child: Container(
              alignment: Alignment.center,
              height: 55,
              width: 330,
              decoration: BoxDecoration(
                  color: Colors.orange[300],
                  border: Border.all(
                    color: const Color.fromARGB(145, 255, 255, 255),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(15))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Start as Kitchen",
                      style: TextStyle(fontSize: 20, color: Colors.black)),
                  Icon(Icons.arrow_right)
                ],
              ),
            ),
            onTap: () {
              Get.to(KitchenLogin());
            },
          ),
          SizedBox(
            height: 220,
          ),
          Text(
            "Quality Food at your Doorstep",
            style: TextStyle(
                fontSize: 22, fontWeight: FontWeight.w400, color: Colors.black),
          ),
        ]),
      ),
    ]));
  }
}
