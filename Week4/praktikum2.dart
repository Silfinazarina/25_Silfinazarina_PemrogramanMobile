// EKSPERIMEN TIPE DATA SET

void main() {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);

  //langkah 3
  var names1 = <String>{};    //deklarasi set kosong bertipe String saja
  Set<String> names2 = {};    //deklarasi set kosong bertipe String saja

  names1.add('Silfi Nazarina');
  names1.add('2241720054');
  names2.addAll(['Silfi Nazarina', '2241720054']);

  print(names1);
  print(names2);

  //Set menyimpan elemen unik, sedangkan Map menyimpan pasangan key-value.
}
