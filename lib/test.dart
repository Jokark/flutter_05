void main() {
  var e = Employee(name: 'Nguyen Van A', hour: 40, rate: 500000);
  print(e.gross());
  print(e.net());
}

class Employee {
  final String name;
  final double hour;
  final double rate;
  Employee({required this.name, required this.hour, required this.rate});
  double gross() {
    final salary = hour * rate;
    if (this.hour > 40) {
      final bonus = salary * 0.2;
      return salary + bonus;
    }
    return salary;
  }

  double net() {
    final grossSalary = gross();
    if (grossSalary > 10000000) {
      final tax = (grossSalary * 0.1);
      print(tax);
      return grossSalary - tax;
    }
    else if (grossSalary >= 7000000) {
      final tax = (grossSalary * 0.05);
      print(tax);
      return grossSalary - tax;
    }
    else {
      return grossSalary;
    }
  }
}