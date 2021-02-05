import 'package:flutter/material.dart';
import '../data.dart';
import 'package:syncfusion_flutter_maps/maps.dart';

class Map extends StatelessWidget {
  final Data data;
  Map(this.data);
  @override
  Widget build(BuildContext context) {
    return SfMaps(
      layers: [
        MapShapeLayer(
          source: MapShapeSource.asset(
            "assets/nigeria.json",
            shapeDataField: "state",
            dataCount: data.statistics.length,
            bubbleColorValueMapper: (index) => Colors.blue
                .withOpacity(data.statistics[index].percentage / 100),
            dataLabelMapper: (index) => data.statistics[index].state,
            primaryValueMapper: (index) => data.statistics[index].state,
            bubbleColorMappers: [
              MapColorMapper(from: 0, to: 100, color: Colors.red),
              MapColorMapper(from: 101, to: 300, color: Colors.yellow)
            ],
            shapeColorValueMapper: (index) => Colors.blue.withOpacity(
                (data.statistics[index].percentage / 100).toDouble()),
          ),
          showDataLabels: true,
          // bubbleTooltipBuilder: (ctx, index) {
          //   return Container(
          //     child: Text(
          //         '${data.statistics[index].percentage}% of people\n have access to water'),
          //   );
          // },
          bubbleSettings: MapBubbleSettings(color: Colors.grey, minRadius: 40),
          tooltipSettings: MapTooltipSettings(
              color: Colors.grey[700],
              strokeColor: Colors.white,
              strokeWidth: 2),
          strokeColor: Colors.white,
          // markerTooltipBuilder: (ctx, index) {
          //   return Container(
          //     child: Text(
          //         '${data.statistics[index].percentage}% of people\n have access to water'),
          //   );
          // },
          shapeTooltipBuilder: (ctx, index) {
            return Container(
              padding: const EdgeInsets.all(5),
              child: Text(
                  '${data.statistics[index].percentage}% of people\n have access to water'),
            );
          },
          strokeWidth: 0.5,
          dataLabelSettings: MapDataLabelSettings(
              textStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: Theme.of(context).textTheme.caption.fontSize)),
        ),
      ],
    );
  }
}
