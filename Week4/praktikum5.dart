//EKSPERIMEN TIPE DATA RECORDS

//menukar nilai a dan b
(String, int, bool, String) tukar((String, bool, int, String) record) {
  var (first, a, b, last) = record;
  // Menukar nilai a dan b
  return (first, b, a, last);
}

void main() {
  // Record dengan elemen a dan b yang akan ditukar (tanpa label)
  var record = ('first', true, 2, 'last');
  
  print('Sebelum ke fungsi tukar: $record');
  
  // Menukar a dan b
  var result = tukar(record);
  print('Setelah tukar: $result');

  // Langkah 4
  // Record type annotation in a variable declaration:
  (String, int) mahasiswa = ('Silfi Nazarina', 2241720054); //perbaikan
  print(mahasiswa);

  var mahasiswa2 = ('first', 'Silfi Nazarina', '2241720054', 'last');

  //langkah 5
  print(mahasiswa2.$1); // Prints 'first'
  print(mahasiswa2.$2); // Prints 2
  print(mahasiswa2.$3); // Prints true
  print(mahasiswa2.$4); // Prints 'last'
}

