class Employee {
  String name;
  double baseSalary;
  double overtimeHours;
  double overtimeRate;

  Employee({
    required this.name,
    required this.baseSalary,
    required this.overtimeHours,
    required this.overtimeRate,
  });

  double calculateOvertimePay() {
    return overtimeHours * overtimeRate;
  }

  double calculateTotalSalary() {
    return baseSalary + calculateOvertimePay();
  }
}