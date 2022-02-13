//
//  Book.swift
//  Library app
//
//  Created by Rune Pollet on 08/02/2022.
//

import Foundation

struct Book: Decodable, Identifiable {
    
    var title:String
    var author:String
    var isFavourite:Bool
    var currentPage:Int
    var rating:Int
    var id:Int
    var content:[String]
    
}
