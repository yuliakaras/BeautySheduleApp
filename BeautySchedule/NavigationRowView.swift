
import Foundation
import SwiftUI

struct NavigationRowMorningRoutineView: View {
    var body: some View {
        Section(){
            ZStack(alignment: .leading) {
                
                Color.blue.opacity(0.1)
                
                HStack {
                    ZStack {
                        VStack {
                            Image(systemName: "sun.max")
                        }
                    }
                    .frame(width: 50, height: 50, alignment: .center)
                    
                    VStack(alignment: .leading) {
                        NavigationLink("Morning routine", destination: MorningRoutineView())
                        
                    }
                    .padding(.horizontal, 1)
                }
                .padding(2)
            }
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}

struct NavigationRowNightRoutineView: View {
    var body: some View {
        Section(){
            ZStack(alignment: .leading) {
                
                Color.blue.opacity(0.1)
                
                HStack {
                    ZStack {
                        VStack {
                            Image(systemName: "moon")
                        }
                    }
                    .frame(width: 50, height: 50, alignment: .center)
                    
                    VStack(alignment: .leading) {
                        NavigationLink("Night routine", destination: NightRoutineView())
                        
                    }
                    .padding(.horizontal, 1)
                }
                .padding(2)
            }
            .clipShape(RoundedRectangle(cornerRadius: 15))
        }
    }
}
