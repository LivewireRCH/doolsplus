//
//  ViewController.swift
//  dools_plus
//
//  Created by Captain Starlight on 25/9/21.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, ModelDelegate {
   

    
    @IBOutlet weak var tableView: UITableView!
    
    var model = Model()
    var videos = [video]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set itself as the data source and the delegate
        
        tableView.dataSource = self
        tableView.delegate = self
        
        
      //set itself as the delegate
        model.delegate = self
                model.getVideos()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        // confirm that a video was selected
        guard tableView.indexPathForSelectedRow != nil else {
            return
        }
        
        // get a reference to the video that was tapped on
        let selectedVideo = videos[tableView.indexPathForSelectedRow!.row]
        
        // get a reference to the detailed view controller
        let detailVC = segue.destination as! DetailViewController
        
        // set the video property of the detail view controller
        detailVC.video = selectedVideo
    }
    
    //  MARK: model delegate methods
    
    func videosFetched(_ videos: [video]) {
        
        // set the returned vidoes to our video property
        self.videos = videos
        
        // refresh the table view
        tableView.reloadData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        
        return videos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        
        let cell = tableView.dequeueReusableCell(withIdentifier: Constants.VIDEOCELL_ID, for: indexPath) as! VideoTableViewCell
        
        
        // configure this cell with the data
        let video = self.videos[indexPath.row]
        
        cell.setCell(video)
        
        // return the cell
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }

}

