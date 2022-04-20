import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My First App",textDirection: TextDirection.ltr),
        backgroundColor: Colors.orange,
      ),
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10),
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                'assets/image/doctor.jpeg'
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(vertical: 15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children:  [
              const  Text('Doctor',
                style: TextStyle(fontWeight: FontWeight.bold),
                ),
              const  SizedBox(height: 30),
                Row(
                  children: const [
                      Text('Available',textDirection: TextDirection.rtl,style: TextStyle(fontWeight: FontWeight.w900)),
               ],)
              ],
            ),
          ),
          Container(
            margin:const EdgeInsets.symmetric(horizontal: 50,vertical:10),
            height: 100,
            width: 100,
            padding: const EdgeInsets.all(10),
            decoration:const BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(
                  'assets/image/d.jpeg'

                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      
    );
  }
}