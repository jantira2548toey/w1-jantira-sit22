import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',
      routes:{
        '/' :(context) => const MyHomePage(),
        '/second' : (context) => const SeconPage()
      }
      ,
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(color: Colors.pink[50]),
              padding: EdgeInsets.all(30),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      "ข้อมูลส่วนตัว",
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w900,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        color: Colors.pink[200],
                        borderRadius: BorderRadius.circular(100),
                      ),
                      child: ClipOval(
                        child: Image.network(
                          "https://scontent.fbkk5-1.fna.fbcdn.net/v/t39.30808-6/487849031_2056391798162069_1909274992079965691_n.jpg?_nc_cat=109&ccb=1-7&_nc_sid=833d8c&_nc_ohc=6xfZMcCKrecQ7kNvwGCzC1M&_nc_oc=AdmuxXMLSM7uxCmNsE3rHSAJHQ7i1XWZIA-fCYwjs0GFcQxCjP9fTKrn0qNdYG0jsKQ&_nc_zt=23&_nc_ht=scontent.fbkk5-1.fna&_nc_gid=s2dmJxtlKKXdT2bW06s4xQ&oh=00_AfgLFbMYY-pNPJCqLIc3NESyf0an4xusSONTa4AG2G15cg&oe=6929D0B8",
                          width: 200,
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(
                      "Jantira  Chobdee",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Toey",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Jantira.Chobdee@e-tech.ac.th",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.pink[100],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Icon(Icons.phone, size: 40, color: Colors.pink),
                      ),
                      SizedBox(width: 18),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [Text("เบอร์"), Text("094-234-8352")]),

                    ],
                  ),
                  ElevatedButton(onPressed: () => Navigator.pushNamed(context, '/second'), child: Text("Change Page"),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.pink,
                    foregroundColor: Colors.white
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class SeconPage extends StatelessWidget{
  const SeconPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child: Text("Second Page"),),
    );
  }
}
