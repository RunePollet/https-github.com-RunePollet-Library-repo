//
//  Service.swift
//  Library app
//
//  Created by Rune Pollet on 08/02/2022.
//

import Foundation

class Service {
    
    static func getJSONData() -> [Book] {
        
        let path = Bundle.main.path(forResource: "Data", ofType: "json")
        
        guard path != nil else {
            return [Book]()
        }
        
        let url = URL(fileURLWithPath: path!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            do {
                let decodedData = try decoder.decode( [Book].self, from: data)
                
                return decodedData
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        return [Book]()
    }
}
