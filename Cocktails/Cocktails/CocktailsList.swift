//
//  CocktailsList.swift
//  Cocktails
//
//  Created by Dunja Maksimovic on 12/15/23.
//

import SwiftUI

struct CocktailsList: View {
    var body: some View {
        NavigationSplitView {
            VStack(alignment: .leading) {
                Text("Alcoholic")
                    .padding(4)
                    .background(.accentSecondary)
                    .padding([.top, .leading], 8)
                ScrollView {
                    LazyVGrid(columns: [GridItem(.flexible()), GridItem(.flexible())], content: {
                        CocktailItem()
                        CocktailItem()
                        CocktailItem()
                        CocktailItem()
                        CocktailItem()
                        CocktailItem()
                        CocktailItem()
                    })
                    .padding(.horizontal, 8)
                    .padding(.bottom)
                }
            }
            .navigationTitle("Cocktails")
            .navigationBarTitleDisplayMode(.inline)
            .background {
                LinearGradient(colors: [.backgroundPrimaryLight, .accentPrimary, .accentPrimary], startPoint: .top, endPoint: .bottom)
            }
            .toolbarBackground(.visible)
            .toolbarBackground(Color.backgroundPrimaryLight)
            .toolbar {
                ToolbarItem {
                    Button {
                        print("search tapped")
                    } label: {
                        Image(systemName: "magnifyingglass.circle")
                            .tint(.textPrimary)
                    }
                }
                
                ToolbarItem {
                    Button {
                        print("search tapped")
                    } label: {
                        Image(systemName: "line.3.horizontal.decrease.circle")
                            .tint(.textPrimary)
                    }
                }
            }
        } detail: {
            Text("Cocktails")
        }
    }
}

#Preview {
    CocktailsList()
}
