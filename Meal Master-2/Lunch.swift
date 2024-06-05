import SwiftUI

struct LRecipe: Identifiable {
    var id = UUID()
    var name: String
    var containsProtein: [String]
    var containsVegetable: [String]
    var timeRequired: Int
    var calorieCount: Int

    func containsProtein(_ protein: String) -> Bool {
        return containsProtein.contains(protein)
    }

    func containsVegetable(_ vegetable: String) -> Bool {
        return containsVegetable.contains(vegetable)
    }
}

let LRecipes = [
    LRecipe(name: "Grilled Chicken Salad", containsProtein: ["Chicken"], containsVegetable: ["Lettuce", "Tomato", "Cucumber", "Onions"], timeRequired: 20, calorieCount: 350),
    LRecipe(name: "Quinoa Bowl", containsProtein: ["Quinoa", "Chickpeas"], containsVegetable: ["Spinach", "Tomato", "Cucumber"], timeRequired: 25, calorieCount: 400),
    LRecipe(name: "Vegetable Wrap", containsProtein: ["Hummus"], containsVegetable: ["Spinach", "Tomato", "Cucumber", "Peppers", "Onions"], timeRequired: 15, calorieCount: 300),
    LRecipe(name: "Mushroom Risotto", containsProtein: ["Mushrooms"], containsVegetable: ["Mushrooms", "Onions", "Peas"], timeRequired: 30, calorieCount: 450),
    LRecipe(name: "Chicken Stir-Fry", containsProtein: ["Chicken"], containsVegetable: ["Broccoli", "Carrots", "Bell Peppers", "Snow Peas"], timeRequired: 20, calorieCount: 380),
    LRecipe(name: "Beef Stroganoff", containsProtein: ["Beef"], containsVegetable: ["Broccoli", "Peppers", "Carrots", "Mushrooms"], timeRequired: 30, calorieCount: 420),
    LRecipe(name: "Pork Chop", containsProtein: ["Pork"], containsVegetable: ["Asparagus", "Zucchini", "Tomato"], timeRequired: 25, calorieCount: 360),
    LRecipe(name: "Mixed Salad", containsProtein: [], containsVegetable: ["Lettuce", "Tomato", "Cucumber"], timeRequired: 10, calorieCount: 250),
    LRecipe(name: "Chicken Wrap", containsProtein: ["Chicken"], containsVegetable: ["Lettuce", "Tomato", "Cucumber", "Onions", "Peppers"], timeRequired: 15, calorieCount: 320),
    LRecipe(name: "Spaghetti Aglio e Olio", containsProtein: [], containsVegetable: ["Garlic", "Chili Flakes", "Parsley"], timeRequired: 20, calorieCount: 300)
]

// Grilled Chicken Salad RecipeView
struct GrilledChickenSaladRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Grilled Chicken Salad")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Grilled chicken",
                    "Lettuce",
                    "Tomato",
                    "Cucumber",
                    "Onions",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Grill the chicken until it's fully cooked.",
                    "2. Slice the grilled chicken into bite-sized pieces.",
                    "3. Wash and chop the lettuce, tomato, cucumber, and onions.",
                    "4. Toss all the ingredients in a large bowl and mix well.",
                    "5. Serve the grilled chicken salad with your favorite dressing."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[0].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[0].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

// Quinoa Bowl RecipeView
struct QuinoaBowlRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Quinoa Bowl")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Quinoa",
                    "Chickpeas",
                    "Spinach",
                    "Tomato",
                    "Cucumber",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Cook quinoa according to package instructions.",
                    "2. Rinse and drain chickpeas.",
                    "3. Wash and chop the spinach, tomato, and cucumber.",
                    "4. In a bowl, combine cooked quinoa, chickpeas, and chopped vegetables.",
                    "5. Toss the ingredients together and mix well.",
                    "6. Serve the quinoa bowl with your choice of dressing or sauce."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[1].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[1].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

// Vegetable Wrap RecipeView
struct VegetableWrapRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Vegetable Wrap")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Hummus",
                    "Spinach",
                    "Tomato",
                    "Cucumber",
                    "Peppers",
                    "Onions",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Spread hummus evenly on a large tortilla.",
                    "2. Place spinach leaves, sliced tomato, cucumber, peppers, and onions on top of the hummus.",
                    "3. Roll up the tortilla, enclosing the vegetables and hummus inside.",
                    "4. Cut the wrap in half and serve."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[2].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[2].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

// Mushroom Risotto RecipeView
struct MushroomRisottoRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Mushroom Risotto")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Mushrooms",
                    "Onions",
                    "Peas",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Slice mushrooms and chop onions.",
                    "2. In a large skillet, sauté mushrooms and onions until they become tender.",
                    "3. Add peas to the skillet and cook briefly.",
                    "4. Prepare risotto according to package instructions.",
                    "5. Combine the sautéed vegetables with the cooked risotto.",
                    "6. Serve the mushroom risotto hot."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[3].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[3].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

// Chicken Stir-Fry RecipeView
struct ChickenStirFryRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Chicken Stir-Fry")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Chicken",
                    "Broccoli",
                    "Carrots",
                    "Bell Peppers",
                    "Snow Peas",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Slice chicken into small pieces.",
                    "2. In a wok or large skillet, stir-fry chicken until it's fully cooked.",
                    "3. Add broccoli, carrots, bell peppers, and snow peas to the skillet.",
                    "4. Stir-fry the vegetables until they're tender-crisp.",
                    "5. Serve the chicken stir-fry with your choice of sauce or seasoning."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[4].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[4].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

