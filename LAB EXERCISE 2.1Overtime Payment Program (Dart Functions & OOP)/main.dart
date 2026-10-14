import 'myLib.dart';

void main() {
  // Inputs configured to meet Expected Output ($5070.0 USD)
  Employee emp = Employee(
    name: 'John Doe',
    baseSalary: 4500.0,
    overtimeHours: 19.0,
    overtimeRate: 30.0,
  );

  double totalSalary = emp.calculateTotalSalary();

  print('Employee Name: ${emp.name}');
  print('Base Salary: \$${emp.baseSalary} USD');
  print('Overtime Hours: ${emp.overtimeHours}');
  print('Overtime Pay: \$${emp.calculateOvertimePay()} USD');
  print('Total Salary = \$${totalSalary.toStringAsFixed(1)} USD');
}