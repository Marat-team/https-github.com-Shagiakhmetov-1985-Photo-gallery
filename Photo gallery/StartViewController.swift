//
//  StartViewController.swift
//  Photo gallery
//
//  Created by Marat Shagiakhmetov on 25.04.2021.
//

import UIKit

class StartViewController: UITabBarController {

    let database = Cars.getDatabase()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupDatabase(cars: database)
    }
    
    private func setupDatabase(cars: [Cars]) {
        let carsListVC = viewControllers?.first as! CarsListViewController
        carsListVC.carsList = cars
    }

}
