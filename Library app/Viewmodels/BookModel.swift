//
//  BookModel.swift
//  Library app
//
//  Created by Rune Pollet on 08/02/2022.
//

import Foundation

class BookModel: ObservableObject {
    
    @Published var books:[Book]
    
    init() {
        books = Service.getJSONData()
    }
}
