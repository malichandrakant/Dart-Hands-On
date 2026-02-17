void main() {
  List<String> inventory = [
    'Brake Pads',
    'Oil Filter',
    'Wiper Blades',
    'Spark Plug',
  ];
  String searchItem = 'oil filter';

  // Case-insensitive search
  var found = inventory.where(
    (item) => item.toLowerCase().contains(searchItem.toLowerCase()),
  );

  if (found.isNotEmpty) {
    print('Item Found: ${found.first}');
  } else {
    print('Error: Item not in stock.');
  }
}
