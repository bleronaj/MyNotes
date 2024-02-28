//
//  CoreDataManager.swift
//  MyNotes
//
//  Created by blerona on 28.2.24.
//
import Foundation
import CoreData

class CoreDataManager {
   
    static let shared = CoreDataManager(modelName: "MyNotes")
   
    let persistentContainer: NSPersistentContainer
    var viewContext: NSManagedObjectContext {
        return persistentContainer.viewContext
    }
   
    init(modelName: String) {
        persistentContainer = NSPersistentContainer(name: modelName)
    }
   
    func load(completion: (() -> Void)? = nil) {
        persistentContainer.loadPersistentStores { (description, error) in
            guard error == nil else {
                fatalError(error!.localizedDescription)
            }
            completion?()
        }
    }
   
}
