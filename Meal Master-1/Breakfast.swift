import SwiftUI

struct BRecipe: Identifiable {
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

let BRecipes = [
        BRecipe(name: "Scrambled Eggs", containsProtein: ["Eggs"], containsVegetable: [], timeRequired: 15, calorieCount: 250),
        BRecipe(name: "Oatmeal", containsProtein: [], containsVegetable: [], timeRequired: 10, calorieCount: 150),
        BRecipe(name: "Pancakes", containsProtein: [], containsVegetable: [], timeRequired: 20, calorieCount: 300),
        BRecipe(name: "Yogurt Parfait", containsProtein: ["Yogurt"], containsVegetable: [], timeRequired: 5, calorieCount: 200),
        BRecipe(name: "Omelette", containsProtein: ["Eggs"], containsVegetable: ["Mushrooms", "Peppers", "Onions"], timeRequired: 20, calorieCount: 350),
        BRecipe(name: "Vegetable Frittata", containsProtein: ["Eggs"], containsVegetable: ["Spinach", "Tomato", "Onions", "Peppers"], timeRequired: 25, calorieCount: 320),
        BRecipe(name: "Avocado Toast", containsProtein: [], containsVegetable: ["Avocado", "Tomato", "Spinach"], timeRequired: 10, calorieCount: 280),
        BRecipe(name: "Breakfast Burrito", containsProtein: ["Eggs", "Sausage"], containsVegetable: ["Peppers", "Onions", "Tomato"], timeRequired: 30, calorieCount: 400),
        BRecipe(name: "Pancakes with Berries", containsProtein: [], containsVegetable: [], timeRequired: 15, calorieCount: 350),
        BRecipe(name: "French Toast", containsProtein: ["Eggs"], containsVegetable: [], timeRequired: 15, calorieCount: 280),
]
struct PancakesWithBerriesRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Pancakes with Berries")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "2 cups all-purpose flour",
                    "2 tablespoons sugar",
                    "2 teaspoons baking powder",
                    "1/2 teaspoon salt",
                    "2 large eggs",
                    "1 1/2 cups milk",
                    "1/4 cup unsalted butter, melted",
                    "1 teaspoon vanilla extract",
                    "1 cup mixed berries (e.g., blueberries, strawberries, raspberries)"
                ])
                
                Section(title: "Instructions", content: [
                    "In a large mixing bowl, whisk together the flour, sugar, baking powder, and salt.",
                    "In another bowl, beat the eggs and add the milk, melted butter, and vanilla extract.",
                    "Pour the wet ingredients into the dry ingredients and stir until just combined.",
                    "Gently fold in the mixed berries.",
                    "Heat a griddle or frying pan over medium-high heat and lightly grease it with butter or oil.",
                    "Pour a scoop of pancake batter with berries onto the hot griddle and cook until bubbles form on the surface.",
                    "Flip the pancake and cook until golden brown on both sides.",
                    "Serve the berry pancakes with your favorite toppings, such as maple syrup and extra berries."
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[7].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[7].calorieCount) calories"])
                
            }
            .padding()
            .border(Color.black, width: 5)

        }
    }
}

