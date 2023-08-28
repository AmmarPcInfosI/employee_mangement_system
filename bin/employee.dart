class Employee{
  String? name;
  String? id;
  double? salary;
  
  double calcSalary(){
    return 0;
  }
  Employee({this.name,this.id,this.salary});
}
class Manager extends Employee{
  Manager({super.name,super.id,super.salary});
  
  @override
  double calcSalary() {
    return salary!+salary!*0.1;

  }

}
class Developer extends Employee{
  Developer({super.name,super.id,super.salary});
  
  @override
  double calcSalary() {
    return salary!-salary!*0.2;
  }

}