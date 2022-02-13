//
//  BookCardView.swift
//  Library app
//
//  Created by Rune Pollet on 08/02/2022.
//

import SwiftUI

struct BookCardView: View {
    
    var book:Book
    
    var body: some View {
        
        ZStack {
            
            // MARK: Rectangle
            Rectangle()
                .foregroundColor(.white)
            
            VStack {
                // MARK: Title and author
                HStack(alignment: .top) {
                    
                    VStack(alignment: .leading) {
                        Text(book.title)
                            .font(.title)
                            .fontWeight(.bold)
                        Text("Sir " + book.author)
                    }
                    .foregroundColor(.black)
                    
                    Spacer()
                    
                    if book.isFavourite == true {
                        Image(systemName: "star.fill")
                            .resizable()
                            .frame(width: 30, height: 30)
                            .foregroundColor(.yellow)
                    }
                }
                .padding([.top, .leading, .trailing])
                .frame(width: 350)
                
                // MARK: Spacer
                Spacer()
                
                // MARK: Image
                Image("cover" + String(book.id))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 325, height: 470, alignment: .center)
                    .padding(.bottom, 10)
            }
            
        }
        .frame(width: 350, height: 575)
        .cornerRadius(15)
        .shadow(color: .black, radius: 10, x: 0, y: 0)
        .padding(.vertical)
        
    }
}
    
struct BookCardView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        let dummyBook = model.books[0]
        BookCardView(book: dummyBook)
    }
}