struct VegetableFrittataRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Vegetable Frittata")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "4 large eggs",
                    "Salt and pepper to taste",
                    "1 cup diced spinach",
                    "1/2 cup diced tomato",
                    "1/4 cup diced onions",
                    "1/4 cup diced peppers",
                    "1/4 cup shredded cheese (optional)",
                    "1 tablespoon olive oil"
                ])
                
                Section(title: "Instructions", content: [
                    "In a bowl, beat the eggs and season with salt and pepper.",
                    "Heat olive oil in an oven-safe skillet over medium heat.",
                    "Add onions and peppers to the skillet and sauté until they are tender.",
                    "Stir in spinach and tomatoes and cook until spinach wilts.",
                    "Pour the beaten eggs over the sautéed vegetables in the skillet.",
                    "Cook for a minute without stirring until the edges start to set.",
                    "Sprinkle cheese over the frittata, if using.",
                    "Transfer the skillet to a preheated oven and broil for a few minutes until the frittata is set and the top is golden brown.",
                    "Remove from the oven, let it cool slightly, then slice and serve."
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[5].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[5].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

struct OmeletteRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Omelette")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "2 large eggs",
                    "Salt and pepper to taste",
                    "1/4 cup diced mushrooms",
                    "1/4 cup diced peppers",
                    "1/4 cup diced onions",
                    "1/4 cup shredded cheese (optional)",
                    "1 tablespoon butter or oil"
                ])
                
                Section(title: "Instructions", content: [
                    "In a bowl, beat the eggs and season with salt and pepper.",
                    "Heat butter or oil in a non-stick skillet over medium heat.",
                    "Add mushrooms, peppers, and onions to the skillet and sauté until they are tender.",
                    "Pour the beaten eggs over the sautéed vegetables in the skillet.",
                    "Let the eggs cook without stirring until the edges start to set.",
                    "Gently lift the edges of the omelette and tilt the skillet to let any uncooked eggs flow to the edges.",
                    "Sprinkle cheese over one half of the omelette, if using.",
                    "Fold the other half of the omelette over the cheese and vegetables.",
                    "Cook for a minute or two until the cheese is melted and the omelette is cooked through.",
                    "Slide it onto a plate and serve."
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[4].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[4].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

// OatmealRecipeView
struct OatmealRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Oatmeal")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "1 cup rolled oats",
                    "2 cups milk",
                    "1/4 cup honey",
                    "1/4 teaspoon salt",
                    "1/2 teaspoon ground cinnamon",
                    "Toppings: fresh fruits, nuts, or seeds (optional)"
                ])
                
                Section(title: "Instructions", content: [
                    "In a saucepan, combine oats, milk, honey, salt, and ground cinnamon.",
                    "Cook over medium heat, stirring occasionally, until the mixture comes to a boil.",
                    "Reduce heat and simmer for about 5 minutes, stirring occasionally, until the oats are cooked and the mixture thickens.",
                    "Remove from heat and let it cool slightly before serving.",
                    "Add your favorite toppings, if desired."
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[1].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[1].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

// ScrambledEggsRecipeView
struct ScrambledEggsRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Scrambled Eggs")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "2 large eggs",
                    "Salt and pepper to taste",
                    "1 tablespoon butter",
                ])
                
                Section(title: "Instructions", content: [
                    "Crack the eggs into a bowl and beat them with a fork or whisk.",
                    "Season with salt and pepper.",
                    "In a non-stick pan, melt butter over medium heat.",
                    "Pour the beaten eggs into the pan and let them cook without stirring until the edges start to set.",
                    "Gently stir and fold the eggs until they are cooked to your desired consistency.",
                    "Serve hot."
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[0].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[0].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

// FrenchToastRecipeView
struct FrenchToastRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("French Toast")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "4 slices of bread",
                    "2 large eggs",
                    "1/4 cup milk",
                    "1/2 teaspoon vanilla extract",
                    "1/2 teaspoon ground cinnamon",
                    "Butter or oil for cooking",
                    "Maple syrup and powdered sugar for serving (optional)"
                ])
                
                Section(title: "Instructions", content: [
                    "In a bowl, whisk together eggs, milk, vanilla extract, and ground cinnamon.",
                    "Dip each slice of bread into the egg mixture, ensuring it's coated on both sides.",
                    "In a skillet, melt butter or heat oil over medium-high heat.",
                    "Cook the dipped bread slices until they are golden brown on both sides.",
                    "Serve with maple syrup and a dusting of powdered sugar if desired."
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[8].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[8].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

// YogurtParfaitRecipeView
struct YogurtParfaitRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Yogurt Parfait")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "1 cup Greek yogurt",
                    "1/2 cup granola",
                    "1/2 cup mixed berries (e.g., strawberries, blueberries)",
                    "1 tablespoon honey"
                ])
                
                Section(title: "Instructions", content: [
                    "In a glass or bowl, layer Greek yogurt, granola, and mixed berries.",
                    "Repeat the layers as desired.",
                    "Drizzle honey on top for added sweetness.",
                    "Serve immediately."
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[3].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[3].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}
// AvocadoToastRecipeView
struct AvocadoToastRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Avocado Toast")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "2 slices of whole-grain bread",
                    "1 ripe avocado",
                    "1 small tomato, sliced",
                    "1 cup fresh spinach leaves",
                    "Salt and pepper to taste",
                    "Red pepper flakes (optional)",
                    "Lemon juice (optional)"
                ])
                
                Section(title: "Instructions", content: [
                    "Toast the slices of whole-grain bread until they are crispy and golden brown.",
                    "Cut the ripe avocado in half, remove the pit, and scoop the flesh into a bowl.",
                    "Mash the avocado with a fork and season with salt, pepper, and a squeeze of lemon juice if desired.",
                    "Spread the mashed avocado evenly onto the toasted bread slices.",
                    "Top the avocado toast with fresh spinach leaves and tomato slices.",
                    "Sprinkle with red pepper flakes for some extra spice, if you like.",
                    "Serve immediately and enjoy your delicious avocado toast!"
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[6].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[6].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

// BreakfastBurritoRecipeView
struct BreakfastBurritoRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Breakfast Burrito")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "2 large eggs",
                    "1/4 lb breakfast sausage",
                    "1/2 cup diced bell peppers (any color)",
                    "1/4 cup diced onions",
                    "1/4 cup diced tomatoes",
                    "Salt and pepper to taste",
                    "1/2 cup shredded cheddar cheese",
                    "4 large flour tortillas",
                    "Salsa (optional)",
                    "Sour cream (optional)"
                ])
                
                Section(title: "Instructions", content: [
                    "In a skillet, cook the breakfast sausage over medium-high heat until browned and cooked through. Break it into small pieces as it cooks.",
                    "Remove the sausage from the skillet and set it aside.",
                    "In the same skillet, sauté the diced bell peppers and onions until they become tender.",
                    "Add the diced tomatoes to the skillet and cook briefly to warm them.",
                    "Whisk the eggs in a bowl and pour them into the skillet with the sautéed vegetables. Scramble the eggs until they're cooked through. Season with salt and pepper.",
                    "Lay out the flour tortillas and divide the scrambled eggs, cooked sausage, and shredded cheddar cheese among them.",
                    "Fold the sides of the tortillas over the filling and roll them up to form burritos.",
                    "Serve the breakfast burritos with salsa and sour cream, if desired.",
                    "Enjoy your hearty breakfast burrito!"
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[7].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[7].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}

// PancakesRecipeView
struct PancakesRecipeView: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 10) {
                Text("Pancakes")
                    .font(.system(size: 35, weight: .heavy))
                    .padding(.top, 10.0)
                
