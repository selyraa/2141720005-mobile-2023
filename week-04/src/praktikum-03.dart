void main() {
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

  var mhs1 = Map<String, String>();
  mhs1['first'] = 'partridge';
  mhs1['second'] = 'turtledoves';
  mhs1['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  mhs2[2] = 'helium';
  mhs2[10] = 'neon';
  mhs2[18] = 'argon';

  // print(gifts);
  // print(nobleGases);
  // print(mhs1);
  // print(mhs2);

  gifts['nama'] = 'Sely Ruli Amanda';
  gifts['NIM'] = '2141720004';
  nobleGases[0] = 'Sely Ruli Amanda';
  nobleGases[1] = '2141720005';
  mhs1['nama'] = 'Sely Ruli Amanda';
  mhs1['NIM'] = '2141720005';
  mhs2[0] = 'Sely Ruli Amanda';
  mhs2[1] = '2141720005';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}
