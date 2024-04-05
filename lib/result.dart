import 'package:flutter/material.dart';
class Result_page extends StatefulWidget {
  //const Result_page({super.key});

  String bmi_result;
  Result_page({required this.bmi_result});

  @override
  State<Result_page> createState() => _Result_pageState();
}

class _Result_pageState extends State<Result_page> {
  String result = '';
  String advice ='';

  late Color color;

  condition(){
    if(double.parse(widget.bmi_result) < 18.5){
      setState(() {
      result = 'Underweight';
      advice ='Consult a Doctor';
      color= Colors.yellow;
      });
    }
    else if(double.parse(widget.bmi_result) > 18.5 && double.parse(widget.bmi_result) < 24.9){
      setState(() {
        result = 'Normal weight ';
        advice ='Perfect!You are fit';
        color= Colors.blue;
      });
    }
    else if(double.parse(widget.bmi_result) > 25 ){
      setState(() {
        result = 'Overweight';
        advice ='Balanced Diet';
        color= Colors.cyanAccent;
      });
    }
  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    condition();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFCB714),
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
          height:MediaQuery.of(context).size.height ,
          width: MediaQuery.of(context).size.width,
          color: Color(0xffA1DAF5),
          child: Column(
            children: [
              SizedBox(height: 15,),
              Text("Your Result",
              style: TextStyle(fontSize: 40,color: Colors.pink,fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 45,),
              Container(
                height: 400,
                width: 350,
                padding: EdgeInsets.all(20), // Set padding for all sides
                decoration: BoxDecoration(
                  color: Color(0xff0F1E35),
                  borderRadius: BorderRadius.circular(20), // Set border radius for rounded corners
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(result ,
                    style: TextStyle(
                    color: color,fontWeight: FontWeight.bold,fontSize: 40,
                    ),
                    ),
                    Text(widget.bmi_result,
                      style: TextStyle(
                          color: Colors.white70,fontWeight: FontWeight.bold,fontSize: 30
                      ),
                    ),
                    Text(advice,
                      style: TextStyle(
                          color: color,fontWeight: FontWeight.bold,fontSize: 35
                      ),
                    ),
                  ],
                ),
              ),
SizedBox(height: 40,),
              TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.pink
                ),
                  onPressed: (){
                    Navigator.pop(context);

                  },
                  child: Text("Re-Calculate",
                  style: TextStyle(
                    fontSize: 23,color: Colors.white,fontWeight: FontWeight.bold
                  ),
                  ),

        )

            ],
          ),
        ),
      ),
    );
  }
}
