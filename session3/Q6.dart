/*
Task 1: Create a map representing a student with keys for name, age, and grade. Add, update,
and remove entries from the map, printing the map after each operation.
- Task 2: Iterate over the map and print each key-value pair
 */

main(){

Map<String , dynamic>student = {

  "name" : "ahmed",
  "age" : 20 ,
  "grade" : "B"
};

print(student);
student["name"] = "Ali";
print(student);
student["grade"] = "A";
print(student);
student.remove("name");
print(student);

for(var element in student.entries){
  print("${element.key}  ${element.value}");
}




}