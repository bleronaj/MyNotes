//
//  Note+CoreDataProperties.swift
//  MyNotes
//
//  Created by blerona on 28.2.24.
//
//

import Foundation
import CoreData


extension Note {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Note> {
        return NSFetchRequest<Note>(entityName: "Note")
    }

    @NSManaged public var id: UUID?
    @NSManaged public var text: String?
    @NSManaged public var lastUpdated: Date?

}

extension Note : Identifiable {

}
