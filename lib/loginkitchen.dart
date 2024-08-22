import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubefyn_kitchen/KitchenHome.dart';

class KitchenLogin extends StatefulWidget {
  const KitchenLogin({super.key});

  @override
  State<KitchenLogin> createState() => _KitchenLoginState();
}

class _KitchenLoginState extends State<KitchenLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/BGimage.png"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        margin:
            const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 80),
        decoration: BoxDecoration(
            color: const Color.fromARGB(180, 255, 255, 255),
            border: Border.all(
              color: const Color.fromARGB(145, 255, 255, 255),
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15))),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Welcome To Our Kitchen",
              style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 86,
            ),
            const Text(
              "Let's Start",
              style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w800,
                  color: Colors.black),
            ),
            const SizedBox(height: 30),
            const SizedBox(
              width: 310,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(160, 255, 255, 255),
                  border: OutlineInputBorder(),
                  hintText: 'Enter your Email address',
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const SizedBox(
              width: 310,
              child: TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color.fromARGB(160, 255, 255, 255),
                  border: OutlineInputBorder(),
                  hintText: 'Enter your Password',
                ),
              ),
            ),
            const SizedBox(
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
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: const Text("Login",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
              onTap: () {
                Get.to(const KitchenHome());
              },
            ),
          ],
        ),
      )
    ]));
  }
}
