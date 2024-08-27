String kategoriNilai(int nilai) {
  if (nilai >= 85 && nilai <= 100) {
    return 'A';
  } else if (nilai >= 70 && nilai < 85) {
    return 'B';
  } else if (nilai >= 55 && nilai < 70) {
    return 'C';
  } else if (nilai >= 0 && nilai < 55) {
    return 'D';
  } else {
    return 'Input tidak valid';
  }
}
