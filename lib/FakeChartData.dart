import 'FakeData.dart';
import 'package:charts_flutter/flutter.dart' as charts;

class FakeChartData {
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
