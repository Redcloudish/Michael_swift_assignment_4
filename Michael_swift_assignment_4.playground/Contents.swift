protocol ElectricitySystem {
    var batteryLevel: Double {get set}
    func chargebattery ()
    func checkBatterylLevel () -> String
}

protocol EntertainmentSystem {
    var hasTV : Bool  {get set}
    func turnOnTv ()
    func turnOffTv()
    
}

 class Camper: ElectricitySystem, EntertainmentSystem {
    var batteryLevel: Double = 100.0
    var hasTV: Bool = false

    func chargeBattery() {
        batteryLevel = min(batteryLevel + 10.0, 100.0) 
        // Charge battery by 10%
    }
    

    func checkBatteryLevel() -> String {
            return "Battery Level: \(batteryLevel)%"}
    
    func turnOnTV() {
            if !hasTV {
                hasTV = true
            print("TV is turned ON.")
        } else {
            print("TV is ON.")
    }
}

    func turnOffTV() {
            if hasTV {
                hasTV = false
            print("TV is turned OFF.")
        } else {
            print("TV is OFF.")
            }
        }
    
    }
func testCamper() {
    let myCamper = Camper()
    
    print((myCamper.checkBatteryLevel()))
    print(myCamper.checkBatteryLevel())
    
    
    myCamper.turnOnTV()
    myCamper.turnOffTV()
    myCamper.turnOffTV()
}

   testCamper()

