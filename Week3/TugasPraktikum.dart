  // Function untuk memeriksa bilangan prima
  bool isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= number / 2; i++) {
      if (number % i == 0) return false;
    }
    return true;
  }
 
void main() {
  String name = "Silfi Nazarina",
         nim = "2241720054";

// Loop untuk memeriksa bilangan dari 0 hingga 201
  for (int i = 0; i <= 201; i++) {
    if (isPrime(i)) {
      print("Bilangan prima: $i");
      print("Ditemukan oleh: $name ($nim)");
      print("");
    }
  }
}