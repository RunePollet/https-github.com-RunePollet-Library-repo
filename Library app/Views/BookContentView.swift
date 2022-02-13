//
//  BookContentView.swift
//  Library app
//
//  Created by Rune Pollet on 10/02/2022.
//

import SwiftUI

struct BookContentView: View {
    
    @EnvironmentObject var model:BookModel
    var x:Int
    @State var star = ""
    
    var body: some View {
        
        VStack {
            
            Spacer()
            
            // MARK: Text
            Text("Read me now!")
                .font(.title)
                .fontWeight(.bold)
            
            Spacer()
            
            // MARK: Button as cover of the book
            NavigationLink {
                PagesView(book: model.books[x])
            } label: {
                Image("cover" + String(model.books[x].id))
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 290, alignment: .center)
                        
            }
            
            
            Spacer()

            // MARK: IsFavourite button
            Button {
                if model.books[x].isFavourite == false {
                    star = "star.fill"
                    model.books[x].isFavourite = true
                }
                else {
                    star = "star"
                    model.books[x].isFavourite = false
                }
            } label: {
                Image(systemName: star)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.yellow)
            }
            
            Spacer()

            // MARK: Rating
            VStack {
                Text("Rate \(model.books[x].title)")
                    .font(.headline)
                Picker("", selection: $model.books[x].rating, content: {
                    Text("1").tag(1)
                    Text("2").tag(2)
                    Text("3").tag(3)
                    Text("4").tag(4)
                    Text("5").tag(5)
                })
                    .pickerStyle(SegmentedPickerStyle())
            }
            .padding(.horizontal)
            
            Spacer()
        }
        .navigationBarTitle(model.books[x].title)
        .onAppear(perform: {
            if model.books[x].isFavourite {
                star = "star.fill"
            }
            else {
                star = "star"
            }
        })
        
    }
}

struct BookContentView_Previews: PreviewProvider {
    static var previews: some View {
        let model = BookModel()
        let dummyBook = model.books[0]
        BookContentView(x: 0)
    }
}

