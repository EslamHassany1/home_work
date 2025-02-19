/*
Write a function `calculateBonus(int salary, int yearsWorked)` that calculates a
bonus based on the following rules:
- If the employee has worked for 5 or more years, they get a 10% bonus.
- Otherwise, they get a 5% bonus.
The function should return the bonus amount.
Then, call the function inside `main()` and print the result.
 */

main(){
print(calculateBonus(10000, -1));
}
 int calculateBonus(int salary, int yearsWorked){
  int bonus=0;
  if(yearsWorked >= 5){
    bonus = (salary  * 0.10).toInt() ;
  }else{
    bonus =(salary  * 0.05).toInt();
  }
  return bonus;

}