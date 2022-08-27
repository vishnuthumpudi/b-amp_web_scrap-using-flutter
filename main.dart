import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: darkBlue,
        ),
        debugShowCheckedModeBanner: true,
        home: HomePage());
  }
}

class HomePage extends StatefulWidget{
   const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor:Colors.deepOrange ,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Image(
              image: NetworkImage(
                  "data:image/png;base64,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"),
              height: 300,
              width: 4400,
            ),
            Text(
              "#1",
              style: TextStyle(
                fontSize: 60,
                color: Colors.orange,
              ),
            ),
            Text(
              "Home Page",
              style: TextStyle(
                fontSize: 40,
                color: Colors.black,
              ),
            ),
            Text(
              "ANTIMICROBIAL PEPTIDE REPOSITORY FOR BIOFILMS \n ",
              style: TextStyle(
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            ElevatedButton(
              child: const Text(
                'Get Started Here',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const FirstRoute()),
                );
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0)),
                primary: Colors.orange, // Background color
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FirstRoute extends StatelessWidget{
  const FirstRoute({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Colors.white,
      );
  }
}
