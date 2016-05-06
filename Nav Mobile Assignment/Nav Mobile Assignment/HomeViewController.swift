//
//  ViewController.swift
//  Nav Mobile Assignment
//
//  Created by Daniel Lee on 5/3/16.
//  Copyright © 2016 Daniel Lee. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var searchController: UISearchController!
//    var results: [Movie]?
    var filteredMovies = [Movie]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpSearchController()
//        MovieController.searchForPopularMovies { (movieArray) -> Void in
//            if let movies = movieArray {
//                self.results = movies
//                dispatch_async(dispatch_get_main_queue(), { () -> Void in
//                    self.tableView.reloadData()
//                })
//            }
//        }
        
    }



    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "tableMovieTapped" {
            guard let cell = sender as? UITableViewCell else { return }
            
            let indexPath = self.tableView.indexPathForCell(cell)!
            let selectedMovie = self.filteredMovies[indexPath.row]
            
            let detailViewController = segue.destinationViewController as! MovieDetailViewController
            detailViewController.movie = selectedMovie
        }
    }

}

extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("movieTableCell", forIndexPath: indexPath)
        var movie: Movie
        if searchController.active && searchController.searchBar.text != "" {
            movie = filteredMovies[indexPath.row]
        
//        } else {
//            movie = results![indexPath.row]
//        }

        cell.textLabel?.text = movie.title
        cell.detailTextLabel?.text = movie.summary
        
    }
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if searchController.active && searchController.searchBar.text != "" {
        return filteredMovies.count
        } else {
//        return results?.count ?? 0
        return 0
        }
    }
    
}

extension HomeViewController: UISearchResultsUpdating {
    
//MARK: - Setting up the searchbar
    func setUpSearchController() {
    
//        let resultsController = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("resultsViewController")
        
        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.hidesNavigationBarDuringPresentation = true
        searchController.dimsBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search Movie Titles"
        tableView.tableHeaderView = searchController.searchBar
        definesPresentationContext = true
        
    }

    func updateSearchResultsForSearchController(searchController: UISearchController) {
        let lowercaseSearchTerm = searchController.searchBar.text!.lowercaseString
        
        MovieController.searchForMovies(lowercaseSearchTerm) { (movies) -> Void in
            if let movies = movies {
//                if let resultsController = searchController.searchResultsController as? HomeViewController {
                    self.filteredMovies = movies
                    dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    self.tableView.reloadData()
                    })
                }
        }
        
    }
    
}

