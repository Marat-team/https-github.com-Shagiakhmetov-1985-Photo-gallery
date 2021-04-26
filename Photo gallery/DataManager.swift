//
//  DataManager.swift
//  Photo gallery
//
//  Created by Marat Shagiakhmetov on 25.04.2021.
//

struct Database {
    
    static let shared = Database()
    
    let name = [
        "Audi A3", "Audi A4", "Audi A6", "Audi Q3", "Audi Q5", "Audi Q7"
    ]
    
    let image = [
        "AudiA3", "AudiA4", "AudiA6", "AudiQ3", "AudiQ5", "AudiQ7",
    ]
    
    let picturesOne = [
        "AudiA3", "AudiA4", "AudiA6", "AudiQ3", "AudiQ5", "AudiQ7",
    ]
    
    let picturesTwo = [
        "AudiA3(2)", "AudiA4(2)", "AudiA6(2)", "AudiQ3(2)", "AudiQ5(2)", "AudiQ7(2)"
    ]
    
    private init() {}
}

struct AnimalDatabase {
    
    static let animalShared = AnimalDatabase()
    
    let name = [
        "Wolf", "Spotted deer", "Snow leopard", "Sable", "Fox", "Bear"
    ]
    
    let image = [
        "Wolf", "SpottedDeer", "SnowLeopard", "Sable", "Fox", "Bear"
    ]
    
    let picturesOne = [
        "Wolf", "SpottedDeer", "SnowLeopard", "Sable", "Fox", "Bear"
    ]
    
    let picturesTwo = [
        "Wolf(2)", "SpottedDeer(2)", "SnowLeopard(2)", "Sable(2)", "Fox(2)", "Bear(2)"
    ]
    
    private init() {}
}
