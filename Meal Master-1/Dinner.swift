import SwiftUI

struct DRecipe: Identifiable {
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

let DRecipes = [
    DRecipe(name: "Grilled Salmon", containsProtein: ["Salmon"], containsVegetable: ["Asparagus", "Zucchini", "Tomato"], timeRequired: 25, calorieCount: 350),
    DRecipe(name: "Pasta Primavera", containsProtein: [], containsVegetable: ["Broccoli", "Carrots", "Peppers", "Zucchini", "Cherry Tomatoes"], timeRequired: 20, calorieCount: 320),
    DRecipe(name: "Beef Stir-Fry", containsProtein: ["Beef"], containsVegetable: ["Broccoli", "Peppers", "Carrots", "Mushrooms"], timeRequired: 30, calorieCount: 400),
    DRecipe(name: "Vegetable Curry", containsProtein: ["Chickpeas"], containsVegetable: ["Cauliflower", "Peas", "Bell Peppers", "Onions"], timeRequired: 35, calorieCount: 280),
    DRecipe(name: "Grilled Portobello Mushrooms", containsProtein: [], containsVegetable: ["Portobello Mushrooms", "Zucchini", "Asparagus", "Peppers"], timeRequired: 15, calorieCount: 260),
    DRecipe(name: "Lemon Herb Roasted Chicken", containsProtein: ["Chicken"], containsVegetable: ["Potatoes", "Carrots", "Onions"], timeRequired: 40, calorieCount: 380),
    DRecipe(name: "Teriyaki Salmon", containsProtein: ["Salmon"], containsVegetable: ["Broccoli", "Carrots", "Snow Peas"], timeRequired: 30, calorieCount: 360),
    DRecipe(name: "Mushroom and Spinach Stuffed Chicken", containsProtein: ["Chicken"], containsVegetable: ["Mushrooms", "Spinach", "Onions"], timeRequired: 35, calorieCount: 320),
    DRecipe(name: "Chickpea and Sweet Potato Curry", containsProtein: ["Chickpeas"], containsVegetable: ["Sweet Potatoes", "Spinach", "Tomato"], timeRequired: 30, calorieCount: 300),
    DRecipe(name: "Honey Glazed BBQ Ribs", containsProtein: ["Pork"], containsVegetable: ["Corn on the Cob", "Cole Slaw"], timeRequired: 50, calorieCount: 450),
]


// Grilled Salmon RecipeView
struct GrilledSalmonRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Grilled Salmon")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Salmon",
                    "Asparagus",
                    "Zucchini",
                    "Tomato",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Season salmon fillets with your favorite spices.",
                    "2. Grill the salmon until it's cooked through and has grill marks.",
                    "3. Grill asparagus, zucchini, and tomato alongside the salmon.",
                    "4. Serve the grilled salmon with the grilled vegetables."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[0].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[0].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// Pasta Primavera RecipeView
struct PastaPrimaveraRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Pasta Primavera")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Pasta",
                    "Broccoli",
                    "Carrots",
                    "Peppers",
                    "Zucchini",
                    "Cherry Tomatoes",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Cook pasta according to package instructions.",
                    "2. Steam or blanch broccoli and carrots until tender-crisp.",
                    "3. Sauté peppers, zucchini, and cherry tomatoes in olive oil until they're cooked.",
                    "4. Combine cooked pasta and sautéed vegetables in a large serving bowl.",
                    "5. Toss everything together and serve your Pasta Primavera hot."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[1].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[1].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// Beef Stir-Fry RecipeView
struct BeefStirFryRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Beef Stir-Fry")
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
                    "2. In a wok or large skillet, stir-fry beef until it's fully cooked.",
                    "3. Add broccoli, carrots, peppers, and mushrooms to the skillet.",
                    "4. Continue stir-frying until the vegetables are tender-crisp.",
                    "5. Serve your Beef Stir-Fry with your choice of sauce or seasoning."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[2].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[2].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// Vegetable Curry RecipeView
struct VegetableCurryRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Vegetable Curry")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Chickpeas",
                    "Cauliflower",
                    "Peas",
                    "Bell Peppers",
                    "Onions",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Sauté onions and bell peppers until they're soft.",
                    "2. Add chickpeas, cauliflower, and peas to the skillet.",
                    "3. Stir in your favorite curry sauce or spices.",
                    "4. Simmer until the vegetables are tender and the curry is flavorful.",
                    "5. Serve your Vegetable Curry with rice or naan."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[3].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[3].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// Grilled Portobello Mushrooms RecipeView
struct GrilledPortobelloMushroomsRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Grilled Portobello Mushrooms")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Portobello Mushrooms",
                    "Zucchini",
                    "Asparagus",
                    "Peppers",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Clean and marinate Portobello mushrooms, zucchini, asparagus, and peppers.",
                    "2. Preheat your grill to medium-high heat.",
                    "3. Grill the vegetables until they're tender and have grill marks.",
                    "4. Serve your Grilled Portobello Mushrooms hot with a side of your choice."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[4].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[4].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// Lemon Herb Roasted Chicken RecipeView
struct LemonHerbRoastedChickenRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Lemon Herb Roasted Chicken")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Chicken",
                    "Potatoes",
                    "Carrots",
                    "Onions",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Season chicken with herbs and lemon zest.",
                    "2. Place chicken, potatoes, carrots, and onions in a roasting pan.",
                    "3. Roast in the oven until the chicken is golden and the vegetables are tender.",
                    "4. Serve your Lemon Herb Roasted Chicken with pan juices."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[5].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[5].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// Teriyaki Salmon RecipeView
struct TeriyakiSalmonRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Teriyaki Salmon")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Salmon",
                    "Broccoli",
                    "Carrots",
                    "Snow Peas",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Marinate salmon with teriyaki sauce.",
                    "2. Sauté or grill salmon until it's cooked to your liking.",
                    "3. Steam or blanch broccoli, carrots, and snow peas.",
                    "4. Serve your Teriyaki Salmon with the steamed vegetables."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[6].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[6].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// Mushroom and Spinach Stuffed Chicken RecipeView
struct MushroomSpinachStuffedChickenRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Mushroom and Spinach Stuffed Chicken")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Chicken",
                    "Mushrooms",
                    "Spinach",
                    "Onions",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Flatten chicken breasts and season with salt and pepper.",
                    "2. Sauté mushrooms, spinach, and onions until tender.",
                    "3. Place the mushroom and spinach mixture on chicken breasts.",
                    "4. Roll up the chicken and secure with toothpicks.",
                    "5. Bake the stuffed chicken until it's cooked through.",
                    "6. Serve hot."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[7].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[7].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// Chickpea and Sweet Potato Curry RecipeView
struct ChickpeaSweetPotatoCurryRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Chickpea and Sweet Potato Curry")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Chickpeas",
                    "Sweet Potatoes",
                    "Spinach",
                    "Tomato",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Sauté onions and garlic in a pot until fragrant.",
                    "2. Add sweet potatoes and cook until slightly tender.",
                    "3. Stir in chickpeas, spinach, and tomato.",
                    "4. Add curry spices and coconut milk.",
                    "5. Simmer until the sweet potatoes are fully cooked and the curry is thickened.",
                    "6. Serve your Chickpea and Sweet Potato Curry with rice or naan."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[8].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[8].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

// Honey Glazed BBQ Ribs RecipeView
struct HoneyGlazedBBQRibsRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Honey Glazed BBQ Ribs")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "Pork Ribs",
                    "Corn on the Cob",
                    "Cole Slaw",
                ])
                
                Section(title: "Instructions", content: [
                    "1. Marinate pork ribs with BBQ sauce and honey glaze.",
                    "2. Grill the ribs until they're tender and caramelized.",
                    "3. Grill or steam corn on the cob.",
                    "4. Serve your Honey Glazed BBQ Ribs with a side of cole slaw and corn on the cob."
                ])
                
                Section(title: "Time Required", content: ["\(DRecipes[9].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(DRecipes[9].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

struct Dinner: View {
    @State private var showFilterView = false
    @State private var filterByProtein = false
    @State private var selectedProteinOptions: [String] = []
    @State private var filterByVegetable = false
    @State private var selectedVegetableOptions: [String] = []
    @State private var maxTimeRequired = 120.0
    @State private var maxCalories = 2500.0

    var filteredItems: [DRecipe] {
        var filteredItems = DRecipes

        if filterByProtein && !selectedProteinOptions.isEmpty {
            filteredItems = filteredItems.filter { DRecipe in
                selectedProteinOptions.contains { protein in
                    DRecipe.containsProtein(protein)
                }
            }
        }

        if filterByVegetable && !selectedVegetableOptions.isEmpty {
            filteredItems = filteredItems.filter { DRecipe in
                selectedVegetableOptions.contains { vegetable in
                    DRecipe.containsVegetable(vegetable)
                }
            }
        }

        filteredItems = filteredItems.filter { $0.timeRequired <= Int(maxTimeRequired) }
        filteredItems = filteredItems.filter { $0.calorieCount <= Int(maxCalories) }

        return filteredItems
    }

    var body: some View {
        NavigationView {
            VStack() {
                Text("Dinner")
                    .font(.system(size: 85, weight: .heavy))

                Button("Show Filters") {
                    showFilterView.toggle()
                }
                .padding()
                .foregroundColor(.white)
                .background(Color.green)
                .cornerRadius(10)

                if showFilterView {
                    FilterView(filterByProtein: $filterByProtein, selectedProteinOptions: $selectedProteinOptions, filterByVegetable: $filterByVegetable, selectedVegetableOptions: $selectedVegetableOptions, maxTimeRequired: $maxTimeRequired, maxCalories: $maxCalories)
                }

                List(filteredItems) { DRecipe in
                    switch DRecipe.name {
                    case "Grilled Salmon":
                        NavigationLink(destination: GrilledSalmonRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Pasta Primavera":
                        NavigationLink(destination: PastaPrimaveraRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Beef Stir-Fry":
                        NavigationLink(destination: BeefStirFryRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Vegetable Curry":
                        NavigationLink(destination: VegetableCurryRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Grilled Portobello Mushrooms":
                        NavigationLink(destination: GrilledPortobelloMushroomsRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Lemon Herb Roasted Chicken":
                        NavigationLink(destination: LemonHerbRoastedChickenRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Teriyaki Salmon":
                        NavigationLink(destination: TeriyakiSalmonRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Mushroom and Spinach Stuffed Chicken":
                        NavigationLink(destination: MushroomSpinachStuffedChickenRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Chickpea and Sweet Potato Curry":
                        NavigationLink(destination: ChickpeaSweetPotatoCurryRecipeView()) {
                            Text(DRecipe.name)
                        }
                    case "Honey Glazed BBQ Ribs":
                        NavigationLink(destination: HoneyGlazedBBQRibsRecipeView()) {
                            Text(DRecipe.name)
                        }
                    default:
                        EmptyView()
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
    }
}

struct Dinner_Previews: PreviewProvider {
    static var previews: some View {
        Dinner()
    }
}
