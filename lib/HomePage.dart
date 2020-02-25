import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


class _HomePageState extends State<HomePage> {
  @override

  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void doAdd(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void doSub(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void doMul(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void doDiv(){
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void doClear(){
    setState(() {
      t1.text = "";
      t2.text = "";
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(

      appBar: new AppBar(

        title: new Text("Calculator"),
      ),

      body: new Container(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            new Text("OUTPUT : $sum",
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.purple,
                  fontWeight: FontWeight.bold,
              ),
            ),
            
            new Padding(
                padding: const EdgeInsets.only(top: 30)
            ),

            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter Number 1"
              ),
              controller: t1,
            ),

            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(

                  hintText: "Enter Number 2"
              ),
              controller: t2,
            ),

            new Padding(
                padding: const EdgeInsets.only(top: 20)
            ),

            new Row(

              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(

                  height: 40,
                  minWidth: 100,
                  child: Text("+", style: TextStyle(fontSize: 21),),
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  onPressed: doAdd,
                ),

                new MaterialButton(

                  height: 40,
                  minWidth: 100,
                  child: Text("-", style: TextStyle(fontSize: 21),),
                  color: Colors.redAccent,
                  textColor: Colors.white,
                  onPressed: doSub,
                ),
              ],
            ),

            new Padding(
                padding: const EdgeInsets.only(top: 20)
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(

                  height: 40,
                  minWidth: 100,
                  child: Text("*", style: TextStyle(fontSize: 21),),
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  onPressed: doMul,
                ),

                new MaterialButton(

                  height: 40,
                  minWidth: 100,
                  child: Text("/", style: TextStyle(fontSize: 21),),
                  textColor: Colors.white,
                  color: Colors.redAccent,
                  onPressed: doDiv,
                ),

              ],
            ),

            new Padding(
                padding: const EdgeInsets.only(top: 20)
            ),

            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(

                  height: 40,
                  minWidth: 245,
                  child: Text("Clear",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  color: Colors.redAccent,
                  onPressed: doClear,

                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
