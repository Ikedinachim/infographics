import 'package:flutter/material.dart';
import '../data.dart';

class StateChart extends StatelessWidget {
  final Data data;
  StateChart(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      //alignment: Alignment.center,
      width: double.infinity,
      padding: const EdgeInsets.only(left: 32),
      height: MediaQuery.of(context).size.height * 0.7,
      child: ListView.builder(
          itemCount: data.statistics.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (ctx, index) {
            return Column(
              children: [
                Text(data.statistics[index].percentage.toString() + '%'),
                SizedBox(
                  height: 10,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  //textDirection: TextDirection.rtl,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(10)),
                      width: 15,
                      height: 300,
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(10)),
                      width: 15,
                      height:
                          (data.statistics[index].percentage * 3).toDouble(),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                RotatedBox(
                  quarterTurns: -1,
                  child: Text(data.statistics[index].state),
                )
              ],
            );
          }),
    );
  }
}
