import 'package:flutter/material.dart';
import 'services/threat_detection.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ThreatDetectionService _threatDetection = ThreatDetectionService();
  List<String> threatLogs = [];
  String status = 'Monitoring...';

  @override
  void initState() {
    super.initState();
    _detectThreats();
  }

  Future<void> _detectThreats() async {
    List<String> networkActivity = ['example_activity']; // Mock data
    String threatStatus = await _threatDetection.checkNetworkForThreat(networkActivity);
    
    setState(() {
      threatLogs.add(threatStatus);
      status = threatStatus;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anti Pegasus App'),
      ),
      body: Column(
        children: [
          Text(status, style: TextStyle(fontSize: 24, color: status == 'THREAT DETECTED' ? Colors.red : Colors.green)),
          Expanded(
            child: ListView.builder(
              itemCount: threatLogs.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(threatLogs[index]),
                  leading: Icon(
                    threatLogs[index] == 'THREAT DETECTED' ? Icons.warning : Icons.check_circle,
                    color: threatLogs[index] == 'THREAT DETECTED' ? Colors.red : Colors.green,
                  ),
                );
              },
            ),
          ),
          ElevatedButton(
            onPressed: () {
              // Add isolate device functionality
            },
            child: Text('Isolate Device'),
          ),
        ],
      ),
    );
  }
}
