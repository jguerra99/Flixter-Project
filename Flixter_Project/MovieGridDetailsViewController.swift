//
//  MovieGridDetailsViewController.swift
//  Flixter_Project
//
//  Created by Jose Lopez on 2/24/21.
//

import UIKit
import AlamofireImage

class MovieGridDetailsViewController: UIViewController {
    @IBOutlet weak var backdropView: UIImageView!
    
    @IBOutlet weak var TrailerButton: UIButton!
    @IBOutlet weak var posterView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var synopsisLabel: UILabel!
    var movie: [String: Any]!
        
        override func viewDidLoad() {
            super.viewDidLoad()
            titleLabel.text = movie["title"] as? String
            titleLabel.sizeToFit()
            synopsisLabel.text = movie["overview"] as? String
            synopsisLabel.sizeToFit()
            
            let baseUrl = "https://image.tmdb.org/t/p/w185"
            let posterPath = movie["poster_path"] as! String
            let posterUrl = URL(string: baseUrl + posterPath)
            posterView.af_setImage(withURL: posterUrl!)
            
            let backdropPath = movie["backdrop_path"] as! String
            let backdropURL = URL(string: "https://image.tmdb.org/t/p/w780" + backdropPath)
            backdropView.af_setImage(withURL: backdropURL!)

        
            // Do any additional setup after loading the view.
        }
        

        
    //    // MARK: - Navigation
    //
    //    // In a storyboard-based application, you will often want to do a little preparation before navigation
    //    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    //        // Get the new view controller using segue.destination.
    //        // Pass the selected object to the new view controller.
    //
    //        // Find the selected movie
    //        let cell = sender as! UITableViewCell
    //        let indexPath = tableView.indexPath(for: cell)!
    //        let movie = movies[indexPath.row]
    //        // Pass the selected movie to the details view controller
    //    }
        

    }
