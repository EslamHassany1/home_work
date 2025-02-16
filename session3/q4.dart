/*
Use Map and List to create a program that stores weather data for different cities (temperature,
humidity, etc.). Write a function that can retrieve and print weather details using a city name
 */
main(){
  Map<String , Map<String , List<dynamic> >>weatherdata={
    "cairo" : {"Temperature /Humidity " :[20,15]},
    "Qena" :{"Temperature /Humidity " :[3,7]},
    "Aswan" :{"Temperature /Humidity " :[10,12]},
    "asuit" :{"Temperature /Humidity " :[14,-5]},

  };
  String cityName = "Qena";

   showData (weatherdata, cityName);
}

showData(Map<String , Map<String , List<dynamic> >> data , String citName){
  if(data.containsKey(citName)){
    List<dynamic> weather = data[citName]!["Temperature /Humidity "]!;

    print("Temperature:${weather[0]}");

    print("Humidity:${weather[1]}");

  } else {

    print("Weather data for $citName not found.");

  }
  }
