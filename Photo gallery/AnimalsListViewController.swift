//
//  AnimalsListViewController.swift
//  Photo gallery
//
//  Created by Артур Петин on 26.04.2021.
//

import UIKit

class AnimalsListViewController: UITableViewController {

    var animalsList: [Animal] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 60
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        animalsList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalsCell", for: indexPath)
        let animal = animalsList[indexPath.row]
        var content = cell.defaultContentConfiguration()
        
        content.text = animal.name
        content.image = UIImage(named: animal.image)
        cell.contentConfiguration = content
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let animalsDetailsVC = segue.destination as? DetailsAnimalsViewController else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return }
        let animal = animalsList[indexPath.row]
        animalsDetailsVC.animals = animal
    }

}
