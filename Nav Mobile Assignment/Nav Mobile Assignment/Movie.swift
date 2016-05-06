//
//  Movie.swift
//  Nav Mobile Assignment
//
//  Created by Daniel Lee on 5/3/16.
//  Copyright © 2016 Daniel Lee. All rights reserved.
//

import Foundation
import UIKit

class Movie {
    
    let title: String
    let rating: Float
    let summary: String
    let image: String
    
    init?(json: [String: AnyObject]) {
        guard let title = json["title"] as? String,
            let rating = json["vote_average"] as? Float,
            let image = json["poster_path"] as? String,
            let summary = json["overview"] as? String where !summary.isEmpty else {
                self.title = ""
                self.rating = 0
                self.image = ""
                self.summary = ""
                return nil
        }
        
        self.title = title
        self.rating = rating
        self.summary = summary
        self.image = image
        
    }
    
}

