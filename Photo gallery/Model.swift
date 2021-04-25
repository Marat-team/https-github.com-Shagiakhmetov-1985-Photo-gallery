//
//  Model.swift
//  Photo gallery
//
//  Created by Marat Shagiakhmetov on 25.04.2021.
//

struct Cars {
    let name: String
    let image: String
    
    static func getDatabase() -> [Cars] {
        var cars: [Cars] = []
        
        let names = Database.shared.name
        let images = Database.shared.image
        
        let iterationCount = min(names.count, images.count)
        
        for index in 0..<iterationCount {
            let car = Cars(name: names[index], image: images[index])
            cars.append(car)
        }
        return cars
    }
}
