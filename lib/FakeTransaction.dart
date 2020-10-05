import 'package:share_for_healthier/FakeChartData.dart';

class FakeTransaction {
  final String date;
  final FakeCategory category;
  final String payment;

  FakeTransaction(this.date, this.category, this.payment);
}

enum FakeCategory { Veggie, Gym, Fruit, Carbon }

extension FakeCategoryIndex on FakeCategory {
  // Overload the [] getter to get the name of the fruit.
  operator [](String key) => (name) {
        switch (name) {
          case 'Veggie':
            return FakeCategory.Veggie;
          case 'Gym':
            return FakeCategory.Gym;
          case 'Fruit':
            return FakeCategory.Fruit;
          case 'Carbon':
            return FakeCategory.Carbon;
          default:
            throw RangeError("enum Fruit contains no value '$name'");
        }
      }(key);
}
