import SwiftUI

struct Question1: View {
    var ageGaps = ["<25", "25-40", ">40"]
    @ObservedObject var skinCharecteristic = SkinCharecteristics()
    var body: some View {
        NavigationView{
            VStack{
            Text("What's your age?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
            Picker("Age selection" , selection: $skinCharecteristic.age) {
                    ForEach( ageGaps, id: \.self) {
                        Text($0)
                    }
            }.pickerStyle(InlinePickerStyle())
                 
            NavigationLink("Next", destination: Question2()).foregroundColor(Color.gray)
        }
        }.navigationViewStyle(StackNavigationViewStyle())
        
        
    }
    
}

struct Question2: View {
    @ObservedObject var skinCharecteristic = SkinCharecteristics()
    var body: some View {
        Text("What's your skin type?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
        Picker("Skin type selection", selection: $skinCharecteristic.skinType){
            ForEach(SkinTypes.allCases , id: \.self) {
                Text($0.rawValue)
            }
        }.pickerStyle(InlinePickerStyle())
        
        NavigationLink("Next", destination: Question3()).foregroundColor(Color.gray)
    }
}



struct Question3: View {
    @ObservedObject var skinCharecteristic = SkinCharecteristics()
    var body: some View {
        Text("How often do you use makeUp?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
        Picker("MakeUp frequency selection", selection: $skinCharecteristic.makeupfrequency){
            ForEach(MakeupFrequency.allCases, id: \.self){
                Text($0.rawValue)
            }
        }.pickerStyle(InlinePickerStyle())
        
        NavigationLink("Next", destination: Question4()).foregroundColor(Color.gray)
    }
}



struct Question4: View {
    @ObservedObject var skinCharecteristic = SkinCharecteristics()
    var body: some View {
        Text("What are your concerns?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
        Picker("Concerms selection", selection: $skinCharecteristic.concerns){
            ForEach(Concerns.allCases, id: \.self){
                Text($0.rawValue)
            }
        }.pickerStyle(InlinePickerStyle())
        
        NavigationLink("Next", destination: Question5()).foregroundColor(Color.gray)
    }
}

struct Question5: View {
    @ObservedObject var skinCharecteristic = SkinCharecteristics()
    var body: some View {
        Text("How does your skin react to 2 hours of sun exposure without sunscreen?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
        Picker("Sun reaction selection", selection: $skinCharecteristic.sunReaction){
            ForEach(SunReactions.allCases, id: \.self){
                Text($0.rawValue)
            }
        }.pickerStyle(InlinePickerStyle())
        
        NavigationLink("Next", destination: Question6()).foregroundColor(Color.gray)
    }
}

struct Question6: View {
    @ObservedObject var selectedProducts = SelectedProducts()
    var body: some View {
        Text("What kind of cleansing do you use?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
        Picker("Cleansing product selection", selection: $selectedProducts.cleansingProductSelected){
            ForEach(CleansingProducts.allCases, id: \.self){
                Text($0.rawValue)
            }
        }.pickerStyle(InlinePickerStyle())
        
        NavigationLink("Next", destination: Question7()).foregroundColor(Color.gray)
    }
}

struct Question7: View {
    @ObservedObject var selectedProducts = SelectedProducts()
    var body: some View {
        Text("What kind of toning do you use?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
        Picker("Toning product selection", selection: $selectedProducts.toningProductSelected){
            ForEach(ToningProducts.allCases, id: \.self){
                Text($0.rawValue)
            }
        }.pickerStyle(InlinePickerStyle())
        
        NavigationLink("Next", destination: Question8()).foregroundColor(Color.gray)
    }
}

struct Question8: View {
    @ObservedObject var selectedProducts = SelectedProducts()
    var body: some View {
        Text("What kind of moisturizing and nourishing do you use?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
        Picker("Moisturizing and nourishing product selection", selection: $selectedProducts.moisturizingAndNourishingProductSelected){
            ForEach(MoisturizingAndNourishingProducts.allCases, id: \.self){
                Text($0.rawValue)
            }
        }.pickerStyle(InlinePickerStyle())
        
        NavigationLink("Next", destination: Question9()).foregroundColor(Color.gray)
    }
}

struct Question9: View {
    @ObservedObject var selectedProducts = SelectedProducts()
    @State var quizResultSaved = false
    var body: some View {
        Text("What kind of exfoliation do you use?").foregroundColor(Color.blue.opacity(0.8)).font(.headline)
        Picker("Exfoliation product selection", selection: $selectedProducts.exfoliationProductSelected){
            ForEach(ExfoliationProducts.allCases, id: \.self){
                Text($0.rawValue)
            }
        }.pickerStyle(InlinePickerStyle())

        NavigationLink(destination: MainPageView(), isActive: $quizResultSaved) {
                           Button(action: {
                               self.quizResultSaved = true
                               UserDefaults.standard.set(true, forKey: "quizFinished")
                           }) {
                               Text("Save")
                           }.foregroundColor(Color.gray)
        }
    }
}