                Section(title: "Ingredients", content: [
                    "2 cups all-purpose flour",
                    "2 tablespoons sugar",
                    "2 teaspoons baking powder",
                    "1/2 teaspoon salt",
                    "2 large eggs",
                    "1 1/2 cups milk",
                    "1/4 cup unsalted butter, melted",
                    "1 teaspoon vanilla extract"
                ])
                
                Section(title: "Instructions", content: [
                    "In a large mixing bowl, whisk together the flour, sugar, baking powder, and salt.",
                    "In another bowl, beat the eggs and add the milk, melted butter, and vanilla extract.",
                    "Pour the wet ingredients into the dry ingredients and stir until just combined.",
                    "Heat a griddle or frying pan over medium-high heat and lightly grease it with butter or oil.",
                    "Pour a scoop of pancake batter onto the hot griddle and cook until bubbles form on the surface.",
                    "Flip the pancake and cook until golden brown on both sides.",
                    "Serve the pancakes with your favorite toppings, such as maple syrup, fresh fruits, or whipped cream."
                ])
                
                Section(title: "Time Required", content: ["\(BRecipes[9].timeRequired) minutes"])
                Section(title: "Calorie Count", content: ["\(BRecipes[9].calorieCount) calories"])
            }
            .padding()
            .border(Color.black, width: 5)
        }
    }
}




struct Section: View {
    let title: String
    let content: [String]

    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            Text(title)
                .font(.system(size: 25, weight: .bold))

            ForEach(content, id: \.self) { item in
                Text(item)
            }
        }
    }
}

struct Breakfast: View {
    @State private var showFilterView = false
    @State private var filterByProtein = false
    @State private var selectedProteinOptions: [String] = []
    @State private var filterByVegetable = false
    @State private var selectedVegetableOptions: [String] = []
    @State private var maxTimeRequired = 120.0
    @State private var maxCalories = 2500.0

    var filteredItems: [BRecipe] {
        var filteredItems = BRecipes

        if filterByProtein && !selectedProteinOptions.isEmpty {
            filteredItems = filteredItems.filter { BRecipe in
                selectedProteinOptions.contains { protein in
                    BRecipe.containsProtein(protein)
                }
            }
        }

        if filterByVegetable && !selectedVegetableOptions.isEmpty {
            filteredItems = filteredItems.filter { BRecipe in
                selectedVegetableOptions.contains { vegetable in
                    BRecipe.containsVegetable(vegetable)
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
                Text("Breakfast")
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

                List(filteredItems) { BRecipe in
                    NavigationLink(destination: {
                        switch BRecipe.name {
                        case "Pancakes":
                            PancakesRecipeView()
                        case "Scrambled Eggs":
                            ScrambledEggsRecipeView()
                        case "French Toast":
                            FrenchToastRecipeView()
                        case "Oatmeal":
                            OatmealRecipeView()
                        case "Omelette":
                            OmeletteRecipeView()
                        case "Vegetable Frittata":
                            VegetableFrittataRecipeView()
                        case "Avocado Toast":
                            AvocadoToastRecipeView()
                        case "Breakfast Burrito":
                            BreakfastBurritoRecipeView()
                        case "Pancakes with Berries":
                            PancakesWithBerriesRecipeView()
                        default:
                            EmptyView()
                        }
                    }) {
                        Text(BRecipe.name)
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

struct Breakfast_Previews: PreviewProvider {
    static var previews: some View {
        Breakfast()
    }
}
