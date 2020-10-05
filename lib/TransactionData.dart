import 'package:share_for_healthier/FakeTransaction.dart';

class TransactionData {
  static final List<FakeTransaction> fakeDailyTransaction = [
    new FakeTransaction("202010010001", FakeCategory.Veggie, "120.03"),
    new FakeTransaction("202010010603", FakeCategory.Gym, "156.03"),
    new FakeTransaction("202010010802", FakeCategory.Fruit, "12.03"),
    new FakeTransaction("202010010918", FakeCategory.Veggie, "20.03"),
    new FakeTransaction("202010010001", FakeCategory.Gym, "120.03"),
    new FakeTransaction("20201002020", FakeCategory.Fruit, "20.00"),
  ];

  static final List<FakeTransaction> fakeMonthlyTransaction = [
    new FakeTransaction("202009010001", FakeCategory.Veggie, "120.03"),
    new FakeTransaction("202009050603", FakeCategory.Gym, "156.03"),
    new FakeTransaction("202009070802", FakeCategory.Fruit, "12.03"),
    new FakeTransaction("202009180918", FakeCategory.Veggie, "20.03"),
    new FakeTransaction("202009210001", FakeCategory.Gym, "120.03"),
    new FakeTransaction("202009282020", FakeCategory.Fruit, "20.00"),
  ];

  static final List<FakeTransaction> fakeYearlyTransaction = [
    new FakeTransaction("202001010001", FakeCategory.Veggie, "120.03"),
    new FakeTransaction("202002050603", FakeCategory.Gym, "156.03"),
    new FakeTransaction("202003070802", FakeCategory.Fruit, "12.03"),
    new FakeTransaction("202004180918", FakeCategory.Veggie, "20.03"),
    new FakeTransaction("2020509210001", FakeCategory.Gym, "120.03"),
    new FakeTransaction("202006282020", FakeCategory.Fruit, "20.00"),
  ];
}
