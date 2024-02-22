//
//  ViewController.swift
//  SimpsonsBook
//
//  Created by Selahattin EDİN on 5.03.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var mySimpsons = [simpsons]()
    var chosenSimpson : simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        let homer = simpsons(simpsonName: "Homer Simpson", simspsonJob: "Nuclear Safety", simpsonImage: UIImage(named: "homersimpson")!)
        
        
        let marge = simpsons(simpsonName: "Marge  Simpson", simspsonJob: "Home Wife", simpsonImage: UIImage(named: "margesimpson")!)
        
        let bart = simpsons(simpsonName: "Bart Simpson", simspsonJob: "Student", simpsonImage: UIImage(named: "bartsimpson")!)
        
        let lisa = simpsons(simpsonName: "Lisa Simpson", simspsonJob: "Student", simpsonImage: UIImage(named: "lisasimpson")!)
        
        let maggie = simpsons(simpsonName: "Homer Simpson", simspsonJob: "Baby", simpsonImage: UIImage(named: "maggiesimpson")!)
        
        mySimpsons.append(homer)
        mySimpsons.append(marge)
        mySimpsons.append(bart)
        mySimpsons.append(lisa)
        mySimpsons.append(maggie)
     
        
        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mySimpsons.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = mySimpsons[indexPath.row].name
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenSimpson = mySimpsons[indexPath.row]
        self.performSegue(withIdentifier: "toDetailsVC", sender: nil)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetailsVC" {
            let destinationVC = segue.destination as! detailsVC
            destinationVC.selectedsimpsons = chosenSimpson
        }
            
    }


}

