import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter Demo Home Page'),
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
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: Color.fromRGBO(238, 0, 67, 1)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 200,
            width: 500,
            padding: const EdgeInsets.all(10.0),
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(300),
                    bottomRight: Radius.circular(300)),
                color: Color.fromRGBO(238, 255, 255, 1)),
            child: SizedBox(
              height: 200,
              width: 500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "AppWrite",
                    style: TextStyle(
                        color: Color.fromRGBO(238, 0, 67, 1),
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Email",
                      fillColor: Color.fromARGB(179, 236, 234, 234),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      filled: true,
                      hintStyle: TextStyle(color: Colors.grey[800]),
                      hintText: "Password",
                      fillColor: Color.fromARGB(179, 236, 234, 234),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      const Text(
                        "Remember me",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                          shape: const RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30))
                          ),
                          backgroundColor: const Color.fromRGBO(238, 0, 67, 1)),
                      child: SizedBox(
                          width: MediaQuery.of(context).size.width * .8,
                          height: 60,
                          child: const Center(
                              child: Text(
                            "Log in",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 22,
                            ),
                          )))),
                          const SizedBox(height: 10,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text("Don't have an account?",style: TextStyle(fontSize:18),),
                              TextButton(onPressed: (){}, child: const Text("Sign Up",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold,color:Colors.black)))
                            ],
                          )
                ],
              ),
            ),
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
