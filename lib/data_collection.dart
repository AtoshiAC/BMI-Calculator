import 'dart:math';

import 'package:bmi_calculator/result.dart';
import 'package:flutter/material.dart';
class Data_collection extends StatefulWidget {
  const Data_collection({super.key});

  @override
  State<Data_collection> createState() => _Data_collectionState();
}

class _Data_collectionState extends State<Data_collection> {

double height = 0.0;
int weight = 70;
int age =20 ;

double bmi =0.0;
bmi_calculation(){
  setState(() {
    bmi = (weight/(height*height));
  });
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFCB714),
        actions: [
          Icon(Icons.calculate),

        ],
        title: Center(
          child: Text("BMI Calculator",
          style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color(0xffA1DAF5),
          child: Column(
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(15),
                      child: ClipOval(
                        child: Container(
                          color: Color(0xff0F1E35),
                          height: 200,
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.male,
                                color: Colors.white,
                                size: 100,
                              ),
                              Text("Male",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: ClipOval(
                        child: Container(
                          color: Color(0xff0F1E35),
                          height: 200,
                          width: 170,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.female,
                                color: Colors.white,
                                size: 100,
                              ),
                              Text("Female",
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),


              SizedBox(height: 10,),
              Container(
                height: 200,
                width: 370,
                decoration: BoxDecoration(
                  color: Color(0xff0F1E35),
                  borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                ),
                child: Column(
                  children: [
                    Text(
                      "Height",
                      style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Height",
                        labelStyle: TextStyle(color: Colors.white70, fontSize: 19),
                        hintStyle: TextStyle(color: Colors.white70),
                      ),
                      keyboardType: TextInputType.number,
                      onChanged: (input) {
                        height = double.parse(input);
                      },
                      style: TextStyle(color: Colors.white70, fontSize: 20),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10,),

              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xff0F1E35),
                        borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Weight",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Container(
                      height: 180,
                      width: 180,
                      decoration: BoxDecoration(
                        color: Color(0xff0F1E35),
                        borderRadius: BorderRadius.circular(15), // Adjust the radius as needed
                      ),
                      child: Column(
                        children: [
                          Text(
                            "Age",
                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28, color: Colors.white),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                            ),
                          ),
                          Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                },
                                icon: Icon(
                                  Icons.remove,
                                  size: 50,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
SizedBox(height: 15,),
              TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.pink,

                ),
                  onPressed: (){
                    bmi_calculation();
                    Navigator.push(context, MaterialPageRoute(builder: (Context)=>Result_page(bmi_result: bmi.toString()
                ,)));
              },
                  child: Text("Calculate",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 23,color: Colors.white
                    )
                  ),
              ),
              SizedBox(height: 50,)

            ],
          ),
        ),
      ),
    );
  }
}
