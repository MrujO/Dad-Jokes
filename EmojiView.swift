//
//  EmojiView.swift
//  DadJokes
//
//  Created by Murillo R. Araujo on 03/11/19.
//  Copyright © 2019 Code In Capsule. All rights reserved.
//

import SwiftUI

struct EmojiView: View {
    var rating: String
    
    var body: some View {
        switch rating {
        case "rating 1":
            return Text("🤪")
        case "rating 2":
            return Text("🥰")
        case "rating 3":
            return Text("😆")
        case "rating 4":
            return Text("🤯")
        default:
             return Text("🤩")
        }
    }
    
    init(for rating: String) {
        self.rating = rating
    }
}

struct EmojiView_Previews: PreviewProvider {
    static var previews: some View {
        EmojiView(for: "rating 1")
    }
}
