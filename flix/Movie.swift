//
//  Movie.swift
//  flix
//
//  Created by Biswash Adhikari on 3/9/18.
//  Copyright © 2018 Biswash Adhikari. All rights reserved.
//

import Foundation

class Movie {
    var title: String
    var overview: String
    var posterUrl: URL
    var backDropUrl: URL
    var backDropPathString: String
    var posterPathString: String
    var baseURLString: String
    var releaseDate: String
    
    init(dictionary: [String: Any]) {
        title = dictionary["title"] as? String ?? "No title provided"
        overview = dictionary ["overview"] as? String ?? "No overview provided"
        backDropPathString = dictionary ["backdrop_path"] as? String ?? "No backDropPath provided"
        posterPathString = dictionary["poster_path"] as? String ?? "no poster path"
        baseURLString = "https://image.tmdb.org/t/p/w500"
        releaseDate = dictionary["release_date"] as? String ?? "no Release date path"
        posterUrl = URL(string: baseURLString + posterPathString)!
        
        backDropUrl = URL(string: baseURLString+backDropPathString)!
        //posterUrl = URL(string: dictionary["poster_path"] as? String ?? "no poster path")
        // Set the rest of the properties
    }
    
    class func movies(dictionaries: [[String: Any]]) -> [Movie] {
        var movies: [Movie] = []
        for dictionary in dictionaries {
            let movie = Movie(dictionary: dictionary)
            movies.append(movie)
        }
        
        return movies
    }
    
}
