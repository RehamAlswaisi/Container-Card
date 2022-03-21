import 'package:flutter/material.dart';

 // Widget
 // 1- Specific like Text Image.asset Image.network and Etc
 // 2- Child : Card Container SizeBox And Etc
 // 3- Children // Column Row Stack Listview GridView
 // 4- Scaffold MaterialApp

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Homelayout(),
  ));
}

class Homelayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween, بتخلي المسافة بين الودجت متساوية
        //mainAxisAlignment: MainAxisAlignment.spaceAround,
        //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //crossAxisAlignment: CrossAxisAlignment.start, هتيجي بالبداية
        children: [
        Text('RehamAlswaisi'),
          Text('RehamAlswaisi'),
          Card(
            color: Colors.purple,
            elevation: 200, // الظل
            //shape: Border.all(color: Colors.pinkAccent , width: 5),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
                side: const BorderSide(color: Colors.purpleAccent,width: 1)
            ),
            shadowColor: Colors.pink,
            child: const Text(
              'RehamAlswaisi',
              style: TextStyle(fontSize: 20),
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 200,
            padding: const EdgeInsets.only(right: 10),
            //padding: const EdgeInsets.all(20),
            //padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            //padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
            margin: const EdgeInsets.all(20),
            //margin: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),
            //margin: const EdgeInsets.only(left: 10,right: 10,top: 10),
            //margin: const EdgeInsets.fromLTRB(10, 20, 20, 10),
            decoration: BoxDecoration(
                color: Colors.purple,
                border: Border.all(color: Colors.purpleAccent, width: 5),
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.purpleAccent,
                    spreadRadius: 0,
                    blurRadius: 20,
                  ),
                ],
                image: const DecorationImage(
                  //fit: BoxFit.cover,
                  // fit: BoxFit.fill,
                    image: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTj81GwgF8X976fDyBsNsTfZbG1Qk-Ad27AJA&usqp=CAU"))),
            child: const Text(
              'Reham Alswaisi',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5.0, //المسافة بين الأحرف
                  wordSpacing: 5.0, // المسافة بين الكلمات
                  // decoration: TextDecoration.lineThrough, // حتى نعمل خط على الكلمة
                  //decoration: TextDecoration.overline, // حتى نعمل خط فوق الكلمة
                  decoration: TextDecoration.underline, // حتى نعمل خط تحت الكلمة
                  shadows: [
                    Shadow(
                        color: Colors.black,
                        blurRadius: 10.0, // الظل
                        offset: Offset(20, 20) )  // الاتجاه
                  ]
              ),
            ),
          ),
      ],
      ),
    );
  }
}
