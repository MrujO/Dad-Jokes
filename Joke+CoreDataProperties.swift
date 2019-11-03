//
//  Joke+CoreDataProperties.swift
//  DadJokes
//
//  Created by Murillo R. Araujo on 03/11/19.
//  Copyright © 2019 Code In Capsule. All rights reserved.
//
//

import Foundation
import CoreData


extension Joke {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Joke> {
        return NSFetchRequest<Joke>(entityName: "Joke")
    }

    @NSManaged public var setup: String
    @NSManaged public var punchline: String
    @NSManaged public var rating: String

}
