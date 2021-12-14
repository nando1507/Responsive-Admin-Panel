import 'package:admin/constants.dart';
import 'package:admin/models/MyFiles.dart';
import 'package:admin/models/RecentFile.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'components/file_info_card.dart';
import 'components/grid_view_files.dart';
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
                  child: Column(
                    children: [
                      MyFields(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      GridViewFiles(),
                      SizedBox(
                        height: defaultPadding,
                      ),
                      Container(
                        padding: EdgeInsets.all(
                          defaultPadding,
                        ),
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
                              "Recent Files",
                              style: Theme.of(context).textTheme.subtitle1,
                            ),
                            SizedBox(
                              width: double.infinity,
                              child: DataTable(
                                columns: [
                                  DataColumn(
                                    label: Text("File Name"),
                                  ),
                                  DataColumn(
                                    label: Text("Date"),
                                  ),
                                  DataColumn(
                                    label: Text("Size"),
                                  ),
                                ],
                                rows: [
                                  DataRow(
                                    cells: [
                                      DataCell(
                                        Row(
                                          children: [
                                            SvgPicture.asset(
                                              demoRecentFiles[0].icon,
                                              height: 30,
                                              width: 30,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                                              child: Text(demoRecentFiles[0].title),
                                            )
                                          ],
                                        ),
                                      ),
                                      DataCell(
                                        Text(demoRecentFiles[0].date),
                                      ),
                                      DataCell(
                                        Text(demoRecentFiles[0].size),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
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
