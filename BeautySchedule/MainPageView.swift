
import Foundation
import SwiftUI

struct MainPageView: View {
 var data = DataResponder().getDayInfo()
 
    var body: some View {
        VStack {
            Text("\(data)").foregroundColor(Color.blue.opacity(0.3)).font(.subheadline)
            Divider()
            List(){
                Section(header: Text("Today's plan").foregroundColor(Color.blue.opacity(0.4)).font(.headline)) {
                    NavigationRowMorningRoutineView()
                    NavigationRowNightRoutineView()
                }
            }
            Button(action: {
                UserDefaults.standard.set(false, forKey: "status")
                NotificationCenter.default.post(name: NSNotification.Name("statusChange"), object: nil)
                
            }) {
                
                Text("Logout")
            }
        
        }
                
    }
    
}
