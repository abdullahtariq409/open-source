import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Performance Dashboard',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DashboardScreen(),
    );
  }
}

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Performance Overview'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Latency
            Row(
              children: [
                Text(
                  'Latency:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Latency Graph'),
              ],
            ),
            SizedBox(height: 10.0),
            // Bandwidth Usage
            Row(
              children: [
                Text(
                  'Bandwidth Usage:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Bandwidth Graph'),
              ],
            ),
            SizedBox(height: 10.0),
            // Optimization Status
            Row(
              children: [
                Text(
                  'Optimization Status:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Status Indicator'),
              ],
            ),
            SizedBox(height: 20.0),
            // Real-time Monitoring
            Text(
              'Real-time Monitoring',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            // Network Status
            Row(
              children: [
                Text(
                  'Network Status:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Network Status Indicator'),
              ],
            ),
            SizedBox(height: 10.0),
            // Latency Trends
            Row(
              children: [
                Text(
                  'Latency Trends:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Latency Trend Chart'),
              ],
            ),
            SizedBox(height: 10.0),
            // Bandwidth Trends
            Row(
              children: [
                Text(
                  'Bandwidth Trends:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text('Bandwidth Trend Chart'),
              ],
            ),
            SizedBox(height: 20.0),
            // Configuration Settings
            Text(
              'Configuration Settings',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            SizedBox(height: 10.0),
            // Latency Threshold Slider
            Row(
              children: [
                Text(
                  'Latency Threshold:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Expanded(
                  child: Slider(
                    value: 50,
                    min: 0,
                    max: 100,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            // Bandwidth Limit Slider
            Row(
              children: [
                Text(
                  'Bandwidth Limit:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Expanded(
                  child: Slider(
                    value: 10,
                    min: 0,
                    max: 20,
                    onChanged: (value) {},
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.0),
            // Optimization Mode Selector
            Row(
              children: [
                Text(
                  'Optimization Mode:',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                DropdownButton<String>(
                  value: 'Latency',
                  onChanged: (String? newValue) {},
                  items: <String>['Latency', 'Bandwidth']
                      .map<DropdownMenuItem<String>>(
                        (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        ),
                      )
                      .toList(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
