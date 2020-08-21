//docker page
// ignore: camel_case_types
import 'package:doku1/functions/function.dart';
import 'package:doku1/moniterpage/kubernatesmoniter.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
String pod_name;

// ignore: non_constant_identifier_names
String image_name;

// ignore: non_constant_identifier_names
String target_port;
String port;

// ignore: camel_case_types
class kubernates extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kubernates"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => kubernatesmoniter()),
                );
              },
            ),
          ],
        ),
        body: MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue1 = 'create';
  String dropdownValue1create = 'deployment';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            // color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.33,
            child: Column(
              children: <Widget>[
                DropdownButton<String>(
                  value: dropdownValue1,
                  icon: Icon(Icons.arrow_downward),
                  iconSize: 24,
                  elevation: 16,
                  style: TextStyle(color: Colors.deepPurple),
                  underline: Container(
                    height: 2,
                    color: Colors.deepPurpleAccent,
                  ),
                  onChanged: (String newValue) {
                    setState(() {
                      dropdownValue1 = newValue;
                    });
                  },
                  items: <String>[
                    'create',
                    'expose',
                    'run',
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                // ignore: sdk_version_ui_as_code
                if (dropdownValue1 == 'create')
                  DropdownButton<String>(
                    value: dropdownValue1create,
                    icon: Icon(Icons.arrow_downward),
                    iconSize: 24,
                    elevation: 16,
                    style: TextStyle(color: Colors.deepPurple),
                    underline: Container(
                      height: 2,
                      color: Colors.deepPurpleAccent,
                    ),
                    onChanged: (String newValue) {
                      setState(() {
                        dropdownValue1create = newValue;
                      });
                    },
                    items: <String>[
                      'deployment',
                      'namespace',
                      'secret',
                      'service'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                // ignore: sdk_version_ui_as_code
                if (dropdownValue1 == 'run')
                  TextField(
                    onChanged: (a) {
                      pod_name = a;
                    },
                    decoration: InputDecoration(hintText: "give name for pod"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dropdownValue1 == 'run')
                  TextField(
                    onChanged: (a) {
                      image_name = a;
                    },
                    decoration: InputDecoration(hintText: "give name of image"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dropdownValue1 == 'expose')
                  TextField(
                    onChanged: (a) {
                      pod_name = a;
                    },
                    decoration:
                        InputDecoration(hintText: "give name of running pod"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dropdownValue1 == 'expose')
                  TextField(
                    onChanged: (a) {
                      target_port = a;
                    },
                    decoration:
                        InputDecoration(hintText: "give target port no"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dropdownValue1 == 'expose')
                  TextField(
                    onChanged: (a) {
                      port = a;
                    },
                    decoration:
                        InputDecoration(hintText: "give internal port no"),
                    autocorrect: true,
                  ),
              ],
            )),
        Container(
          //color: Colors.yellow,
          child: SizedBox(
            width: 20,
            height: MediaQuery.of(context).size.height * 0.04,
          ),
        ),
        FlatButton(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.lightBlueAccent),
            height: MediaQuery.of(context).size.height * 0.14,
            //width: 100,
            // color: Colors.lightBlueAccent,
            child: Center(child: Text("submit")),
          ),
          onPressed: F1,
        ),
        Container(
          //color: Colors.grey.shade300,
          child: SizedBox(
              width: 20, height: MediaQuery.of(context).size.height * 0.04),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.3326,
          width: double.infinity,
          color: Colors.grey.shade300,
          child: SingleChildScrollView(
            child: Center(child: Text("""Output Box Scrollable
            s
            dd
            
            f
            g
            g
            f
            
            f
            d
            g
            d
            fdb
            df
            fe
            efg
            e
            gb
            s
            gb
            sgb
            sgb
            sdbsdg
            df
            bdg
            bds
            bg
            bfdb
            db
            gd
            gb
            gbg
            b""")),
          ),
        )
      ],
    );
  }
}
