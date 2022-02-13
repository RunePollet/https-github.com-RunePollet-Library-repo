//
//  PagesView.swift
//  Library app
//
//  Created by Rune Pollet on 12/02/2022.
//

import SwiftUI

struct PagesView: View {
    
    var book:Book
    
    var body: some View {
        
        TabView {
            
            ForEach(0..<book.content.count, id:\.self) { index in
            
                VStack(alignment: .trailing) {
                    Text(book.content[index])
                    Spacer()
                    Text(String(index + 1))
                        .font(.headline)
                }
                .padding()
            
            }
        }
        .tabViewStyle(
            PageTabViewStyle(
                indexDisplayMode: .never))
        
    }
}

struct PagesView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        let dummyBook = model.books[0]
        PagesView(book: dummyBook)
    }
}
