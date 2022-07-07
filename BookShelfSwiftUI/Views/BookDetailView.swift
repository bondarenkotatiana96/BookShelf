//
//  BookDetailView.swift
//  BookShelfSwiftUI
//
//  Created by Tatiana Bondarenko on 7/7/22.
//

//Detail view is built using a VStack and includes: book image, book title, author, release year, pages, language, and a scrollable description. Note: the core details do not scroll, only the description (which will be in a scroll view).
//
//Book items can be deleted

import SwiftUI

struct BookDetailView: View {
    
    @Binding var book: Book
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Image(book.coverArt)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 120)
            
            Text(book.title)
                .font(.title2)
                .fontWeight(.bold)
            Text(book.author)
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            HStack(alignment: .center, spacing: 50) {
                VStack {
                    Text("Release")
                    Text(book.releaseYear)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                VStack {
                    Text("Pages")
                    Text("333")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                VStack {
                    Text("Language")
                    Text("eng")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            VStack(alignment: .leading) {
                Text("Description")
                    .font(.title3)
                    .bold()
                ScrollView {
                    Text(book.description)
                        .font(.body)
                }
            }
            .padding()
        }
    }
}

struct BookDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            BookDetailView(book: .constant(Book(title: "The 10X Rule: The Only Difference Between Success and Failure", author: "Grant Cardone ", coverArt: "10x", releaseYear: "2011", description: """
                Achieve "Massive Action" results and accomplish your business dreams!
                While most people operate with only three degrees of action-no action, retreat, or normal action-if you're after big goals, you don't want to settle for the ordinary. To reach the next level, you must understand the coveted 4th degree of action. This 4th degree, also known as the 10 X Rule, is that level of action that guarantees companies and individuals realize their goals and dreams.

                The 10 X Rule unveils the principle of "Massive Action," allowing you to blast through business clichŽs and risk-aversion while taking concrete steps to reach your dreams. It also demonstrates why people get stuck in the first three actions and how to move into making the 10X Rule a discipline. Find out exactly where to start, what to do, and how to follow up each action you take with more action to achieve Massive Action results.

                Learn the "Estimation of Effort" calculation to ensure you exceed your targets
                Make the Fourth Degree a way of life and defy mediocrity
                Discover the time management myth
                Get the exact reasons why people fail and others succeed
                Know the exact formula to solve problems
                Extreme success is by definition outside the realm of normal action. Instead of behaving like everybody else and settling for average results, take Massive Action with The 10 X Rule, remove luck and chance from your business equation, and lock in massive success.
            """)))
        }
    }
}
