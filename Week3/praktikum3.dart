void main() {
  int index;
  for (index = 10; index < 27; index++) {
    print(index);

    // Penambahan kode langkah 3
    if (index == 21) {
      break; // Berhenti saat index sama dengan 21
    } else if (index > 1 || index < 7) {
      continue; // Lewati iterasi jika index > 1 atau < 7
    }

    print(index);
  }
}
