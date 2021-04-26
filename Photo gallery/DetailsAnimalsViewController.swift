//
//  DetailsAnimalsViewController.swift
//  Photo gallery
//
//  Created by Артур Петин on 26.04.2021.
//

import UIKit

class DetailsAnimalsViewController: UIViewController {
    
    @IBOutlet weak var imageOne: UIImageView!
    @IBOutlet weak var imageTwo: UIImageView!
    
    var animals: Animal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = animals.name
        setupImage()
    }
    
    private func setupImage() {
        imageOne.image = UIImage(named: animals.picturesOne)
        imageTwo.image = UIImage(named: animals.picturesTwo)
    }
    
}
