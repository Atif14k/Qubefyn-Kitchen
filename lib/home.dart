import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubefyn_kitchen/Controller/getController.dart';
import 'package:qubefyn_kitchen/database.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final Getcontroller controller = Get.put(Getcontroller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color.fromARGB(200, 255, 185, 40),
          ),
          Container(
            alignment: Alignment.center,
            //padding: EdgeInsets.all(50),
            // color: const Color.fromARGB(180, 255, 255, 255),
            margin: const EdgeInsetsDirectional.symmetric(
                horizontal: 10, vertical: 60),
            child: Column(
              children: [
                const Text(
                  "Qubefyn Kitchen",
                  style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                      color: Colors.black),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                    width: 350,
                    child: TextField(
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: const Color.fromARGB(160, 255, 255, 255),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20.0)),
                          hintText: 'Search your Favourite Dish',
                          prefixIcon: const Icon(Icons.search)),
                    )),
                const SizedBox(
                  height: 20,
                ),
                //
                //     Row 1
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage(
                                    "assets/tasty-burger-isolated.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 122,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                  child: const Icon(Icons.remove),
                                  onTap: () {
                                    controller.decrementBurger();
                                  }),
                              Obx(() {
                                return Text(
                                    "Burger ${controller.Burger.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  //Burger++;
                                  controller.incrementBurger();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/pizza.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 122,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                  child: const Icon(Icons.remove),
                                  onTap: () {
                                    controller.decrementPizza();
                                  }),
                              Obx(() {
                                return Text("Pizza ${controller.Pizza.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  controller.incrementPizza();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/french-fries.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 122,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  controller.decrementF_Fries();
                                },
                              ),
                              Obx(() {
                                return Text(
                                    "F_Fries ${controller.F_Fries.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  controller.incrementF_Fries();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //
                // Row2
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/noodles.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 122,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  controller.decrementNoodles();
                                },
                              ),
                              Obx(() {
                                return Text(
                                    "Noodles ${controller.Noodles.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  controller.incrementNoodes();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/momos.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 122,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  controller.decrementMomos();
                                },
                              ),
                              Obx(() {
                                return Text("Momos ${controller.Momos.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  controller.incrementMomos();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/sandwich.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 133,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  controller.decrementSandwich();
                                },
                              ),
                              Obx(() {
                                return Text(
                                    "Sandwich ${controller.Sandwich.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  controller.incrementSandwich();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                //
                // Row 3
                //
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/samosa.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 122,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  controller.decrementSamosa();
                                },
                              ),
                              Obx(() {
                                return Text(
                                    "Samosa ${controller.Samosa.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  controller.incrementSamosa();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/batashaa.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 131,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  controller.decrementBataasha();
                                },
                              ),
                              Obx(() {
                                return Text(
                                    "Bataasha ${controller.Bataasha.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  controller.incrementBataasha();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          height: 120,
                          width: 120,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                image: AssetImage("assets/chaat.png"),
                                fit: BoxFit.cover,
                              ),
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          height: 30,
                          width: 122,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(180, 255, 255, 255),
                              border: Border.all(
                                color: const Color.fromARGB(145, 255, 255, 255),
                              ),
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10))),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              InkWell(
                                child: const Icon(Icons.remove),
                                onTap: () {
                                  controller.decrementChaat();
                                },
                              ),
                              Obx(() {
                                return Text("Chaat ${controller.Chaat.value}");
                              }),
                              InkWell(
                                child: const Icon(Icons.add),
                                onTap: () {
                                  controller.incrementChaat();
                                },
                              )
                            ],
                          ),
                        )
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                Container(
                  alignment: Alignment.center,
                  height: 55,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.orange[300],
                      border: Border.all(
                        color: const Color.fromARGB(145, 255, 255, 255),
                      ),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(15))),
                  child: InkWell(
                    child: const Text("Place Order",
                        style: TextStyle(fontSize: 20, color: Colors.black)),
                    onTap: () async {
                      String Id = id;
                      Map<String, dynamic> FoodInfoMap = {
                        //"Id": Id,
                        "Burger": controller.Burger.value,
                        "Pizza": controller.Pizza.value,
                        "F_Fries": controller.F_Fries.value,
                        "Noodles": controller.Noodles.value,
                        "Momos": controller.Momos.value,
                        "Sandwich": controller.Sandwich.value,
                        "Samosa": controller.Samosa.value,
                        "Bataasha": controller.Bataasha.value,
                        "Chaat": controller.Chaat.value,
                      };
                      await DatabaseMethods()
                          .addFoodDetails(FoodInfoMap, Id)
                          .then((value) {
                        Fluttertoast.showToast(
                            msg: "Order Placed Successfully",
                            toastLength: Toast.LENGTH_LONG,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.green[100],
                            textColor: Colors.black,
                            fontSize: 22.0);
                      });
                    },
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Quality Food at your Doorstep",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
