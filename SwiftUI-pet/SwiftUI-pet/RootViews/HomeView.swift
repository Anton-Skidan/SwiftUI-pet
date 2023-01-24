//
//  HomeView.swift
//  SwiftUI-pet
//
//  Created by Антон Скидан on 24.01.2023.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            List(RecipeModel.recipes) { recipe in
                Text(recipe.name)
                    .navigationTitle("Мои рецепты")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

