import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("mm")
                    .resizable(resizingMode: .tile)
                
                VStack {
                    Spacer()
                    Text("Meal Master")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .multilineTextAlignment(.center)
                        .padding(.bottom, 10.0)
                        .frame(width: 350.0, height: 200.0)
                        .border(Color.green, width: 10)
                        .background(
                            Image("mm2")
                                .resizable()
                                .frame(width: 350.0, height: 200.0)
                        )
                    
                    NavigationLink(destination: QuickMeal()) {
                        Text("QuickMeal")
                    }
                    .frame(width: 350.0, height: 100.0)
                    .border(Color.black, width: 5)
                    .background(
                        Image("mm2")
                            .resizable()
                            .frame(width: 350, height: 100.0)
                    )
                    .font(.largeTitle)
                    .accentColor(.black)
                    
                    NavigationLink(destination: Breakfast()) {
                        Text("Breakfast")
                    }
                    .frame(width: 350.0, height: 100.0)
                    .border(Color.black, width: 5)
                    .background(
                        Image("mm2")
                            .resizable()
                            .frame(width: 350, height: 100.0)
                    )
                    .font(.largeTitle)
                    .accentColor(.black)
                    
                    NavigationLink(destination: Lunch()) {
                        Text("Lunch")
                    }
                    .frame(width: 350.0, height: 100.0)
                    .border(Color.black, width: 5)
                    .background(
                        Image("mm2")
                            .resizable()
                            .frame(width: 350, height: 100.0)
                    )
                    .font(.largeTitle)
                    .accentColor(.black)
                    
                    NavigationLink(destination: Dinner()) {
                        Text("Dinner")
                    }
                    .frame(width: 350.0, height: 100.0)
                    .border(Color.black, width: 5)
                    .background(
                        Image("mm2")
                            .resizable()
                            .frame(width: 350, height: 100.0)
                    )
                    .font(.largeTitle)
                    .accentColor(.black)
                    
                    Spacer()
                }
                .frame(width: 430.0, height: 1200.0)
                .cornerRadius(15.0)
            }
        }
    }
}

struct FilterView: View {
    @Binding var filterByProtein: Bool
    @Binding var selectedProteinOptions: [String]
    @Binding var filterByVegetable: Bool
    @Binding var selectedVegetableOptions: [String]
    @Binding var maxTimeRequired: Double
    @Binding var maxCalories: Double
    var proteinOptions = ["Eggs", "Yogurt", "Sausage", "Chicken", "Beef", "Pork", "Quinoa", "Chickpeas", "Hummus", "Mushrooms", "Tofu", "Salmon", "Chickpeas"]
    var vegetableOptions = ["Mushrooms", "Peppers", "Onions", "Spinach", "Tomato", "Avocado", "Lettuce", "Tomato", "Cucumber", "Onions", "Spinach", "Peppers", "Broccoli", "Carrots", "Bell Peppers", "Snow Peas", "Asparagus", "Zucchini", "Tomato", "Broccoli", "Carrots", "Peppers", "Zucchini", "Cherry Tomatoes", "Cauliflower", "Peas", "Bell Peppers", "Portobello Mushrooms"]

    var body: some View {
        ScrollView {
            VStack {
                Text("Time Required: \(Int(maxTimeRequired)) minutes")
                Slider(value: $maxTimeRequired, in: 0...120, step: 1)

                Text("Max Calories: \(Int(maxCalories))")
                Slider(value: $maxCalories, in: 0...2500, step: 10)
                
                Toggle("Filter by Protein", isOn: $filterByProtein)
                if filterByProtein {
                    List(proteinOptions, id: \.self) { option in
                        MultipleSelectionRow(title: option, isSelected: selectedProteinOptions.contains(option)) {
                            if selectedProteinOptions.contains(option) {
                                selectedProteinOptions.removeAll(where: { $0 == option })
                            } else {
                                selectedProteinOptions.append(option)
                            }
                        }
                    }
                    .frame(height: CGFloat(proteinOptions.count * 10))
                }

                Toggle("Filter by Vegetable", isOn: $filterByVegetable)
                if filterByVegetable {
                    List(vegetableOptions, id: \.self) { option in
                        MultipleSelectionRow(title: option, isSelected: selectedVegetableOptions.contains(option)) {
                            if selectedVegetableOptions.contains(option) {
                                selectedVegetableOptions.removeAll(where: { $0 == option })
                            } else {
                                selectedVegetableOptions.append(option)
                            }
                        }
                    }
                    .frame(height: CGFloat(vegetableOptions.count * 10))
                }
                
                Button(action: {
                    self.filterByProtein = false
                    self.selectedProteinOptions = []
                    self.filterByVegetable = false
                    self.selectedVegetableOptions = []
                    self.maxTimeRequired = 120
                    self.maxCalories = 2500
                }) {
                    Text("Reset Filters")
                        .padding()
                        .foregroundColor(.white)
                        .background(Color.red)
                        .cornerRadius(10)
                }
                .padding()
            }
        }
        .frame(height: 300)
        .padding()
    }
}

struct MultipleSelectionRow: View {
    var title: String
    var isSelected: Bool
    var action: () -> Void

    var body: some View {
        Button(action: {
            self.action()
        }) {
            HStack {
                Text(title)
                Spacer()
                if isSelected {
                    Image(systemName: "checkmark")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

