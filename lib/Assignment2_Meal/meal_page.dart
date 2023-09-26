import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/Assignment2_Meal/util.dart';

import '../PostAssignment/data.dart';

class Meal_Details extends StatefulWidget {
  @override
  State<Meal_Details> createState() => Meal_DetailsState();
}

class Meal_DetailsState extends State<Meal_Details> {
  List<ItemCategory> convertMapsToItemModel() {
    return fakeItems.map((e) => ItemCategory.fromMap(e as Map)).toList();
  }

  int qu = 1;
  double sizePrice = 0;
  int selectedSizeIndex = 10;
  List<int> selectedIndexes = [];
  double price = 21.00;
  double total = 21.00;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          height: 100,
          padding: EdgeInsets.all(30),
          child: SizedBox(
            height: 50,
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                double selectedAddonsPrice = selectedIndexes.length * 9;
                double finalPrice = total + sizePrice + selectedAddonsPrice;
                print('Final Price: \$${finalPrice.toStringAsFixed(2)}');
              },
              child: Text((total + sizePrice + (selectedIndexes.length * 9))
                  .toString()),
            ),
          )),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30)),
              child: Image.network(
                "https://images.unsplash.com/photo-1504674900247-0877df9cc836?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q=80",
                height: MediaQuery.of(context).size.height * 0.3,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Text("بيتزا بالخضار",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold)),
            SizedBox(
              height: 2,
            ),
            Text("بيتزا بالخضار مميزة",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(
                            color: Colors.grey,
                            width: .5,
                            style: BorderStyle.solid,
                            strokeAlign: BorderSide.strokeAlignOutside)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            if (qu >= 1 && qu < 10) {
                              qu++;
                              total = price * qu;
                            }

                            setState(() {});
                          },
                          child: Text("+",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.lightBlueAccent)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("$qu",
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 20,
                        ),
                        InkWell(
                          onTap: () {
                            if (qu > 1 && qu < 10) {
                              qu--;
                              total = price * qu;
                            }

                            setState(() {});
                          },
                          child: Text("-",
                              style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                  color: Colors.lightBlueAccent)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text("د.ا"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("21.00"),
                    ],
                  ),
                ],
              ),
            ),
            Divider(color: Colors.black12, thickness: 5),
            Row(
              textDirection: TextDirection.rtl,
              children: [
                Text("اختيارك من الحجم",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold)),
                SizedBox(
                  width: 8,
                ),
                Text("(اختياري)",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                    )),
              ],
            ),
            ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      textDirection: TextDirection.rtl,
                      children: [
                        Text(
                          "صنف ${index + 1}",
                          style: TextStyle(fontSize: 16),
                        ),
                        Spacer(),
                        Text("${index * 9} د.أ "),
                        Radio(
                            value: index,
                            groupValue: selectedSizeIndex,
                            onChanged: (v) {
                              selectedSizeIndex = index;
                              if (index == 0) {
                                sizePrice = 0;
                              } else if (index == 1) {
                                sizePrice = 9;
                              } else {
                                sizePrice = 18;
                              }
                              setState(() {});
                            })
                      ],
                    ),
                  );
                }),
            Divider(color: Colors.black12, thickness: 5),
            Column(
              textDirection: TextDirection.rtl,
              children: [
                Row(
                  textDirection: TextDirection.rtl,
                  children: [
                    Text("اختر الاضافات ",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 8,
                    ),
                    Text("(اختياري)",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        )),
                  ],
                ),
                ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          textDirection: TextDirection.rtl,
                          children: [
                            Text(
                              "صنف ${index + 1}",
                              style: TextStyle(fontSize: 16),
                            ),
                            Spacer(),
                            Text("${index * 9} د.أ "),
                            Checkbox(
                                value: selectedIndexes.contains(index),
                                onChanged: (v) {
                                  if (selectedIndexes.contains(index)) {
                                    selectedIndexes.remove(index);
                                  } else {
                                    selectedIndexes.add(index);
                                  }

                                  setState(() {});
                                })
                          ],
                        ),
                      );
                    })
              ],
            ),
          ],
        ),
      ),
    );
  }
}
