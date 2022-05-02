
import SwiftUI
import Firebase

@main
struct BeautyScheduleApp: App {
    init() {
        FirebaseApp.configure()
      }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
