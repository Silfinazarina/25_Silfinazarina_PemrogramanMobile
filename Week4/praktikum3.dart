// EKSPERIMEN TIPE DATA MAPS

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

  //langkah 3
  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';

  //penambahan nilai nim nama
  gifts['six'] = '2241720054';
  gifts['seven'] = 'Silfi Nazarina';
  nobleGases[20] = '2241720054';  
  nobleGases[22] = 'Silfi Nazarina';  
  mhs1['nim'] = '2241720054';
  mhs1['name'] = 'Silfi Nazarina';
  mhs2[2] = '2241720054';
  mhs2[5] = 'Silfi Nazarina';

  print(gifts);
  print(nobleGases);
  print(mhs1);
  print(mhs2);
}