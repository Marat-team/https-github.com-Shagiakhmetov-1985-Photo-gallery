//
//  CarsListViewController.swift
//  Photo gallery
//
//  Created by Marat Shagiakhmetov on 25.04.2021.
//

import UIKit

class CarsListViewController: UITableViewController {

    var carsList: [Cars] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        carsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "carsCell", for: indexPath)
        let car = carsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = car.name
        content.image = UIImage(named: car.image)
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let carsDetailsVC = segue.destination as? DetailsCarsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let car = carsList[indexPath.row]
        carsDetailsVC.cars = car
    }

}
