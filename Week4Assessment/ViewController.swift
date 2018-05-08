//
//  ViewController.swift
//  Week4Assessment
//
//  Created by Ryan Brashear on 4/30/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class ViewController: UIViewController {
    var apiManager = ApiManager()
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var identificationLabel: UILabel!
    
    @IBOutlet weak var weightLabel: UILabel!
    //Base URL for the Pokemon API
    @IBOutlet weak var textField: UITextField!
  
    @IBAction func buttonPressed(_ sender: Any) {
        apiManager.getPokemon(name: textField.text!.lowercased()) { (json) in
            self.nameLabel.text = json["name"].stringValue
            self.identificationLabel.text = json["id"].stringValue
            self.weightLabel.text = json["weight"].stringValue
        }
        
        
    }
    
    
    
    
    
}

