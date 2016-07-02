//
//  movieDetailViewController.swift
//  midtermExam
//
//  Created by 張智涵 on 2016/6/17.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class movieDetailViewController: UIViewController {

    @IBOutlet weak var movieDetailPoster: UIImageView!
    
    @IBOutlet weak var movieDetailIntro: UILabel!
    
//    @IBOutlet weak var ScrollView: UIScrollView!
    
    
    var movieDetail:movies!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = movieDetail.name
        movieDetailPoster.image = UIImage(named: movieDetail.image)
        movieDetailIntro.text = movieDetail.intro
        
        // Do any additional setup after loading the view.
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
