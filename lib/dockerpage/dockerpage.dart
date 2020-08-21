//docker page
// ignore: camel_case_types
// ignore: avoid_web_libraries_in_flutter
//import 'dart:html';

import 'package:doku1/functions/function.dart';
import 'package:doku1/moniterpage/dockermoniter.dart';
import 'package:flutter/material.dart';

import '../main.dart';

// ignore: non_constant_identifier_names
String docker_container_os_name;
// ignore: non_constant_identifier_names
String docker_container_image_name;
// ignore: non_constant_identifier_names
String docker_container_new_os_name;
// ignore: non_constant_identifier_names
String docker_image_image_name;
// ignore: non_constant_identifier_names
String volume_name;
// ignore: non_constant_identifier_names
String network_name;

// ignore: camel_case_types
class docker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Docker"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dockermoniter()),
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
  String dockermanagementcmd = 'container';
  String dockercontaineroption = 'run';
  String dockernetworkoption = 'create';
  String dockervolumeoption = 'create';
  String dockerimageoption = 'pull';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
            //color: Colors.red,
            height: MediaQuery.of(context).size.height * 0.33,
            child: Column(
              children: <Widget>[
                DropdownButton<String>(
                  value: dockermanagementcmd,
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
                      dockermanagementcmd = newValue;
                    });
                  },
                  items: <String>['container', 'image', 'network', 'volume']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container')
                  DropdownButton<String>(
                    value: dockercontaineroption,
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
                        dockercontaineroption = newValue;
                      });
                    },
                    items: <String>[
                      'run',
                      'rm',
                      'start',
                      'stop',
                      'restart',
                      'kill',
                      'pause',
                      'unpause',
                      'rename'
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'run')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'run')
                  TextField(
                    onChanged: (b) {
                      docker_container_image_name = b;
                    },
                    decoration: InputDecoration(
                        hintText: "Image Name With Version eg. centos:latest"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'rm')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'start')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'stop')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'rename')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration:
                        InputDecoration(hintText: "Old Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'rename')
                  TextField(
                    onChanged: (a) {
                      docker_container_new_os_name = a;
                    },
                    decoration:
                        InputDecoration(hintText: "New Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'restart')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'kill')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'pause')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'container' &&
                    dockercontaineroption == 'unpause')
                  TextField(
                    onChanged: (a) {
                      docker_container_os_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Container"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'network')
                  DropdownButton<String>(
                    value: dockernetworkoption,
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
                        dockernetworkoption = newValue;
                      });
                    },
                    items: <String>['create', 'rm']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'network' &&
                    dockernetworkoption == 'create')
                  TextField(
                    onChanged: (a) {
                      network_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for Network"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'network' &&
                    dockernetworkoption == 'rm')
                  TextField(
                    onChanged: (a) {
                      network_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name of Network"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'volume')
                  DropdownButton<String>(
                    value: dockervolumeoption,
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
                        dockervolumeoption = newValue;
                      });
                    },
                    items: <String>[
                      'create',
                      'rm',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'volume' &&
                    dockervolumeoption == 'create')
                  TextField(
                    onChanged: (a) {
                      volume_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name for volume"),
                    autocorrect: true,
                  ),
                // ignore: sdk_version_ui_as_code
                if (dockermanagementcmd == 'volume' &&
                    dockervolumeoption == 'rm')
                  TextField(
                    onChanged: (a) {
                      volume_name = a;
                    },
                    decoration: InputDecoration(hintText: "Name of volume"),
                    autocorrect: true,
                  ),
                if (dockermanagementcmd == 'image')
                  DropdownButton<String>(
                    value: dockerimageoption,
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
                        dockerimageoption = newValue;
                      });
                    },
                    items: <String>['pull', 'rm', 'push']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                if (dockermanagementcmd == 'image' &&
                    dockerimageoption == 'pull')
                  TextField(
                    onChanged: (a) {
                      docker_image_image_name = a;
                    },
                    decoration:
                        InputDecoration(hintText: "Name of image to pull"),
                    autocorrect: true,
                  ),
                if (dockermanagementcmd == 'image' && dockerimageoption == 'rm')
                  TextField(
                    onChanged: (a) {
                      docker_image_image_name = a;
                    },
                    decoration:
                        InputDecoration(hintText: "Name of image to remove"),
                    autocorrect: true,
                  ),
                if (dockermanagementcmd == 'image' &&
                    dockerimageoption == 'push')
                  TextField(
                    onChanged: (a) {
                      docker_image_image_name = a;
                    },
                    decoration: InputDecoration(
                        hintText: "Name of image to push(Proper Name)"),
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
              //color: Colors.lightBlueAccent,
              child: Center(child: Text("submit")),
            ),
            onPressed: () {
              dockerpullimage(
                  docker_image: docker_container_image_name,
                  ip_address: ip_address);
            }),
        Container(
          //color: Colors.green,
          child: SizedBox(
              width: 20, height: MediaQuery.of(context).size.height * 0.04),
        ),
        Container(
          height: MediaQuery.of(context).size.height * 0.3326,
          width: double.infinity,
          color: Colors.grey.shade300,
          child: SingleChildScrollView(
            child: Center(child: Text("""Output Box Scrollable
            xxxx
            xxx
            xxx
            x
            x
            xxx
            x
            x
            x
            x
            x
            x
            x
            x
            xx
            x
            xx
            
            xx
            x
            x
            x
            x
            x
            xx
            x
            x
            x
            x
            x""")),
          ), /*Center(child: Text("Output Box Scrollable"))*/
        )
      ],
    );
  }
}
