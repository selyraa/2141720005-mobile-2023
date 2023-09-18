void main() {
  int index;

  for (index = 0; index < 27; index++) {
    if (index == 21) {
      break;
    } else if (index > 1 && index < 7) {
      continue;
    }
    print(index);
  }
  //   for (index = 10; index < 27; index++) {
  //   print(index);
  // }

  var listNum = [1, 2, 3, "dsds"];
  print(listNum);

  var constanList = const [
    1,
    2,
    3,
    "sdfs"
  ]; // tidak bisa mengubah nilai dari var constanta
  // constanList[1] = 9;
  print(constanList);
  constanList = [2,1,4,8];
  print(constanList);

  Set mhs = {"sely", 1, 4, 5};
  mhs.add("232");
  mhs.add(1);
  print(mhs);

  var gifts = {
    // Key:    Value
    'first': 'partridge',
    'second': 'turtledoves',
    'fifth': 1
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
  };

  print(gifts['four']); // akan null krn var four tidak ada pada maps
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  print(gifts.length);

  var list = [];
  var list2 = [0, ...?list];
  print(list2.length);

  var record = ('first', a: 2, b: true, 'last');
  print(record);
  // print(record.length);

  (int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}
}
