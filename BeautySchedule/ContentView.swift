

import SwiftUI
import Firebase
import FirebaseAuth



struct ContentView: View {
    @State var status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
    @State var quizFinished = UserDefaults.standard.value(forKey: "quizFinished") as? Bool ?? false

    var body: some View {
//        NavigationView{
        VStack{
                if status {
                    Question1()
                } else if status && quizFinished {
                   MainPageView()
                } else{
                    SignIn()
                }
            }.animation(.spring())
                .onAppear {

                    NotificationCenter.default.addObserver(forName: NSNotification.Name("statusChange"), object: nil, queue: .main) { (_) in

                        let status = UserDefaults.standard.value(forKey: "status") as? Bool ?? false
                        self.status = status
                    }
            }
        }
}
    






struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
