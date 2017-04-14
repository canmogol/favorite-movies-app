//
//  JSONParser.swift
//  favorite-movies-app
//
//  Created by Can A. MOGOL on 14/04/2017.
//  Copyright © 2017 fererlab. All rights reserved.
//

import Foundation

class JSONParser {
    static func parse(data: Data) -> [String: AnyObject]? {
        let options = JSONSerialization.ReadingOptions()
        do{
            let json = try JSONSerialization.jsonObject(with: data, options: options) as? [String: AnyObject]
            return json!
        }catch(let parseError){
            print("got error while parsing \(parseError.localizedDescription)")
        }
        return nil
    }
}
