import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'components/file_info_card.dart';
import 'components/header.dart';
import 'components/my_fields.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(defaultPadding),
      child: SafeArea(
        child: Column(
          children: [
            Header(
              headerName: "Dashboard",
              userName: "Angelina Jolie",
            ),
            SizedBox(
              height: defaultPadding,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 5,
                  child: MyFields(),
                ),
                SizedBox(
                  width: defaultPadding,
                ),
                Expanded(
                  flex: 2,
                  child: StorageDetails(
                    pieChartSelectionData: pieChartSelectionData,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: defaultPadding,
            ),
            GridView.builder(
              shrinkWrap: true,
              itemCount: demoMyFiels.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing: defaultPadding,
              ),
              itemBuilder: (context, index) => FileInfoCard(
                info: demoMyFiels[index],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<PieChartSectionData> pieChartSelectionData = [
  PieChartSectionData(
    value: 35,
    radius: 25 * 1.0,
    showTitle: false,
    color: rosa,
  ),
  PieChartSectionData(
    value: 25,
    radius: 25 * 0.9,
    showTitle: false,
    color: amarelo,
  ),
  PieChartSectionData(
    value: 15,
    radius: 25 * 0.8,
    showTitle: false,
    color: azul,
  ),
  PieChartSectionData(
    value: 10,
    radius: 25 * 0.7,
    showTitle: false,
    color: verde,
  ),
  PieChartSectionData(
    value: 5,
    radius: 25 * 0.6,
    showTitle: false,
    color: vermelho,
  ),
];
