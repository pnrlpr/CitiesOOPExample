//
//  DetailsViewController.swift
//  CitiesOOPExample
//
//  Created by PINAR KALKAN on 17.08.2023.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var countryNameLabel: UILabel!
    
    
    var chosenCity : Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        cityNameLabel.text = chosenCity?.name
        countryNameLabel.text = chosenCity?.country
        imageView.image = chosenCity?.image

    }
    

}
