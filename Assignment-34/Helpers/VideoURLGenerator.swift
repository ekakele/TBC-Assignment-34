//
//  VideoURLGenerator.swift
//  Assignment-34
//
//  Created by Eka Kelenjeridze on 04.01.24.
//

import Foundation

// MARK: - Methods
func generateVideoURL(originalURL: String) -> String? {
    let pattern = #"https:\/\/([^\/]+)\/video\/([^\/]+)\/collection\.json"#
    
    do {
        let regex = try NSRegularExpression(pattern: pattern, options: .caseInsensitive)
        let range = NSRange(location: 0, length: originalURL.count)
        
        if let match = regex.firstMatch(in: originalURL, options: [], range: range) {
            let baseURL = (originalURL as NSString).substring(with: match.range(at: 1))
            let section2 = (originalURL as NSString).substring(with: match.range(at: 2))
            
            let videoURL = "https://\(baseURL)/video/\(section2)/\(section2)~small.mp4"
            return videoURL
        }
    } catch {
        print("Error creating regular expression: \(error)")
    }
    return nil
}
