import 'dart:io';

void main() {
  print('====================================');
  print('   PIZZA ORDER CALCULATOR');
  print('====================================');
  print('Menu & Pricing:');
  print('  [S] Small  : \$5 USD');
  print('  [M] Medium : \$7 USD');
  print('  [L] Large  : \$10 USD');
  print('====================================\n');

  bool ordering = true;

  while (ordering) {
    stdout.write('Enter pizza size (Small/Medium/Large or S/M/L): ');
    String? sizeInput = stdin.readLineSync()?.trim().toLowerCase();

    int price = 0;
    String sizeName = '';

    // Switch case statement to set price based on pizza size
    switch (sizeInput) {
      case 'small':
      case 's':
        price = 5;
        sizeName = 'Small';
        break;
      case 'medium':
      case 'm':
        price = 7;
        sizeName = 'Medium';
        break;
      case 'large':
      case 'l':
        price = 10;
        sizeName = 'Large';
        break;
      default:
        print('Error: Invalid size entered. Please choose Small, Medium, or Large.\n');
        continue; // Restart the loop for invalid size input
    }

    stdout.write('Enter quantity: ');
    String? quantityInput = stdin.readLineSync()?.trim();
    int? quantity = int.tryParse(quantityInput ?? '');

    // Input validation for quantity
    if (quantity == null || quantity <= 0) {
      print('Error: Quantity must be a positive number.\n');
      continue; // Restart the loop for invalid quantity input
    }

    int totalPayment = price * quantity;

    print('\n------------------------------------');
    print('           ORDER SUMMARY            ');
    print('------------------------------------');
    print('Pizza Size    : $sizeName');
    print('Price per Item: \$$price USD');
    print('Quantity      : $quantity');
    print('Total Payment : \$$totalPayment USD');
    print('------------------------------------\n');

    stdout.write('Would you like to place another order? (yes/no): ');
    String? continueChoice = stdin.readLineSync()?.trim().toLowerCase();

    if (continueChoice != 'yes' && continueChoice != 'y') {
      ordering = false;
      print('\nThank you for ordering with us!');
    } else {
      print('\n');
    }
  }
}