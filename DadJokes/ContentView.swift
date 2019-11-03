//
//  ContentView.swift
//  DadJokes
//
//  Created by Murillo R. Araujo on 03/11/19.
//  Copyright © 2019 Code In Capsule. All rights reserved.
//

import SwiftUI

struct Joke {
    var setup: String
    var punchLine: String
    var rating: String
}

struct ContentView: View {
    var jokes = [
        Joke(setup: "Joke 1", punchLine: "punch 1", rating: "rating 1"),
        Joke(setup: "Joke 2", punchLine: "punch 2", rating: "rating 2"),
        Joke(setup: "Joke 3", punchLine: "punch 3", rating: "rating 3"),
        Joke(setup: "Joke 4", punchLine: "punch 4", rating: "rating 4"),
        Joke(setup: "Joke 5", punchLine: "punch 5", rating: "rating 5")
    ]
    var body: some View {
        List {
            ForEach(jokes, id: \.setup) { joke in
                HStack {
                    EmojiView(for: joke.rating)
                    Text(joke.setup)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
