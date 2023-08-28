import 'package:employee_mangement_system/employee_mangement_system.dart' as employee_mangement_system;
import 'dart:io';
import 'employee.dart';
void main() {
  String? emtype;
  String? name;
  String? id;
  String? rpt;
  double salary;
  print("Welecome to employee Magment System");
  do{
  print('Enter the type of Employee (m)Manager or (d)Developer');
  Manager m;
  Developer d;

  emtype= stdin.readLineSync();
  if(emtype=='m'){
    
    print("Enter the manager name");
    name=stdin.readLineSync();
    print("Enter the manager id");
    id=stdin.readLineSync();
    print("Enter the manager salary");
    salary=double.parse(stdin.readLineSync()!);
    m=Manager(name: name,id: id,salary: salary);
    print("\nThe Employee Information:");
    print('-----------------------------');
    print("Name:${m.name}");
    print("ID:${m.id}");
    print("Role:Manager");
    print('Salary:${m.salary}');
    print('Net Salary: ${m.calcSalary()}');

  }
  else if(emtype=='d'){
    print("Enter the developer name");
    name=stdin.readLineSync();
    print("Enter the developer id");
    id=stdin.readLineSync();
    print("Enter the developer salary");
    salary=double.parse(stdin.readLineSync()!);
    d=Developer(name: name,id: id,salary: salary);
    print("\nThe Employee Information:");
    print('-----------------------------');
    print("Name:${d.name}");
    print("ID:${d.id}");
    print("Role: Developer");
    print('Salary:${d.salary}');
    print('Net Salary: ${d.calcSalary()}');
  }
  print('do you want to enter another employee?(y/n)');
  rpt=stdin.readLineSync();
  }while(rpt=='y');
  print("***** HAVE A NICE DAY *****");
}

