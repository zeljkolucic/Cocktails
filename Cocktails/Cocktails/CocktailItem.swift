//
//  CocktailView.swift
//  Cocktails
//
//  Created by Dunja Maksimovic on 12/15/23.
//

import SwiftUI

struct CocktailItem: View {
    var body: some View {
        VStack {
            Image("preview")
                .resizable()
                .frame(height: 150)
                
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            
            Button {
                print("favorite")
            } label: {
                Image(systemName: "heart.fill")
                    .foregroundColor(Color.white)
                    .padding(8)
                    .background(.favorite)
                    .clipShape(Circle())
            }
        }
        .padding(.bottom, 8)
        .background(.white)
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
    }
}

#Preview {
    CocktailItem()
}
