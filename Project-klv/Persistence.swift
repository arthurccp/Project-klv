

import CoreData

struct PersistenceController {
    
    func save() {
        let context = container.viewContext

        if context.hasChanges {
            do {
                try context.save()
                print(context)
            } catch {
                // Show some error here
            }
        }
    }
    
    static let shared = PersistenceController()

    let container: NSPersistentContainer

    static var preview: PersistenceController = {
    let controller = PersistenceController(inMemory: true)        

        return controller
    }()

    init(inMemory: Bool = false) {

        container = NSPersistentContainer(name: "Project_klv")

        if inMemory {
            container.persistentStoreDescriptions.first?.url = URL(fileURLWithPath: "/dev/null")
        }

        container.loadPersistentStores { description, error in
            if let error = error {
                fatalError("Error: \(error.localizedDescription)")
            }
        }
    }
}
