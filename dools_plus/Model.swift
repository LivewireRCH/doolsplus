//
//  Model.swift
//  dools_plus
//
//  Created by Captain Starlight on 25/9/21.
//

import Foundation

class Model {
    
    func getVideos() {
        
        // Create URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else{
            return
        }
        
        // Get a URL session object
        let session = URLSession.shared
        
        // Get a data task from the URLSession object
        
        let dataTask = session.dataTask(with: url!) { (data, response, error) in

            // Check if there were any errors
            if error != nil || data == nil {
                return
            }
            
            do {
                
                // Parsing the data into video objects
                let decoder = JSONDecoder()
                decoder.dateDecodingStrategy = .iso8601
                
                let response = try decoder.decode(Response.self, from: data!)
                
                dump(response)
            }
            catch {
                
            }
            
       
            
        }
        
        // Kick off the task
        dataTask.resume()
        
    }
    
}