// Beef Stroganoff RecipeView
struct BeefStroganoffRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Beef Stroganoff")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Beef",
                    "Broccoli",
                    "Peppers",
                    "Carrots",
                    "Mushrooms",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Slice beef into thin strips.",
                    "2. In a skillet, cook beef until it's fully cooked.",
                    "3. Add broccoli, peppers, carrots, and mushrooms to the skillet.",
                    "4. Sauté the vegetables until they're tender.",
                    "5. Serve the beef stroganoff hot over rice or noodles."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[5].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[5].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}


// Pork Chop RecipeView
struct PorkChopRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Pork Chop")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Pork",
                    "Asparagus",
                    "Zucchini",
                    "Tomato",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Season pork chops with your choice of spices.",
                    "2. Heat a skillet or grill pan and cook the pork chops until they're done.",
                    "3. Wash and chop asparagus, zucchini, and tomato.",
                    "4. Serve the grilled pork chop with a side of the chopped vegetables."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[6].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[6].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

// Mixed Salad RecipeView
struct MixedSaladRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Mixed Salad")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Lettuce",
                    "Tomato",
                    "Cucumber",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Wash and chop lettuce, tomato, and cucumber.",
                    "2. Toss all the chopped vegetables in a bowl.",
                    "3. Serve the mixed salad with your choice of dressing."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[7].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[7].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

// Chicken Wrap RecipeView
struct ChickenWrapRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Chicken Wrap")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Chicken",
                    "Lettuce",
                    "Tomato",
                    "Cucumber",
                    "Onions",
                    "Peppers",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Grill or cook chicken until fully cooked.",
                    "2. Wash and chop lettuce, tomato, cucumber, onions, and peppers.",
                    "3. Lay out a large tortilla.",
                    "4. Place the grilled chicken and chopped vegetables on the tortilla.",
                    "5. Roll up the tortilla, enclosing the ingredients inside.",
                    "6. Cut the wrap in half and serve."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[8].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[8].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

// Spaghetti Aglio e Olio RecipeView
struct SpaghettiAglioEOlioRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Spaghetti Aglio e Olio")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Garlic",
                    "Chili Flakes",
                    "Parsley",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Cook spaghetti according to package instructions.",
                    "2. In a separate pan, heat olive oil and sauté minced garlic and chili flakes until fragrant.",
                    "3. Toss cooked spaghetti with the garlic and chili oil.",
                    "4. Garnish with chopped parsley.",
                    "5. Serve the spaghetti Aglio e Olio hot."
                ])
                
                Section(title: "Time Required", content: ["\(LRecipes[9].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(LRecipes[9].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButtonView())
        }
    }
}

struct Lunch: View {
    @State private var filterByProtein = false
    @State private var selectedProteinOptions: [String] = []
    @State private var filterByVegetable = false
    @State private var selectedVegetableOptions: [String] = []
    @State private var maxTimeRequired = 250.0
    @State private var maxCalories = 2500.0

    var filteredItems: [LRecipe] {
        var filteredItems = LRecipes
        if !selectedProteinOptions.isEmpty {
            filteredItems = filteredItems.filter { LRecipe in
                selectedProteinOptions.contains { protein in
                    LRecipe.containsProtein(protein)
                }
            }
        }
        if !selectedVegetableOptions.isEmpty {
            filteredItems = filteredItems.filter { LRecipe in
                selectedVegetableOptions.contains { vegetable in
                    LRecipe.containsVegetable(vegetable)
                }
            }
        }
        filteredItems = filteredItems.filter { $0.timeRequired <= Int(maxTimeRequired) }
        filteredItems = filteredItems.filter { $0.calorieCount <= Int(maxCalories) }
        return filteredItems
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("Lunch")
                    .font(.system(size: 60, weight: .heavy))
                FilterView(filterByProtein: $filterByProtein, selectedProteinOptions: $selectedProteinOptions, filterByVegetable: $filterByVegetable, selectedVegetableOptions: $selectedVegetableOptions, maxTimeRequired: $maxTimeRequired, maxCalories: $maxCalories)
                    .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                    .border(Color.black, width: 5)
                    .padding()
                    .font(.system(size: 17, weight: .bold))
                Text("Recipes")
                    .font(.system(size: 40,  weight: .heavy))
                List(filteredItems) { LRecipe in
                    NavigationLink(destination: {
                        switch LRecipe.name {
                        case "Grilled Chicken Salad":
                            GrilledChickenSaladRecipeView()
                        case "Quinoa Bowl":
                            QuinoaBowlRecipeView()
                        case "Vegetable Wrap":
                            VegetableWrapRecipeView()
                        case "Mushroom Risotto":
                            MushroomRisottoRecipeView()
                        case "Chicken Stir-Fry":
                            ChickenStirFryRecipeView()
                        case "Beef Stroganoff":
                            BeefStroganoffRecipeView()
                        case "Pork Chop":
                            PorkChopRecipeView()
                        case "Mixed Salad":
                            MixedSaladRecipeView()
                        case "Chicken Wrap":
                            ChickenWrapRecipeView()
                        case "Spaghetti Aglio e Olio":
                            SpaghettiAglioEOlioRecipeView()
                        default:
                            EmptyView()
                        }
                    }) {
                        Text(LRecipe.name)
                    }
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .border(Color.black, width: 5)
                .padding()
            }
            .background(
                Image("mm")
                    .resizable(resizingMode: .tile)
                    .scaledToFill()
                    .frame(maxHeight: 1200)
                    .edgesIgnoringSafeArea(.all)
            )
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButtonViewM())
    }
}

struct Lunch_Previews: PreviewProvider {
    static var previews: some View {
        Lunch()
    }
}

