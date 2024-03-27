import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Configuration Settings',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ConfigurationScreen(),
    );
  }
}

class ConfigurationScreen extends StatefulWidget {
  @override
  _ConfigurationScreenState createState() => _ConfigurationScreenState();
}

class _ConfigurationScreenState extends State<ConfigurationScreen> {
  double latencyThreshold = 50.0; // Default latency threshold
  double bandwidthLimit = 10.0; // Default bandwidth limit
  String optimizationMode = 'Latency'; // Default optimization mode

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Configuration Settings'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Latency Threshold:',
              style: TextStyle(fontSize: 16.0),
            ),
            Slider(
              value: latencyThreshold,
              onChanged: (newValue) {
                setState(() {
                  latencyThreshold = newValue;
                });
              },
              min: 0.0,
              max: 100.0,
              divisions: 100,
              label: latencyThreshold.round().toString(),
            ),
            SizedBox(height: 20.0),
            Text(
              'Bandwidth Limit:',
              style: TextStyle(fontSize: 16.0),
            ),
            Slider(
              value: bandwidthLimit,
              onChanged: (newValue) {
                setState(() {
                  bandwidthLimit = newValue;
                });
              },
              min: 0.0,
              max: 20.0,
              divisions: 20,
              label: bandwidthLimit.round().toString(),
            ),
            SizedBox(height: 20.0),
            Text(
              'Optimization Mode:',
              style: TextStyle(fontSize: 16.0),
            ),
           DropdownButton<String>(
  value: optimizationMode,
  onChanged: (String? newValue) { // Change the parameter type to String?
    setState(() {
      optimizationMode = newValue!;
    });
  },
  items: <String>['Latency', 'Bandwidth']
      .map<DropdownMenuItem<String>>((String value) {
    return DropdownMenuItem<String>(
      value: value,
      child: Text(value),
    );
  }).toList(),
),

          ],
        ),
      ),
    );
  }
}
