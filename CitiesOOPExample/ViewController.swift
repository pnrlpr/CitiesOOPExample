//
//  ViewController.swift
//  CitiesOOPExample
//
//  Created by PINAR KALKAN on 17.08.2023.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var cityArray = [Cities]()
    var userChoice : Cities?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate=self
        tableView.dataSource=self
        
        
        //Cities
        let utrecht = Cities(name: "Utrecht", country: "Holland", image: UIImage(named: "cafe")!)
        let paris1 = Cities(name: "Paris", country: "France", image: UIImage(named: "nemrod")!)
        let amsterdam = Cities(name: "Amsterdam", country: "Holland", image: UIImage(named: "holland")!)
        let paris2 = Cities(name: "Paris", country: "France", image: UIImage(named: "paris")!)
        let belgrade = Cities(name: "Belgrade", country: "Serbia", image: UIImage(named: "street")!)
        
        cityArray = [utrecht, paris1, amsterdam, paris2, belgrade]
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = cityArray[indexPath.row].name
        return cell
    }
    
    
    
    //Aşağıdaki fonk videoda "editing style" yazınca çıktı. Ben de farklı çıktı. Elle yazdım.
    //TableView'dan veri silmek için
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            cityArray.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
        
        //her satırdaki şehir ismi seçilince ne olacak??
        //didselectrow yazınca fonk çıkıyor
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            userChoice = cityArray[indexPath.row]
            performSegue(withIdentifier: "toDetailsVC", sender: nil)
            
        }
        
         func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            if segue.identifier == "toDetailsVC" {
                let destinationVC = segue.destination as! DetailsViewController
                //cmd + B yap
                destinationVC.chosenCity = userChoice
                
            }
        }
        
    }
}
