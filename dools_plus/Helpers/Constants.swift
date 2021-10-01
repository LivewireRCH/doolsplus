//
//  Constants.swift
//  dools_plus
//
//  Created by Captain Starlight on 25/9/21.
//

import Foundation

struct Constants {
    
    static var API_KEY = "AIzaSyC6fGZtoXrbyatExPk59gxKSPtAtD0YQbM"
    static var PLAYLIST_ID = "PLNPoSYWtcNiez4Y7aPKYWV2638N-835E4"
    static var API_URL = "https://youtube.googleapis.com/youtube/v3/playlistItems?part=snippet&maxResults=50&playlistId=\(Constants.PLAYLIST_ID)&key=\(Constants.API_KEY)"
    static var VIDEOCELL_ID = "VideoCell"
    static var YT_EMBED_URL = "https://www.youtube.com/embed/"
}
