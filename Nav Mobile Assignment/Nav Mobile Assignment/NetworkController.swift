//
//  NetworkController.swift
//  Nav Mobile Assignment
//
//  Created by Daniel Lee on 5/3/16.
//  Copyright © 2016 Daniel Lee. All rights reserved.
//

import Foundation

class NetworkController {
    
    static func baseURL(searchTerm: String) -> NSURL {
        
        let modifiedSearchTerm = searchTerm.stringByReplacingOccurrencesOfString(" ", withString: "+")
        return NSURL(string: "http://api.themoviedb.org/3/search/movie?query=\(modifiedSearchTerm)&api_key=3ccde3d0c86f6e7b14a037f7ee3050c7")!
        
    }
    
    static func popularURL() -> NSURL {
        
        return NSURL(string: "http://api.themoviedb.org/3/movie/popular?api_key=3ccde3d0c86f6e7b14a037f7ee3050c7")!
        
    }
    
    static func dataAtURL(url: NSURL, completion:(resultData: NSData?) -> Void){
        
        let session = NSURLSession.sharedSession()
        let dataTask = session.dataTaskWithURL(url) { (data, _, error) -> Void in
            
            if let error = error {
                print(error.localizedDescription)
            }
            completion(resultData: data)
        }
        dataTask.resume()
    }
    
}