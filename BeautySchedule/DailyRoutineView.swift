
import Foundation
import SwiftUI


struct DailyRoutineView: View{
    @ObservedObject var selectedProducts = SelectedProducts()
    var body: some View{
        VStack {
            List(){
                BeautyStageRow(stageTitle: "Cleansing", selectedProduct: "\(selectedProducts.cleansingProductSelected.rawValue)", stageNumber: 1)
                BeautyStageRow(stageTitle: "Toning", selectedProduct: "\(selectedProducts.toningProductSelected.rawValue)", stageNumber: 2)
                BeautyStageRow(stageTitle: "Moisturizer", selectedProduct: "\(selectedProducts.moisturizingAndNourishingProductSelected.rawValue)", stageNumber: 3)
            }
        }
    }
}






