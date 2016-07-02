//
//  MovieIntroTableViewController.swift
//  midtermExam
//
//  Created by 張智涵 on 2016/6/17.
//  Copyright © 2016年 張智涵 Vincent Chang. All rights reserved.
//

import UIKit

class MovieIntroTableViewController: UITableViewController {
    
//    var moviePoster = ["Assassin", "Starwars"]
//    var movieName = ["The Assassin", "SW Force Awakens"]
//    var movieIntroduction = ["", ""]
    
    
    var movie:[movies] = [
        movies(name: "The Assassin", image: "Assassin", intro: "8th century China. 10-year-old general's daughter Nie Yinniang is abducted by a nun who initiates her into the martial arts, transforming her into an exceptional assassin charged with eliminating cruel and corrupt local governors. One day, having failed in a task, she is sent back by her mistress to the land of her birth, with orders to kill the man to whom she was promised - a cousin who now leads the largest military region in North China. After 13 years of exile, the young woman must confront her parents, her memories and her long-repressed feelings. A slave to the orders of her mistress, Nie Yinniang must choose: sacrifice the man she loves or break forever with the sacred way of the righteous assassins."),
        movies(name: "SW Force Awakens", image: "Starwars", intro: "30 years after the defeat of Darth Vader and the Empire, Rey, a scavenger from the planet Jakku, finds a BB-8 droid that knows the whereabouts of the long lost Luke Skywalker. Rey, as well as a rogue stormtrooper and two smugglers, are thrown into the middle of a battle between the Resistance and the daunting legions of the First Order.")
    ]
    
    let customCellIdentifier = "CustomTableViewCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.estimatedRowHeight = 100
        self.tableView.rowHeight = UITableViewAutomaticDimension
        
        self.tableView.registerNib(UINib(nibName: "CustomTableViewCell", bundle: nil), forCellReuseIdentifier: customCellIdentifier)
       
        // Uncomment the following line to preserve selection between presentations
        //self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        //self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return movie.count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomTableViewCell", forIndexPath: indexPath) as! CustomTableViewCell
        
        
       
        cell.movieImage.image = UIImage(named:movie[indexPath.row].image)
        cell.movieLabel.text = movie[indexPath.row].name
        
        
        // Configure the cell...
        
        return cell
    }

   
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "detailSegue"{
            
            if let indexPath = tableView.indexPathForSelectedRow{
             let destinationViewController = segue.destinationViewController as! movieDetailViewController
                destinationViewController.movieDetail = movie[indexPath.row]
            }
        }
        
    }
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
      
            self.performSegueWithIdentifier("detailSegue", sender: movie[indexPath.row])
        }
    
    
    

}
