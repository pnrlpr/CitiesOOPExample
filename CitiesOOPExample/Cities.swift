//
//  Cities.swift
//  CitiesOOPExample
//
//  Created by PINAR KALKAN on 21.08.2023.
//

import Foundation
import UIKit
//Cities sınıfında image=UIImage() yazınca hata verir.
//Bunun için UIKit'i import etmek gerekiyor


class Cities {
    
    var name : String
    var country : String
    var image : UIImage
    
    //init yazıp Tab'a basınca kendisi oluşturdu
    //Ama yine de kontrol et!
    init(name: String, country: String, image: UIImage) {
        self.name = name
        self.country = country
        self.image = image
    }
    
    
}
