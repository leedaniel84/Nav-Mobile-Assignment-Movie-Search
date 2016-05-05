//
//  ResultsViewController.swift
//  Nav Mobile Assignment
//
//  Created by Daniel Lee on 5/4/16.
//  Copyright © 2016 Daniel Lee. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {
    
    var filteredMovies: [Movie] = []
    
    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()
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

extension ResultsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("resultsCell", forIndexPath: indexPath) as! MovieCollectionViewCell
        
        let movie = filteredMovies[indexPath.item]
        cell.titleLabel.text = movie.title
        cell.ratingLabel.text = "\(movie.rating)"
        cell.summaryLabel.text = movie.summary
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return filteredMovies.count
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        return CGSize(width: self.view.frame.size.width/2 - 1, height: self.view.frame.size.height/3 - 1)
    }
    
}
