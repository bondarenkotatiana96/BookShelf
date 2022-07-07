//
//  BookListView.swift
//  BookShelfSwiftUI
//
//  Created by Tatiana Bondarenko on 7/7/22.
//

import SwiftUI

struct BookListView: View {
    
    @ObservedObject var bookViewModel = BookViewModel()
    
    var body: some View {
        NavigationView {
            List {
                ForEach(bookViewModel.books) { book in
                    NavigationLink {
                        BookDetailView(book: .constant(book))
                    } label: {
                        HStack {
                            Image(book.coverArt)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 80)
                                .padding(.vertical)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text(book.title)
                                    .fontWeight(.bold)
                                    .lineLimit(1)
                                Text(book.author)
                                    .font(.subheadline)
                                    .foregroundColor(.secondary)
                                ProgressBar()
                                
                                HStack {
                                    Image(systemName: "heart")
                                    Text("393")
                                    Image(systemName: "message")
                                    Text("192")
                                }
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                            }
                            .padding(.horizontal)
                        }
                    }
                }
                .onDelete(perform: bookViewModel.deleteBook(at:))
            }
            .listStyle(.plain)
            .navigationTitle("Book Shelf")
        }
    }
}

struct BookListView_Previews: PreviewProvider {
    static var previews: some View {
        BookListView()
    }
}

///ZStack View that represents the users reading progress
struct ProgressBar: View {

  var body: some View {
    ZStack(alignment: .leading) {
      Capsule().frame(width: 100, height: 5)
        .opacity(0.3)
        .foregroundColor(.gray)
      Capsule().frame(width: 50, height: 5)
        .foregroundColor(.orange)
    }
  }
}
