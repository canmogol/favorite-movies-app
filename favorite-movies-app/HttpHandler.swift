//
//  HttpHandler.swift
//  favorite-movies-app
//
//  Created by Can A. MOGOL on 14/04/2017.
//  Copyright © 2017 fererlab. All rights reserved.
//

import Foundation

class HttpHandler{

    static func getJson(urlString:String, completionHandler: @escaping(Data?) -> (Void)){
        let urlString = urlString.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed)
        let url = URL(string: urlString!)
        
        let session = URLSession.shared
        let task = session.dataTask(with: url!){ data, response, error in
            if let data = data {
                let httpResponse = response as! HTTPURLResponse
                let statusCode = httpResponse.statusCode
                
                if (statusCode == 200){
                    completionHandler(data as Data)
                }
                
            }else if let error = error {
                print("got error \(error)")
                completionHandler(nil)
            }
            
        }
        task.resume()
    }
}
