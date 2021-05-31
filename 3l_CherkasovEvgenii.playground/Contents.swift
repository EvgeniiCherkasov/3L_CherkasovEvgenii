import UIKit

struct SportCar{
    
    var mark: String
    var year: Int
    var valumeOfTrunk: Int = 100 // 100 - максимальная вместимость багажника легкового автомобиля.
    var isEngineStarted: Bool = false
    var isWindowOpen: Bool = false
    var fullnesOfTrunk: Int = 0
    
    func discription(){
        
        print("Марка автомобиля \(mark). Год выпуска: \(year). Окно \(isWindowOpen ? "открыто" : "закрыто"). Двигатель \(isEngineStarted ? "запущен" : "заглушен"). Объем багажника: \(valumeOfTrunk). Багажник заполнен на \(fullnesOfTrunk)")
    }
    
    enum action{
        case startEngine
        case stopEngine
        case openWindow
        case closeWindow
        case putSmthToTrunk (weight: Int)
        case takeSmthFromTrunk (weight: Int)
    }
    
    mutating func changeState(action: action){
        
        switch action {
        
        case .startEngine:
            if self.isEngineStarted == false{
                self.isEngineStarted = true
            }else{
                print("Двигатель уже запущен")
            }
        case .stopEngine:
            if self.isEngineStarted == true{
                self.isEngineStarted = false
            }else{
                print("Двигатель уже запущен")
            }
            
        case .openWindow:
            if self.isWindowOpen == false{
                self.isWindowOpen = true
            }else{
                print("Окно уже открыто")
            }
        case .closeWindow:
            if self.isWindowOpen == true{
                self.isWindowOpen = false
            }else{
                print("Окно уже закрыто")
            }
        case .putSmthToTrunk(weight: let weight):
            if self.fullnesOfTrunk + weight <= self.valumeOfTrunk {
                self.fullnesOfTrunk += weight
                
            }else{
                print("Невозможно положить горуз объемом \(weight). Осталось свободного места \(valumeOfTrunk - fullnesOfTrunk)")
            }
        case .takeSmthFromTrunk(weight: let weight):
            if self.fullnesOfTrunk - weight >= 0{
                self.fullnesOfTrunk -= weight
            }else{
                print("Невозможно достать запрашиваемый груз. В багажнике осталось \(self.fullnesOfTrunk)")
            }
        }
    }
    
    init(mark: String, year: Int, valumeOfTrunk: Int){
        self.mark = mark
        self.year = year
        if valumeOfTrunk < 100{
            self.valumeOfTrunk = valumeOfTrunk
        }else{
           print("Слишком большой обьем багажника для легкового автомобиля. В созданном автомобиле объем уменьшен до 100.")
        }
    }
}


var volvo = SportCar(mark: "Volvo", year: 1990, valumeOfTrunk: 200)

volvo.discription()

volvo.changeState(action: .putSmthToTrunk(weight: 10))
volvo.changeState(action: .takeSmthFromTrunk(weight: 12))
volvo.changeState(action: .openWindow)

volvo.discription()

var skoda = SportCar(mark: "Skoda Actavia", year: 2021, valumeOfTrunk: 80)

skoda.discription()

skoda.changeState(action: .startEngine)
skoda.changeState(action: .takeSmthFromTrunk(weight: 20))
skoda.changeState(action: .closeWindow)

skoda.discription()

struct TrunkCar{
    var mark: String
    var year: Int
    var valumeOfTrunk: Int = 100 // 100 - минимальная вместимость багажника грузового автомобиля.
    var isEngineStarted: Bool = false
    var isWindowOpen: Bool = false
    var fullnesOfTrunk: Int = 0
    
    func discription(){
        
        print("Марка автомобиля \(mark). Год выпуска: \(year). Окно \(isWindowOpen ? "открыто" : "закрыто"). Двигатель \(isEngineStarted ? "запущен" : "заглушен"). Объем багажника: \(valumeOfTrunk). Багажник заполнен на \(fullnesOfTrunk)")
    }
    
    enum action{
        case startEngine
        case stopEngine
        case openWindow
        case closeWindow
        case putSmthToTrunk (weight: Int)
        case takeSmthFromTrunk (weight: Int)
    }
    
    mutating func changeState(action: action){
        
        switch action {
        
        case .startEngine:
            if self.isEngineStarted == false{
                self.isEngineStarted = true
            }else{
                print("Двигатель уже запущен")
            }
        case .stopEngine:
            if self.isEngineStarted == true{
                self.isEngineStarted = false
            }else{
                print("Двигатель уже запущен")
            }
            
        case .openWindow:
            if self.isWindowOpen == false{
                self.isWindowOpen = true
            }else{
                print("Окно уже открыто")
            }
        case .closeWindow:
            if self.isWindowOpen == true{
                self.isWindowOpen = false
            }else{
                print("Окно уже закрыто")
            }
        case .putSmthToTrunk(weight: let weight):
            if self.fullnesOfTrunk + weight <= self.valumeOfTrunk {
                self.fullnesOfTrunk += weight
                
            }else{
                print("Невозможно положить горуз объемом \(weight). Осталось свободного места \(valumeOfTrunk - fullnesOfTrunk)")
            }
        case .takeSmthFromTrunk(weight: let weight):
            if self.fullnesOfTrunk - weight >= 0{
                self.fullnesOfTrunk -= weight
            }else{
                print("Невозможно достать запрашиваемый груз. В багажнике осталось \(self.fullnesOfTrunk)")
            }
        }
    }
    
    init(mark: String, year: Int, valumeOfTrunk: Int){
        self.mark = mark
        self.year = year
        if valumeOfTrunk < 100{
            self.valumeOfTrunk = valumeOfTrunk
        }else{
           print("Слишком маленький обьем багажника для грузового автомобиля. В созданном автомобиле объем увеличен до 100.")
        }
    }
}

var man = TrunkCar(mark: "Volvo", year: 1990, valumeOfTrunk: 200)

volvo.discription()

volvo.changeState(action: .putSmthToTrunk(weight: 10))
volvo.changeState(action: .takeSmthFromTrunk(weight: 12))
volvo.changeState(action: .openWindow)

volvo.discription()

var kamaz = TrunkCar(mark: "Skoda Actavia", year: 2021, valumeOfTrunk: 80)

skoda.discription()

skoda.changeState(action: .startEngine)
skoda.changeState(action: .takeSmthFromTrunk(weight: 20))
skoda.changeState(action: .closeWindow)

skoda.discription()
