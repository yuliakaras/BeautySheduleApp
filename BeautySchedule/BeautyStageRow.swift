
import SwiftUI

struct BeautyStageRow: View {
    
    var stageTitle: String
    var selectedProduct: String
    var stageNumber: Int
    
    var body: some View {
        Section(){
            ZStack(alignment: .leading) {
                
                Color.blue.opacity(0.1)
                
                HStack {
                    ZStack {
                        Circle()
                            .fill(
                                Color.blue.opacity(0.15)
                            )
                        
                        VStack {
                            Text("\(stageNumber)")
                                .font(.system(size: 20, weight: .bold))
                                .foregroundColor(.white)
                        }
                    }
                    .frame(width: 70, height: 70, alignment: .center)
                    
                    VStack(alignment: .leading) {
                        Text(stageTitle)
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.bottom, 5)
                            .foregroundColor(.black)
                        
                        Text(selectedProduct)
                            .padding(.bottom, 5)
                            .foregroundColor(.gray)
                        
                    }
                    .padding(.horizontal, 2)
                }
                .padding(5)
            }
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}



