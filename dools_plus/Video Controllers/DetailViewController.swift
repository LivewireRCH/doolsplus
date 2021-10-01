//
//  DetailViewController.swift
//  dools_plus
//
//  Created by Captain Starlight on 1/10/21.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    @IBOutlet weak var webView: WKWebView!
    
    
    @IBOutlet weak var textView: UITextView!
    
    var video:video?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        // clear the fields
        titleLabel.text = ""
        textView.text = ""
        
        // check is there's a video
        guard video != nil else {
            return
        }
        
        // create the embed url
        let embedUrlString = Constants.YT_EMBED_URL + video!.videoId
        
        // load into the web view
        let url = URL(string: embedUrlString)
        let request = URLRequest(url: url!)
        webView.load(request)
        
        // set the title
        titleLabel.text = video!.title
        
        // set the description
        textView.text = video!.description
    }


}
