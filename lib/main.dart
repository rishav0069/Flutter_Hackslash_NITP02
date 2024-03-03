import 'package:flutter/material.dart';
import 'package:login_page/HomePage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.blueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('facebook',style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),),
             Container(
                height: 50,
                width: 380,
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('phone number,e-mail or username',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20,
                              color: Colors.grey
                          ),),
                        filled: true,
                        fillColor: Colors.white,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5)
                        ),
                    )
                ),
              ),
            Container(
                height: 50,
                width: 380,
                child: TextField(
                    decoration: InputDecoration(
                        label: Text('password',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: Colors.grey,
                        ),),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5)
                      )
                    )
                ),
              ),
            Container(
              height: 60,
              width: 300,
              color: Colors.lightBlue,
              child: TextButton(onPressed: (){
              },
                  child: Text('Log In')),
            ),
                  Padding(
                    padding: const EdgeInsets.only(top: 150),
                    child: TextButton(onPressed: (){},
                        child: Text('Sign Up for facebook',style: TextStyle(
                        color: Colors.white
                    ),) ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top:15),
                    child: TextButton(onPressed: (){},
                         child: Text('Need Help?',style: TextStyle(
                          color: Colors.white
                                    ),) ),
                  )
          ],
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
