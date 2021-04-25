//
//  DetailsCarsViewController.swift
//  Photo gallery
//
//  Created by Marat Shagiakhmetov on 25.04.2021.
//

import UIKit

class DetailsCarsViewController: UIViewController {

    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    
    var cars: Cars!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = cars.name
        setupImage()
    }
    
    private func setupImage() {
        for index in Database.shared.pictures {
            imageOne.image = UIImage(named: index)
        }
    }

}
