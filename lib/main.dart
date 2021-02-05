import 'package:flutter/material.dart';
import './data.dart';
import './widgets/geopolitical_barchart.dart';
import './widgets/map.dart';
import './widgets/piechart.dart';
import './widgets/state_chart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final data = new Data();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Text('CEN 414 Assignment'),
          Text('Ikedinachim Collins'),
          Text('17CJ022548')
        ]),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              'Access to basic water services by state',
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 30,
            ), //chart
            StateChart(data),
            Container(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 500,
              child: Map(data),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 500,
                  child: Column(
                    children: [
                      Text(
                        'Per Capita Share of Water by Geopolitical Zones \n (liters/person/day)',
                        style: TextStyle(fontSize: 20),
                      ),
                      GeopoliticalBarChart(data),
                    ],
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.45,
                  height: 600,
                  child: Column(
                    children: [
                      Text(
                        'Per capita Share of Water By Population\n Served',
                        style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      MyPieChart(data),
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("The information presented was obtained from:"),
                  Text(
                      ' Federal Ministry of Water Resources (FMWR), Government of Nigeria, National Bureau of data.statistics (NBS) and UNICEF',
                      style: TextStyle(
                          color: Colors.blue,
                          decoration: TextDecoration.underline)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
