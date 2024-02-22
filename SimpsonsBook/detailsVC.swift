//
//  detailsVC.swift
//  SimpsonsBook
//
//  Created by Selahattin EDİN on 5.03.2023.
//

import UIKit

class detailsVC: UIViewController {

    @IBOutlet weak var ımageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    var selectedsimpsons : simpsons?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = selectedsimpsons?.name
        jobLabel.text = selectedsimpsons?.job
        ımageView.image = selectedsimpsons?.image
        
        
        

        
    }
    

    

}
