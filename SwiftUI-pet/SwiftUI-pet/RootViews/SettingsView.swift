//
//  SettingsView.swift
//  SwiftUI-pet
//
//  Created by Антон Скидан on 24.01.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        NavigationView {
            Text("v 1.0.0")
                .navigationTitle("Настройки")
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
