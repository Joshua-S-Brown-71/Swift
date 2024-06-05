import SwiftUI

enum RecipeName: String {
    case scrambledEggs = "Scrambled Eggs"
    case oatmeal = "Oatmeal"
    case pancakes = "Pancakes"
    case yogurtParfait = "Yogurt Parfait"
    case omelette = "Omelette"
    case vegetableFrittata = "Vegetable Frittata"
    case avocadoToast = "Avocado Toast"
    case breakfastBurrito = "Breakfast Burrito"
    case pancakesWithBerries = "Pancakes with Berries"
    case frenchToast = "French Toast"
    case grilledChickenSalad = "Grilled Chicken Salad"
    case quinoaBowl = "Quinoa Bowl"
    case vegetableWrap = "Vegetable Wrap"
    case mushroomRisotto = "Mushroom Risotto"
    case chickenStirFry = "Chicken Stir-Fry"
    case beefStroganoff = "Beef Stroganoff"
    case porkChop = "Pork Chop"
    case mixedSalad = "Mixed Salad"
    case chickenWrap = "Chicken Wrap"
    case spaghettiAglioEOlio = "Spaghetti Aglio e Olio"
    case grilledSalmon = "Grilled Salmon"
    case pastaPrimavera = "Pasta Primavera"
    case beefStirFry = "Beef Stir-Fry"
    case vegetableCurry = "Vegetable Curry"
    case grilledPortobelloMushrooms = "Grilled Portobello Mushrooms"
    case lemonHerbRoastedChicken = "Lemon Herb Roasted Chicken"
    case teriyakiSalmon = "Teriyaki Salmon"
    case mushroomSpinachStuffedChicken = "Mushroom and Spinach Stuffed Chicken"
    case chickpeaSweetPotatoCurry = "Chickpea and Sweet Potato Curry"
    case honeyGlazedBBQRibs = "Honey Glazed BBQ Ribs"
}

struct QRecipe: Identifiable {
    var id = UUID()
    var name: String
    var timeRequired: Int
}

func shuffleRecipes(filteredItems: [QRecipe], shuffledItems: inout [QRecipe], numberOfMeals: Int) {
    shuffledItems = Array(filteredItems.prefix(numberOfMeals))
}

struct QFilterView: View {
    @Binding var maxTimeRequired: Double
    @Binding var numberOfMealsDisplayed: Int
    @Binding var shuffledItems: [QRecipe]

    var body: some View {
        ScrollView {
            VStack {
                HStack{
                    Spacer()
                    Button("Shuffle") {
                        shuffledItems = QRecipes.filter { $0.timeRequired <= Int(maxTimeRequired) }
                            .shuffled()
                            .prefix(numberOfMealsDisplayed)
                            .sorted { $0.name < $1.name }
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.red)
                    .cornerRadius(10)
                    Spacer()
                    Button("Reset Filter") {
                        maxTimeRequired = 20.0
                        numberOfMealsDisplayed = 5
                        shuffleRecipes(filteredItems: QRecipes.filter { $0.timeRequired <= Int(maxTimeRequired) }, shuffledItems: &shuffledItems, numberOfMeals: numberOfMealsDisplayed)
                    }
                    .padding()
                    .foregroundColor(.black)
                    .background(Color.red)
                    .cornerRadius(10)
                    Spacer()

                }
                Text("Time Required: \(Int(maxTimeRequired)) minutes")
                Slider(value: $maxTimeRequired, in: 0...500, step: 1)
                    .onChange(of: maxTimeRequired) { _ in
                        shuffleRecipes(filteredItems: QRecipes.filter { $0.timeRequired <= Int(maxTimeRequired) }, shuffledItems: &shuffledItems, numberOfMeals: numberOfMealsDisplayed)
                    }

                Text("Number of Meals Displayed: \(numberOfMealsDisplayed)")
                Slider(value: Binding<Double>(get: { Double(numberOfMealsDisplayed) }, set: { newValue in numberOfMealsDisplayed = Int(newValue) }), in: 1...10, step: 1)
                    .onChange(of: numberOfMealsDisplayed) { _ in
                        shuffleRecipes(filteredItems: QRecipes.filter { $0.timeRequired <= Int(maxTimeRequired) }, shuffledItems: &shuffledItems, numberOfMeals: numberOfMealsDisplayed)
                    }
            }
        }
        .frame(height: 200)
        .padding()
        .background(Color.green)
    }
}

