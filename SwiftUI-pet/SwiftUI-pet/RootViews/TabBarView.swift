//
//  TabBarView.swift
//  SwiftUI-pet
//
//  Created by Антон Скидан on 24.01.2023.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Домой", systemImage: "house")
                }
            CategoriesView()
                .tabItem {
                    Label("Категории", systemImage: "square.fill.text.grid.1x2")
                }
            NewRecipeView()
                .tabItem {
                    Label("Новые рецепты", systemImage: "plus")
                }
            FavoritesView()
                .tabItem {
                    Label("Избранное", systemImage: "heart")
                }
            SettingsView()
                .tabItem {
                    Label("Настройки", systemImage: "gear")
                }
        }
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
