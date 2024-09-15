import 'package:http/http.dart' as http;
import 'dart:convert';

class ThreatDetectionService {
  Future<String> checkNetworkForThreat(List<String> networkActivity) async {
    final response = await http.post(
      Uri.parse('http://localhost:3000/checkThreat'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, dynamic>{
        'networkActivity': networkActivity,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body)['status'];
    } else {
      throw Exception('Failed to detect threats');
    }
  }
}
