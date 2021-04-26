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
        imageOne.image = UIImage(named: cars.picturesOne)
        imageTwo.image = UIImage(named: cars.picturesTwo)
    }

}
