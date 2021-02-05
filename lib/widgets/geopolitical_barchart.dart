import 'package:flutter/material.dart';
import '../data.dart';

class GeopoliticalBarChart extends StatelessWidget {
  final Data data;
  GeopoliticalBarChart(this.data);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: data.zones.length,
          itemBuilder: (ctx, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(data.zones[index].liters.toString()),
                SizedBox(
                  height: 10,
                ),
                Container(
                  margin: const EdgeInsets.all(15),
                  width: 50,
                  height: (data.zones[index].liters * 15).toDouble(),
                  color: index == 0 ? Colors.blue.shade900 : Colors.blue,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(data.zones[index].zone),
              ],
            );
          }),
    );
  }
}
