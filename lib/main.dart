import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // primarySwatch: Colors.teal,
        fontFamily: 'Futura',
        primaryColor: Colors.white,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBar(),
    );
  }

  PreferredSize _appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(150),
      child: Container(
        decoration: _boxDecoration(),
        child: SafeArea(
          child: Column(
            children: [
              _topBar(),
              SizedBox(height: 5),
              // _topicBar(),
              // _tabBar(),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _boxDecoration() {
    return BoxDecoration(
        borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 10,
            offset: Offset(0, 3),
          ),
        ]);
  }

  Widget _topBar() {
    return Container(
      margin: EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Kumusta,',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.normal,
                  )),
              Text('Lain Ysabel',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              Text('Ready to Learn FSL Today?',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(222, 165, 83, 1))),
            ],
          ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/image3.png'),
          ),
        ],
      ),
    );
  }
}
