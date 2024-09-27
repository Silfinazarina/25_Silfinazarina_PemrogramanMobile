//EKSPERIMEN TIPE DATA LIST: SPREAD & CONTROL-FLOW OPERATOR

void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];   //sebarakan semua elemen dari list ke list2
  print(list);
  print(list2);
  print(list2.length);

//penambahan kode langkah 3
  var list1 = [1, 2, null];     //deklarasikan list1 
  print(list1);
  var list3 = [0, ...list1];   //sebarkan elemen dari list1 ke list3 jika list1 tidak null.
  print(list3.length);
  
  var nim = [2241720054];
  list = [...list, ...nim];   //menambahkan nim 
  print(list);

//penambahan kode langkah 4
  var promoActive = false;   //inisialisasi false
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print(nav);

//penambahan kode langkah 5
  var login = 'Staff';    //perubahan kondisi
  var nav2 = ['Home', 'Furniture', 'Plants', if (login case 'Manager') 'Inventory'];
  print(nav2);

//penambahan kode langkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}