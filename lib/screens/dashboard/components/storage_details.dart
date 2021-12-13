import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';
import 'chart.dart';
import 'storage_info_card.dart';

class StorageDetails extends StatelessWidget {
  final List<PieChartSectionData> pieChartSelectionData;

  const StorageDetails({
    Key key,
    @required this.pieChartSelectionData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(defaultPadding),
      //height: 500,
      decoration: BoxDecoration(
        color: secondaryColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Storage Details",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(
            height: defaultPadding,
          ),
          Chart(
            pieChartSelectionData: pieChartSelectionData,
          ),
          StorageInfoCard(
            title: "Documents Files",
            numOfFiles: 1329,
            amountOfFIles: "1.3GB",
            svgSrc: documents,
          ),
          StorageInfoCard(
            title: "Media Files",
            numOfFiles: 1329,
            amountOfFIles: "15.7GB",
            svgSrc: media,
          ),
          StorageInfoCard(
            title: "Other Files",
            numOfFiles: 1329,
            amountOfFIles: "1.3GB",
            svgSrc: folder,
          ),
          StorageInfoCard(
            title: "Unknown",
            numOfFiles: 140,
            amountOfFIles: "1.3GB",
            svgSrc: unknown,
          ),
        ],
      ),
    );
  }
}
