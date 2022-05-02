
import Foundation

class DataResponder {
    
    let date = Date()
    let calendar = Calendar.current
    let dateFormatter = DateFormatter()
    
    func getTodayDayOfWeek () -> String {
    dateFormatter.dateFormat = "EEEE"
    let dayOfTheWeekString = dateFormatter.string(from: date)
    return dayOfTheWeekString
    }
    
    func getDayInfo() -> String {
        dateFormatter.dateFormat = "EEEE, dd MMMM"
        let dayInfoString = dateFormatter.string(from: date)
        return dayInfoString
    }
    
}
