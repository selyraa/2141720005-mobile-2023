void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  var names1 = <String>{};
  Set<String> names2 = {}; // This works, too.

  print('\nLangkah 3');
  print('---------------------');
  names1.add('Sely Ruli Amanda');
  names2.add('2141720005');
  names1.addAll(names2);
  names1.addAll(halogens);
  names2.addAll(names1);
  names2.addAll(halogens);
  
  print(names1);
  print(names2);
}