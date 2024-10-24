
void main() {
  /*HourlyEmployee Example*/ 
  HourlyEmployee hourlyEmp = HourlyEmployee(
    name: 'Rakib Mahmud',
    designation: 'Part-time Developer',
    hourlyRate: 100.0,
    hoursWorked: 50,
  );
  print('${hourlyEmp.name} এর মাসিক বেতন: ${hourlyEmp.calculateSalary()} টাকা'); 

  /*SalariedEmployee Example*/ 
  SalariedEmployee salariedEmp = SalariedEmployee(
    name: 'Sadia Ahmed',
    designation: 'Full-time Developer',
    monthlySalary: 80000.0,
  );
  print('${salariedEmp.name} এর মাসিক বেতন: ${salariedEmp.calculateSalary()} টাকা'); 
}


class Employee{
  String name; 
  String designation; 
  Employee({
    required this.name,
    required this.designation
  });
  double calculateSalary(){
    return 0.0;
  }
}

class HourlyEmployee extends Employee{
  double hourlyRate;
  int hoursWorked; 
  HourlyEmployee({
     required String name,
    required String designation,
    required this.hourlyRate,
    required this.hoursWorked,
  }):super(name:name,designation: designation);
  @override
  double calculateSalary(){
    return hourlyRate*hoursWorked;
  }
}

/*Create A Monthly Salary Class*/
class SalariedEmployee extends Employee{
  double monthlySalary; 
  SalariedEmployee({
    required String name,
    required String designation,
    required this.monthlySalary
  }):super(name:name,designation: designation);
  @override
  double calculateSalary(){
    return monthlySalary;
  }
}