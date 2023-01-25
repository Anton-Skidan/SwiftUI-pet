//
//  CategoryView.swift
//  SwiftUI-pet
//
//  Created by Антон Скидан on 25.01.2023.
//

import SwiftUI

struct CategoryView: View {
    var category: RecipeCategory
    
    var recipies: [RecipeModel] {
        RecipeModel.recipes.filter { $0.category == category }
    }
    
    var body: some View {
        ScrollView {
            RecipeList(recipies: recipies)
        }
        .navigationTitle(category.rawValue)
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: .main)
    }
}
