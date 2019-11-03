//
//  AddView.swift
//  DadJokes
//
//  Created by Murillo R. Araujo on 03/11/19.
//  Copyright © 2019 Code In Capsule. All rights reserved.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.managedObjectContext) var moc
    
    @State private var setup: String
    @State private var punchline: String
    @State private var rating = "Silence"
    let ratings = ["Sob", "Sigh", "Silence", "Smirk"]
    
    var body: some View {
        NavigationView {
            List {
                Section {
                    TextField("Setup", text: $setup)
                    TextField("Punchline", text: $punchline)
                    
                    Picker("Rating", selection: $rating) {
                        ForEach(ratings, id:\.self) { rating in
                            Text(rating)
                        }
                    }
                }
            }
            
            Button("Add Joke") {
                let newJoke = Joke(context: self.moc)
                newJoke.setup = self.setup
                newJoke.punchline = self.punchline
                newJoke.rating = self.rating
                
                do {
                    try self.moc.save()
                } catch {
                    print("Whoops! \(error.localizedDescription)")
                }
            }
        }.navigationBarTitle("New Joke")
    }
}

struct AddView_Previews: PreviewProvider {
    static var previews: some View {
        AddView()
    }
}
