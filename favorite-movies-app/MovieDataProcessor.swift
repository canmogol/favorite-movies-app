//
//  MovieDataProcessor.swift
//  favorite-movies-app
//
//  Created by Can A. MOGOL on 14/04/2017.
//  Copyright © 2017 fererlab. All rights reserved.
//

import Foundation

class MovieDataProcessor {

    static func mapJsonToMovies(object: [String: AnyObject], moviesKey: String) -> [Movie] {
        var mappedMovies: [Movie] = []
        
        guard let movies = object[moviesKey] as? [[String: AnyObject]] else {
            return mappedMovies
        }
        
        for movie in movies {
            guard let id = movie["imdbID"] as? String,
            let name = movie["Title"] as? String,
            let year = movie["Year"] as? String,
                let imageUrl = movie["Poster"] as? String else {continue}
            
            let movieObject = Movie(id: id, title: name, year: year, imageUrl: imageUrl)
            mappedMovies.append(movieObject)
        }
        return mappedMovies
    }
    
    static func write(movies: [Movie]) {
        //
    }
    
}
