
import SwiftUI


struct NightRoutineView: View {
    var data = DataResponder().getTodayDayOfWeek()
    var selectedProducts = SelectedProducts()
    var exfoliationStageService = ExfoliationStageService()
    var body: some View{
        Text("Night").foregroundColor(Color.blue.opacity(0.40)).bold()

        if data == exfoliationStageService.getDayOfWeekForExfoliation() {
                 BeautyStageRow(stageTitle: "Cleansing", selectedProduct: "\(selectedProducts.cleansingProductSelected.rawValue)", stageNumber: 1)
                 BeautyStageRow(stageTitle: "Exfoliation", selectedProduct: "\(selectedProducts.exfoliationProductSelected.rawValue)", stageNumber: 2)
                 BeautyStageRow(stageTitle: "Toning", selectedProduct: "\(selectedProducts.toningProductSelected.rawValue)", stageNumber: 3)
                 BeautyStageRow(stageTitle: "Moisturizer", selectedProduct: "\(selectedProducts.moisturizingAndNourishingProductSelected.rawValue)", stageNumber: 4)
             } else {
                 DailyRoutineView()
             }
    }
}


struct NightRoutineView_Previews: PreviewProvider {
    static var previews: some View {
        NightRoutineView()
    }
}

