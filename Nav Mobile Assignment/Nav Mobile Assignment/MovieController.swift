//
//  MovieController.swift
//  Nav Mobile Assignment
//
//  Created by Daniel Lee on 5/3/16.
//  Copyright © 2016 Daniel Lee. All rights reserved.
//

import Foundation

class MovieController {
    
    static func searchForMovies(searchTerm: String, completion:(movieArray:[Movie]?) -> Void){
        
        let url = NetworkController.baseURL(searchTerm)
        
        NetworkController.dataAtURL(url) { (resultData) -> Void in
            guard let data = resultData else {
                print("No Data Returned")
                completion(movieArray: nil)
                return
            }
            
            do {
                let resultsAnyObject = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.AllowFragments)
                
                if let resultsDictionary = resultsAnyObject as? [String:AnyObject] {
                    
                }
            }
        }
        
    }
    
}
