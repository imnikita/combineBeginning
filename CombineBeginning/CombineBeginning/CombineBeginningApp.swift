import SwiftUI
import Firebase

@main
struct CombineBeginningApp: App {

    init() {
        FirebaseApp.configure()
    }

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
