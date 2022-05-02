
import SwiftUI


struct MorningRoutineView: View {
   
    var body: some View{
        VStack{
            Text("Morning").foregroundColor(Color.blue.opacity(0.40)).bold()
//            HeaderMorningRoutine(title: "Morning")
            DailyRoutineView()
            
        }
    }
}



