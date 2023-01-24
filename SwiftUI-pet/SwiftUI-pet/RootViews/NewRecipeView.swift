//
//  NewRecipeView.swift
//  SwiftUI-pet
//
//  Created by Антон Скидан on 24.01.2023.
//

import SwiftUI

struct NewRecipeView: View {
    var body: some View {
        NavigationView {
            Text("Новые рецепты")
                .navigationTitle("Новые рецепты")
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
