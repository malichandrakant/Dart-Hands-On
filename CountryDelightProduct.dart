class CountryDelightProduct {
  String name;
  String category;
  double price;
  int quantity;

  CountryDelightProduct(this.name, this.category, this.price, this.quantity);

  // Method to display product details
  void displayProductDetails() {
    print("Product Name: $name");
    print("Category: $category");
    print("Price: \$${price.toStringAsFixed(2)}");
    print("Quantity: $quantity");
  }

  // Method to calculate total cost for the quantity
  double totalCost() {
    return price * quantity;
  }

  // Method to check if the produt is in stock
  bool isInStock() {
    return quantity > 0;
  }
}

void main() {
  CountryDelightProduct milk = CountryDelightProduct("Milk", "Dairy", 2.99, 10);
  milk.displayProductDetails();
  print("Total Cost: \$${milk.totalCost().toStringAsFixed(2)}");
  print("Is in stock: ${milk.isInStock()}");
}
