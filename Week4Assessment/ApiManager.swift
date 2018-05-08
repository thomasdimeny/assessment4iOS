//
//  ApiManager.swift
//  Week4Assessment
//
//  Created by Thomas Dimeny on 5/8/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ApiManager {
    
    let baseURL = "https://pokeapi.co/api/v2/"
    func getPokemon(name: String, onSuccess: @escaping (JSON) -> Void) {
        let url = URL(string: "\(baseURL)pokemon/\(name)/")
        let request = Alamofire.request(url!)
        
        request.responseJSON { (response) in
            let apiResponse = JSON(response.value)
            print(apiResponse)
            onSuccess(apiResponse)
        }
    }
    
    
    
}
