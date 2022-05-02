

import Foundation
import SwiftUI


struct WeekRoutineView: View {
    var data = DataResponder().getTodayDayOfWeek()
    var body: some View {
        Text("Week")
        HStack{
            VStack{
                MorningRoutineView()
                NightRoutineView()
                Text("Week: \(data)")
                
            }
        }
    }
}
