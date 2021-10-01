//
//  CacheManager.swift
//  dools_plus
//
//  Created by Captain Starlight on 1/10/21.
//

import Foundation

class CacheManger {
    
    static var cache = [String:Data]()
    
    static func setVideoCache(_ url:String, _ data:Data?) {
        
        // store the image dat and use the url as the key
        cache[url] = data
        
    }
    
    static func getVideoCache(_ url:String) -> Data? {
        
        // try to get the data for the specified url
        return cache[url] 
        
    }
    
    
}
