import 'package:flutter/material.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:share_for_healthier/FakeData.dart';

class GroupedStackedWeightPatternBarChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  GroupedStackedWeightPatternBarChart(this.seriesList, {this.animate});

  // factory GroupedStackedWeightPatternBarChart.withSampleData() {
  //   return new GroupedStackedWeightPatternBarChart(
  //     createSampleData(),
  //     // Disable animations for image tests.
  //     animate: true,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return new charts.BarChart(
      seriesList,
      animate: animate,
      // Configure the bar renderer in grouped stacked rendering mode with a
      // custom weight pattern.
      //
      // The first stack of bars in each group is configured to be twice as wide
      // as the second stack of bars in each group.
      defaultRenderer: new charts.BarRendererConfig(
        groupingType: charts.BarGroupingType.groupedStacked,
        weightPattern: [1, 1],
      ),
    );
  }

  /// Create series list with multiple series
  static List<charts.Series<FakeData, String>> createSampleData() {
    final fakeCustomerData = [
      new FakeData('Gym', 10),
      new FakeData('Veggie', 5),
      new FakeData('Fruit', 12),
      new FakeData('Carbon', 45),
    ];

    final fakeSuggestionData = [
      new FakeData('Gym', 15),
      new FakeData('Veggie', 25),
      new FakeData('Fruit', 10),
      new FakeData('Carbon', 35),
    ];

    return [
      new charts.Series<FakeData, String>(
        id: 'Gym',
        seriesCategory: 'My Expense',
        domainFn: (FakeData data, _) => data.category,
        measureFn: (FakeData data, _) => data.expense,
        data: fakeCustomerData,
      ),
      new charts.Series<FakeData, String>(
        id: 'Gym',
        seriesCategory: 'Suggestion',
        domainFn: (FakeData data, _) => data.category,
        measureFn: (FakeData data, _) => data.expense,
        data: fakeSuggestionData,
      ),
      new charts.Series<FakeData, String>(
        id: 'Veggie',
        seriesCategory: 'My Expense',
        domainFn: (FakeData data, _) => data.category,
        measureFn: (FakeData data, _) => data.expense,
        data: fakeCustomerData,
      ),
      new charts.Series<FakeData, String>(
        id: 'Veggie',
        seriesCategory: 'Suggestion',
        domainFn: (FakeData data, _) => data.category,
        measureFn: (FakeData data, _) => data.expense,
        data: fakeSuggestionData,
      ),
      new charts.Series<FakeData, String>(
        id: 'Fruit',
        seriesCategory: 'My Expense',
        domainFn: (FakeData data, _) => data.category,
        measureFn: (FakeData data, _) => data.expense,
        data: fakeCustomerData,
      ),
      new charts.Series<FakeData, String>(
        id: 'Fruit',
        seriesCategory: 'Suggestion',
        domainFn: (FakeData data, _) => data.category,
        measureFn: (FakeData data, _) => data.expense,
        data: fakeSuggestionData,
      ),
      new charts.Series<FakeData, String>(
        id: 'Carbon',
        seriesCategory: 'My Expense',
        domainFn: (FakeData data, _) => data.category,
        measureFn: (FakeData data, _) => data.expense,
        data: fakeCustomerData,
      ),
      new charts.Series<FakeData, String>(
        id: 'Carbon',
        seriesCategory: 'Suggestion',
        domainFn: (FakeData data, _) => data.category,
        measureFn: (FakeData data, _) => data.expense,
        data: fakeSuggestionData,
      ),
    ];
  }
}
