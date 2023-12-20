//
//  HomeView.swift
//  Cocktails
//
//  Created by Dunja Maksimovic on 12/15/23.
//

import SwiftUI

struct HomeView: View {
    
    @State var selectedTab = Tab.cocktails
    
    enum Tab {
        case cocktails
        case favorites
        case profile
    }
    
    var body: some View {
        TabView(selection: $selectedTab) {
            
            CocktailsList()
                .tabItem {
                    Label("Cocktails", systemImage: "wineglass")
                }
                .tag(Tab.cocktails)
                .toolbarBackground(.visible, for: .tabBar)
                .toolbarBackground(Color.accentPrimary, for: .tabBar)
            
            Text("Hello Favorites!")
                .tabItem {
                    Label("Favorites", systemImage: "heart")
                }
                .tag(Tab.favorites)
            
            Text("Hello Profile!")
                .tabItem {
                    Label("Profile", systemImage: "person")
                }
                .tag(Tab.profile)
        }
        .tint(.textSecondary)
    }
}

#Preview {
    HomeView()
}
