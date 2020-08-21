import 'package:doku1/functions/function.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class dockermoniter extends StatefulWidget {
  @override
  _dockermoniterState createState() => _dockermoniterState();
}

// ignore: camel_case_types
class _dockermoniterState extends State<dockermoniter> {
  //final ScrollController _mycontroller = new ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Moniter Docker"),
        ),
        body: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.220725,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.044145,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Center(
                              child: Text(
                            "Containers",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          )),
                          height: MediaQuery.of(context).size.height * 0.044145,
                          width: MediaQuery.of(context).size.width * 0.80,
                          color: Colors.pink,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          //color: Colors.black,
                          child: FlatButton(
                              onPressed: F1, child: Icon(Icons.refresh)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17658,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        //height: MediaQuery.of(context).size.height * 0.17658,
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Text(
                            """anythingnvafvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
                        vvvvv
                        vvvvvvvvvv
                        vvvvvvvv
                        vvvvv
                        v
                        cvc
                        c
                        c
                        c
                        c
                        c
                        c
                        c
                        c
                        cc
                        c
                        c
                        c
                        vvvvv
                        vvvvvvvvvvvvvvv
                        vvvvvvvvvvvv"""),
                      ),
                      //controller: _mycontroller,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.220725,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.044145,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Center(
                              child: Text(
                            "Image",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          )),
                          height: MediaQuery.of(context).size.height * 0.044145,
                          width: MediaQuery.of(context).size.width * 0.80,
                          color: Colors.pink,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          //color: Colors.black,
                          child: FlatButton(
                              onPressed: F1, child: Icon(Icons.refresh)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17658,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        //height: MediaQuery.of(context).size.height * 0.17658,
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Text(
                            """anythingnvafvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
                        vvvvv
                        vvvvvvvvvv
                        vvvvvvvv
                        vvvvv
                        v
                        cvc
                        c
                        c
                        c
                        c
                        c
                        c
                        c
                        c
                        cc
                        c
                        c
                        c
                        vvvvv
                        vvvvvvvvvvvvvvv
                        vvvvvvvvvvvv"""),
                      ),
                      //controller: _mycontroller,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.220725,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.044145,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Center(
                              child: Text(
                            "Network",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          )),
                          height: MediaQuery.of(context).size.height * 0.044145,
                          width: MediaQuery.of(context).size.width * 0.80,
                          color: Colors.pink,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          //color: Colors.black,
                          child: FlatButton(
                              onPressed: F1, child: Icon(Icons.refresh)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17658,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        //height: MediaQuery.of(context).size.height * 0.17658,
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Text(
                            """anythingnvafvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
                        vvvvv
                        vvvvvvvvvv
                        vvvvvvvv
                        vvvvv
                        v
                        cvc
                        c
                        c
                        c
                        c
                        c
                        c
                        c
                        c
                        cc
                        c
                        c
                        c
                        vvvvv
                        vvvvvvvvvvvvvvv
                        vvvvvvvvvvvv"""),
                      ),
                      //controller: _mycontroller,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.220725,
              width: double.infinity,
              color: Colors.red,
              child: Column(
                children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height * 0.044145,
                    width: double.infinity,
                    color: Colors.green,
                    child: Row(
                      children: <Widget>[
                        Container(
                          child: Center(
                              child: Text(
                            "Volume",
                            style: TextStyle(
                              fontSize: 28,
                            ),
                          )),
                          height: MediaQuery.of(context).size.height * 0.044145,
                          width: MediaQuery.of(context).size.width * 0.80,
                          color: Colors.pink,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.20,
                          //color: Colors.black,
                          child: FlatButton(
                              onPressed: F1, child: Icon(Icons.refresh)),
                        )
                      ],
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17658,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.vertical,
                      child: Container(
                        //height: MediaQuery.of(context).size.height * 0.17658,
                        width: double.infinity,
                        color: Colors.yellow,
                        child: Text(
                            """anythingnvafvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv
                        vvvvv
                        vvvvvvvvvv
                        vvvvvvvv
                        vvvvv
                        v
                        cvc
                        c
                        c
                        c
                        c
                        c
                        c
                        c
                        c
                        cc
                        c
                        c
                        c
                        vvvvv
                        vvvvvvvvvvvvvvv
                        vvvvvvvvvvvv"""),
                      ),
                      //controller: _mycontroller,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
