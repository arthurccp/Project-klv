

import SwiftUI

@main
struct Music_SearchApp: App {
    let persistenceController = PersistenceController.shared
    @Environment(\.scenePhase) var scenePhase
    var body: some Scene {

        WindowGroup {
            ContentView(viewModel: SongListViewModel())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)}
                .onChange(of: scenePhase) { _ in
                    persistenceController.save()
        }
    }
}
