import 'package:bmi_calculator/data_collection.dart';
import 'package:flutter/material.dart';
class First_page extends StatefulWidget {
  const First_page({super.key});

  @override
  State<First_page> createState() => _First_pageState();
}

class _First_pageState extends State<First_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color(0xffFCB714),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,

            children: [
              Text("BMI",
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50, color: Color(0xff0F1E35),),
              ),
              Text("Calculator",
                style: TextStyle(fontSize: 40,color: Color(0xff0F1E35)),
              ),
              Image(
                height: 150,
                width: 150,
                image: NetworkImage("https://cdn-icons-png.flaticon.com/512/10476/10476452.png"),
              ),
              SizedBox(height: 300,),

              TextButton(

                  style: TextButton.styleFrom(
                    backgroundColor: Colors.pink,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Data_collection()));
                  },
                  child: Text("START",
                    style: TextStyle(color: Colors.white,fontSize: 30),
                  )
              )


            ],
          ),
        ),
      ),
    );
  }
}
