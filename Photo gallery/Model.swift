//
//  Model.swift
//  Photo gallery
//
//  Created by Marat Shagiakhmetov on 25.04.2021.
//

struct Cars {
    let name: String
    let image: String
    let picturesOne: String
    let picturesTwo: String
    
    static func getDatabase() -> [Cars] {
        var cars: [Cars] = []
        
        let names = Database.shared.name
        let images = Database.shared.image
        let picturesOne = Database.shared.picturesOne
        let picturesTwo = Database.shared.picturesTwo
        
        let iterationCount = min(names.count, images.count, picturesOne.count, picturesTwo.count)
        
        for index in 0..<iterationCount {
            let car = Cars(
                name: names[index],
                image: images[index],
                picturesOne: picturesOne[index],
                picturesTwo: picturesTwo[index]
                )
            cars.append(car)
        }
        return cars
    }

}
struct Animal {
    let name: String
    let image: String
    let picturesOne: String
    let picturesTwo: String
    
    static func getDatabase() -> [Animal] {
        var animals: [Animal] = []
        
        let names = AnimalDatabase.animalShared.name
        let images = AnimalDatabase.animalShared.image
        let picturesOne = AnimalDatabase.animalShared.picturesOne
        let picturesTwo = AnimalDatabase.animalShared.picturesTwo
        
        let iterationCount = min(names.count, images.count, picturesOne.count, picturesTwo.count)
        
        for index in 0..<iterationCount {
            let animal = Animal(
                name: names[index],
                image: images[index],
                picturesOne: picturesOne[index],
                picturesTwo: picturesTwo[index]
                )
            animals.append(animal)
        }
        return animals
    }

}


