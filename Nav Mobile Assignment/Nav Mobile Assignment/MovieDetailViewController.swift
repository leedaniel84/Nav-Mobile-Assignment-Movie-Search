//
//  MovieDetailViewController.swift
//  Nav Mobile Assignment
//
//  Created by Daniel Lee on 5/5/16.
//  Copyright © 2016 Daniel Lee. All rights reserved.
//

import UIKit

class MovieDetailViewController: UIViewController {
    
    var movie: Movie?
    
    @IBOutlet weak var titleLabel: UILabel!

    @IBOutlet weak var ratingsLabel: UILabel!
    
    @IBOutlet weak var summaryLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = movie?.title
        ratingsLabel.text = "Rating: \(movie!.rating)"
        summaryLabel.text = movie?.summary
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
