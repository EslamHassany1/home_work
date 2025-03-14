abstract class Employee{

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
  return super.salary+bouns;
  }


  FullTimeEmployee({required super.name , required super.id ,required super.salary , required this.bouns});

}

class  PartTimeEmployee extends Employee{
  double hoursWorked;
  double hourlyRate;
  @override
  calculateSalary(){
   return hourlyRate*hoursWorked;
  }

  PartTimeEmployee({required super.name , required super.id ,required super.salary , required this.hoursWorked ,required this.hourlyRate});

}

main(){

  PartTimeEmployee employee1 =PartTimeEmployee(name: "ahmed", id: 1021, salary: 0, hoursWorked: 20, hourlyRate: 10.5);
print(employee1.calculateSalary());
FullTimeEmployee employee2 = FullTimeEmployee(name: "mohamed", id: 1012, salary: 10000, bouns: 2000);
  print(employee2.calculateSalary());

}