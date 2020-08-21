import 'package:http/http.dart' as http;

// ignore: non_constant_identifier_names
F1() {
  print("Whatevera");
}

// ignore: non_constant_identifier_names
dockerpullimage({String docker_image, int ip_address}) async {
  var url =
      // ignore: unnecessary_brace_in_string_interps
      "http://$ip_address/cgi-bin/dockerpull.py?docker_image_image_name=$docker_image";
  var response = await http.get(url);
  var body = response.body;
  print(body);
}
