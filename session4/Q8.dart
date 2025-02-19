/*
Write a function `getDayType(String day)` that:
- Uses a switch case to return "Weekend" if the day is "Saturday" or "Sunday".
- Returns "Weekday" otherwise.
- If the input is invalid, return "Invalid day".
 */
main(){
getDayType("Saturday");
}

getDayType(String day){
  switch(day){
    case "Saturday":
      print ("Weekend");
      break;
    case "Sunday" :
      print ("Weekend");
      break;
    default :
      print("Weekday");
  };
}