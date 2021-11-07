import UIKit

/*
 1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.
 
 2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).
 
 3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.
 
 4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.
 
 5. Создать несколько объектов каждого класса. Применить к ним различные действия.
 
 6. Вывести сами объекты в консоль. */



    protocol Car {
        
        var carType: String {get set}
        var salonTemperature: Int {get set}
        var fuel: Int {get set}
        func readyToDrive()
        
    }

extension Car {
    
    func windowsStatus() {
        
        if salonTemperature >= 30 {
            
            print("Откройте окна в \(carType) слишком жарко \(salonTemperature)!")
            
        } else if (salonTemperature <= 10)  {
            
            print("Закройте окна в \(carType) слишком холодно \(salonTemperature)")
        }
        
    }
    
    func engineStatus() {
        
        if fuel <= 0 {
            
            print("В \(carType) недостаточно топлива: \(fuel) литров!")
            
        } else {
            
            print("\(carType) готов к запуску: \(fuel) литров топлива!")
        }
    }
    
}

class sportCar: Car {
    
    func readyToDrive() {
        
        if fuel <= 0 {
            
        print("\(carType) не готов ехать!")
            
        } else {
            
        print("\(carType) готов ехать!")
            
        }
        
    }
    
    var carType: String
    var fuel: Int
    var salonTemperature: Int
    var speedCar: Int
    
    init(carType: String, fuel: Int, salonTemperature: Int, speedCar: Int) {
        self.carType = carType
        self.fuel = fuel
        self.salonTemperature = salonTemperature
        self.speedCar = speedCar
}
    
    func speedSportCar() {
        
        if speedCar <= 0 {
            
            print("Жми на газ, ты стоишь на месте \(speedCar) !!!")
            
        } else if (speedCar > 200){
            
            print("Жми на тормоз, ты слишком быстро едешь \(speedCar)!!!")
        }
        
    }
    
}

class trunkCar: Car {
    
    func readyToDrive() {
        
        if fuel <= 0 {
            
            print("\(carType) не может ехать!")
            
        } else {
            
            print("\(carType) готов ехать!")
            
        }
        
    }
    
    var carType: String
    var fuel: Int
    var salonTemperature: Int
    var fulltrunkCar: Int
    
    init(carType: String, fuel: Int, salonTemperature: Int, fulltrunkCar: Int) {
        self.carType = carType
        self.fuel = fuel
        self.salonTemperature = salonTemperature
        self.fulltrunkCar = fulltrunkCar
    }
    func weightTrunkCar() {
        
        if fulltrunkCar >= 0 {
            
            print("В цистерне есть жидкость!")
            
        } else {
            
            print("Цистерна пустая!")
            
        }
        
    }
    
}

extension sportCar: CustomStringConvertible{
    
    var description: String {
        
            return ("Тип автомобиля: \(carType), Скорость: \(speedCar), Топливо: \(fuel), Температура в салоне: \(salonTemperature)° градусов")
        }
    }

    
extension trunkCar: CustomStringConvertible{
    
    var description: String {
        
            return ("Тип автомобиля: \(carType), Уровень цистерны: \(fulltrunkCar) литров, Топливо: \(fuel), Температура в салоне: \(salonTemperature)° градусов")
        }
    }

var sportCarOne = sportCar(carType: "Спортивный автомобиль", fuel: 30, salonTemperature: 33, speedCar: 220)

sportCarOne.speedCar
sportCarOne.readyToDrive()
sportCarOne.windowsStatus()
sportCarOne.speedSportCar()
print(sportCarOne.description)

var trunkCarOne = trunkCar(carType: "Автоцистерна", fuel: 0 , salonTemperature: 11, fulltrunkCar: 1000)

trunkCarOne.readyToDrive()
trunkCarOne.engineStatus()
trunkCarOne.weightTrunkCar()
print(trunkCarOne.description)

