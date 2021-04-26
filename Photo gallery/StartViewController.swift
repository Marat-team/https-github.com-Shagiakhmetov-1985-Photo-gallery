//
//  StartViewController.swift
//  Photo gallery
//
//  Created by Marat Shagiakhmetov on 25.04.2021.
//

import UIKit

class StartViewController: UITabBarController {

    let database = Cars.getDatabase()
    let animalDatabase = Animal.getDatabase()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDatabase(cars: database, animals: animalDatabase)
        
    }
    
    private func setupDatabase(cars: [Cars], animals: [Animal]) {
        let carsListVC = viewControllers?.first as! CarsListViewController
        carsListVC.carsList = cars
        let animalListVC = viewControllers?.last as! AnimalsListViewController
        animalListVC.animalsList = animals
    }
}
