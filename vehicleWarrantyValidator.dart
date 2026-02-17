void main() {
  int purchaseYear = 2022;
  int currentYear = DateTime.now().year;
  int warrantyPeriod = 3; // 3 years warranty

  bool isUnderWarranty = (currentYear - purchaseYear) <= warrantyPeriod;

  print('Purchase Year: $purchaseYear');
  print('Current Year: $currentYear');
  print('Warranty Status: ${isUnderWarranty ? "ACTIVE ✅" : "EXPIRED ❌"}');
}
