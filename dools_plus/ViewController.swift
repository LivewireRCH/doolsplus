//
//  ViewController.swift
//  dools_plus
//
//  Created by Captain Starlight on 25/9/21.
//

import UIKit

class ViewController: UIViewController {

    var model = Model()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        model.getVideos()
    }

    


}

