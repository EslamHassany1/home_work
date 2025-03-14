class Employee{

  final String name;
  final int id;
  double salary;

  Employee({required this.name,required this.id,required this.salary});
  calculateSalary(){
    return salary;
  }


}

class  FullTimeEmployee extends Employee{
  double bouns;
@override
  calculateSalary(){
  return super.calculateSalary()+bouns;
  }


  FullTimeEmployee({required super.name , required super.id ,required super.salary , required this.bouns});

}

class  PartTimeEmployee extends Employee{
  double hoursWorked;
  double hourlyRate;
  @override
  calculateSalary(){
  }

  PartTimeEmployee({required super.name , required super.id ,required super.salary , required this.hoursWorked ,required this.hourlyRate});

}