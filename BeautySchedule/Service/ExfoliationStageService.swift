
struct ExfoliationStageService {
    func getDayOfWeekForExfoliation() -> String{
        let dayForExfoliation = Week.allCases.randomElement()!.rawValue
        return dayForExfoliation
    }
}
