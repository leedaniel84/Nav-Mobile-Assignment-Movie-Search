//
//  ResultsViewController.swift
//  Nav Mobile Assignment
//
//  Created by Daniel Lee on 5/4/16.
//  Copyright © 2016 Daniel Lee. All rights reserved.
//
//
//import UIKit
//
//class ResultsViewController: UIViewController {
//    
//    var filteredMovies: [Movie] = []
//    
//    @IBOutlet weak var collectionView: UICollectionView!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//
//    
//    // MARK: - Navigation
//
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "collectionMovieTapped" {
//            guard let cell = sender as? UICollectionViewCell else { return }
//            let indexPath = self.collectionView.indexPathForCell(cell)!
//            let selectedMovie = self.filteredMovies[indexPath.item]
//            
//            let detailViewController = segue.destinationViewController as! MovieDetailViewController
////            detailViewController.titleLabel.text = filteredMovies[indexPath.item].title
////            detailViewController.ratingsLabel.text = "\(filteredMovies[indexPath.item].rating)"
////            detailViewController.summaryLabel.text = filteredMovies[indexPath.item].summary
////            detailViewController.titleLabel.text = selectedMovie.title
////            detailViewController.ratingsLabel.text = "\(selectedMovie.rating)"
////            detailViewController.summaryLabel.text = selectedMovie.summary
//            detailViewController.movie = selectedMovie
//        }
//    }
//    
//
//}
//
//extension ResultsViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
//    
//    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
//        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("resultsCell", forIndexPath: indexPath) as! MovieCollectionViewCell
//        
//        let movie = filteredMovies[indexPath.item]
//        cell.titleLabel.text = movie.title
//        cell.ratingLabel.text = "\(movie.rating)"
//        cell.summaryLabel.text = movie.summary
//        return cell
//    }
//    
//    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        return filteredMovies.count
//    }
//    
//    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
//        return CGSize(width: self.view.frame.size.width/2.15, height: self.view.frame.size.height/3)
//    }
//    
//    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
//        self.performSegueWithIdentifier("collectionMovieTapped", sender: self)
//        
//    }
//    
//    
//}
