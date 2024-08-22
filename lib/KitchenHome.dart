import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qubefyn_kitchen/database.dart';
import 'package:qubefyn_kitchen/Controller/getController.dart';

class KitchenHome extends StatefulWidget {
  const KitchenHome({super.key});

  @override
  State<KitchenHome> createState() => _KitchenHomeState();
}

class _KitchenHomeState extends State<KitchenHome> {
  final Getcontroller controller = Get.put(Getcontroller());

  Widget _textStyle(String data) {
    return Text(data,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 18, color: Colors.blue));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: StreamBuilder(
                  stream:
                      FirebaseFirestore.instance.collection("Food").snapshots(),
                  builder: (context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return ListView.builder(
                          itemCount: snapshot.data.docs.length,
                          itemBuilder: (context, index) {
                            DocumentSnapshot ds = snapshot.data.docs[index];
                            return Container(
                              margin: const EdgeInsets.only(bottom: 20),
                              child: Material(
                                elevation: 10,
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  padding: const EdgeInsets.all(20),
                                  width: MediaQuery.of(context).size.width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("Burger   :"),
                                          _textStyle("${ds["Burger"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("Pizza :"),
                                          _textStyle("${ds["Pizza"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("F_Fries :"),
                                          _textStyle("${ds["F_Fries"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("Noodles :"),
                                          _textStyle("${ds["Noodles"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("Momos :"),
                                          _textStyle("${ds["Momos"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("Sandwich :"),
                                          _textStyle("${ds["Sandwich"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("Samosa :"),
                                          _textStyle("${ds["Samosa"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("Bataasha :"),
                                          _textStyle("${ds["Bataasha"]}"),
                                        ],
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          _textStyle("Chaat :"),
                                          _textStyle("${ds["Chaat"]}"),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            );
                          });
                    } else {
                      return Container(
                          alignment: Alignment.center,
                          child: _textStyle("Something Went Wrong!"));
                    }
                  }),
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
                child: const Text("Done",
                    style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
              onTap: () async {
                FirebaseFirestore.instance.collection("Food").doc(id).delete();
              },
            ),
          ],
        ),
      ),
    );
  }
}
