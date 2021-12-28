import 'package:admin/constants.dart';
import 'package:admin/responsive.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'components/grid_view_files.dart';
import 'components/header.dart';
import 'components/my_fields.dart';
import 'components/recent_files.dart';
import 'components/storage_details.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;

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
                      // if (Responsive.isMobile(context))
                      SizedBox(
                        height: defaultPadding,
                        width: defaultPadding,
                      ),
                      //if (Responsive.isMobile(context))
                      Responsive(
                        mobile: GridViewFiles(
                          crossAxisCount: _size.width < 650 ? 2 : 4,
                          childAspectRatio: _size.width < 650 && _size.width > 350 ? 1.3 : 1,
                        ),
                        tablet: GridViewFiles(
                          crossAxisCount: 4,
                          childAspectRatio: 1.4,
                        ),
                        desktop: GridViewFiles(
                          crossAxisCount: 4,
                          childAspectRatio: _size.width < 1400 ? 1.1 : 1.4,
                        ),
                      ),
                      SizedBox(
                        height: defaultPadding,
                        width: defaultPadding,
                      ),
                      if (Responsive.isMobile(context)) RecentFiles(),
                      if (Responsive.isMobile(context))
                        SizedBox(
                          height: defaultPadding,
                          width: defaultPadding,
                        ),
                      if (Responsive.isMobile(context)) StorageDetails(pieChartSelectionData: pieChartSelectionData),
                    ],
                  ),
                ),
                if (!Responsive.isMobile(context))
                  SizedBox(
                    height: defaultPadding,
                    width: defaultPadding,
                  ),
                if (!Responsive.isMobile(context))
                  Expanded(
                    flex: 2,
                    child: StorageDetails(pieChartSelectionData: pieChartSelectionData),
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
    radius: 25 * 0.95,
    showTitle: false,
    color: amarelo,
  ),
  PieChartSectionData(
    value: 15,
    radius: 25 * 0.90,
    showTitle: false,
    color: azul,
  ),
  PieChartSectionData(
    value: 10,
    radius: 25 * 0.85,
    showTitle: false,
    color: verde,
  ),
  PieChartSectionData(
    value: 5,
    radius: 25 * 0.80,
    showTitle: false,
    color: vermelho,
  ),
];