let QRecipes = [
    QRecipe(name: "Scrambled Eggs", timeRequired: 15),
    QRecipe(name: "Oatmeal", timeRequired: 10),
    QRecipe(name: "Pancakes", timeRequired: 20),
    QRecipe(name: "Yogurt Parfait", timeRequired: 5),
    QRecipe(name: "Omelette", timeRequired: 20),
    QRecipe(name: "Vegetable Frittata", timeRequired: 25),
    QRecipe(name: "Avocado Toast", timeRequired: 10),
    QRecipe(name: "Breakfast Burrito", timeRequired: 30),
    QRecipe(name: "Pancakes with Berries", timeRequired: 15),
    QRecipe(name: "French Toast", timeRequired: 15),
    QRecipe(name: "Grilled Chicken Salad", timeRequired: 20),
    QRecipe(name: "Quinoa Bowl", timeRequired: 25),
    QRecipe(name: "Vegetable Wrap", timeRequired: 15),
    QRecipe(name: "Mushroom Risotto", timeRequired: 30),
    QRecipe(name: "Chicken Stir-Fry", timeRequired: 20),
    QRecipe(name: "Beef Stroganoff", timeRequired: 30),
    QRecipe(name: "Pork Chop", timeRequired: 25),
    QRecipe(name: "Mixed Salad", timeRequired: 10),
    QRecipe(name: "Chicken Wrap", timeRequired: 15),
    QRecipe(name: "Spaghetti Aglio e Olio", timeRequired: 20),
    QRecipe(name: "Grilled Salmon", timeRequired: 25),
    QRecipe(name: "Pasta Primavera", timeRequired: 20),
    QRecipe(name: "Beef Stir-Fry", timeRequired: 30),
    QRecipe(name: "Vegetable Curry", timeRequired: 35),
    QRecipe(name: "Grilled Portobello Mushrooms", timeRequired: 15),
    QRecipe(name: "Lemon Herb Roasted Chicken", timeRequired: 40),
    QRecipe(name: "Teriyaki Salmon", timeRequired: 30),
    QRecipe(name: "Mushroom and Spinach Stuffed Chicken", timeRequired: 35),
    QRecipe(name: "Chickpea and Sweet Potato Curry", timeRequired: 30),
    QRecipe(name: "Honey Glazed BBQ Ribs", timeRequired: 50)
]

struct QuickMeal: View {
    @State private var showQFilterView = false
    @State private var maxTimeRequired = 20.0
    @State private var numberOfMealsDisplayed = 5
    @State private var shuffledItems: [QRecipe] = []

    func recipeDestination(for recipe: QRecipe) -> some View {
        switch RecipeName(rawValue: recipe.name) {
        case .scrambledEggs:
            return AnyView(ScrambledEggsRecipeView())
        case .oatmeal:
            return AnyView(OatmealRecipeView())
        case .pancakes:
            return AnyView(PancakesRecipeView())
        case .yogurtParfait:
            return AnyView(YogurtParfaitRecipeView())
        case .omelette:
            return AnyView(OmeletteRecipeView())
        case .vegetableFrittata:
            return AnyView(VegetableFrittataRecipeView())
        case .avocadoToast:
            return AnyView(AvocadoToastRecipeView())
        case .breakfastBurrito:
            return AnyView(BreakfastBurritoRecipeView())
        case .pancakesWithBerries:
            return AnyView(PancakesWithBerriesRecipeView())
        case .frenchToast:
            return AnyView(FrenchToastRecipeView())
        case .grilledChickenSalad:
            return AnyView(GrilledChickenSaladRecipeView())
        case .quinoaBowl:
            return AnyView(QuinoaBowlRecipeView())
        case .vegetableWrap:
            return AnyView(VegetableWrapRecipeView())
        case .mushroomRisotto:
            return AnyView(MushroomRisottoRecipeView())
        case .chickenStirFry:
            return AnyView(ChickenStirFryRecipeView())
        case .beefStroganoff:
            return AnyView(BeefStroganoffRecipeView())
        case .porkChop:
            return AnyView(PorkChopRecipeView())
        case .mixedSalad:
            return AnyView(MixedSaladRecipeView())
        case .chickenWrap:
            return AnyView(ChickenWrapRecipeView())
        case .spaghettiAglioEOlio:
            return AnyView(SpaghettiAglioEOlioRecipeView())
        case .grilledSalmon:
            return AnyView(GrilledSalmonRecipeView())
        case .pastaPrimavera:
            return AnyView(PastaPrimaveraRecipeView())
        case .beefStirFry:
            return AnyView(BeefStirFryRecipeView())
        case .vegetableCurry:
            return AnyView(VegetableCurryRecipeView())
        case .grilledPortobelloMushrooms:
            return AnyView(GrilledPortobelloMushroomsRecipeView())
        case .lemonHerbRoastedChicken:
            return AnyView(LemonHerbRoastedChickenRecipeView())
        case .teriyakiSalmon:
            return AnyView(TeriyakiSalmonRecipeView())
        case .mushroomSpinachStuffedChicken:
            return AnyView(MushroomSpinachStuffedChickenRecipeView())
        case .chickpeaSweetPotatoCurry:
            return AnyView(ChickpeaSweetPotatoCurryRecipeView())
        case .honeyGlazedBBQRibs:
            return AnyView(HoneyGlazedBBQRibsRecipeView())
        case .none:
            return AnyView(EmptyView())
        }
    }

    var body: some View {
        NavigationView {
            VStack {
                Text("Quick Meal")
                    .font(.system(size: 80, weight: .heavy))
                QFilterView(
                    maxTimeRequired: $maxTimeRequired,
                    numberOfMealsDisplayed: $numberOfMealsDisplayed,
                    shuffledItems: $shuffledItems
                )
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .border(Color.black, width: 5)
                .padding()
                .font(.system(size: 17, weight: .bold))
                Text("Recipes")
                    .font(.system(size: 40,  weight: .heavy))
                List(shuffledItems.prefix(numberOfMealsDisplayed)) { recipe in
                    NavigationLink(destination: recipeDestination(for: recipe)) {
                        Text(recipe.name)
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
            .onAppear {
                shuffleRecipes(filteredItems: QRecipes.filter { $0.timeRequired <= Int(maxTimeRequired) }, shuffledItems: &shuffledItems, numberOfMeals: numberOfMealsDisplayed)
            }
        }
        .navigationBarBackButtonHidden(true)
        .navigationBarItems(leading: BackButtonViewM())
    }
}

struct QuickMeal_Previews: PreviewProvider {
    static var previews: some View {
        QuickMeal()
    }
}
