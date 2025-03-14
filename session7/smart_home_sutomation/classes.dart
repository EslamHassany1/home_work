abstract class Decivces{


  turnOn();
  turnOff();
}


class Light extends Decivces{
  @override
  turnOn() {
    // TODO: implement onAndOff
    throw UnimplementedError();
  }
  turnOff() {
    // TODO: implement onAndOff
    throw UnimplementedError();
  }
}

class Conditioners extends Decivces{
  @override
  turnOn() {
    // TODO: implement onAndOff
    throw UnimplementedError();
  }
  turnOff() {
    // TODO: implement onAndOff
    throw UnimplementedError();
  }
}

class SecurityCameras extends Decivces {
  @override
  turnOn() {
    // TODO: implement onAndOff
    throw UnimplementedError();
  }

  turnOff() {
    // TODO: implement onAndOff
    throw UnimplementedError();
  }

  detectMotion() {
  }
}


class DeviceManger{

  List<Decivces> devices=[];

  addDevice(Decivces divice){
    devices.add(divice);
  }

  turnalldeviceOn(){
    for(var item in devices){
      item.turnOn();
    }
  }
  turnalldeviceOff(){
    for(var item in devices){
      item.turnOff();
    }
  }



}

main(){
  Light homelight=Light();
  Conditioners bedroomConditioner = Conditioners();
  SecurityCameras outdoorCameras = SecurityCameras();

  DeviceManger deviceManger =DeviceManger();
  deviceManger.addDevice(homelight);
  deviceManger.addDevice(bedroomConditioner);
  deviceManger.addDevice(outdoorCameras);

  deviceManger.turnalldeviceOn();
  deviceManger.turnalldeviceOff();
  homelight.turnOn();



}
