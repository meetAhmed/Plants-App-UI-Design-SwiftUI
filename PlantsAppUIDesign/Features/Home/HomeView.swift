//
//  HomeView.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 07/03/2023.
//

import SwiftUI

struct HomeView: View {
    @State var searchText = ""
    
    var body: some View {
        VStack {
            Text("Discover Your Plant")
                .font(.system(size: 20, weight: .bold))
            
            HStack {
                Image(systemName: "magnifyingglass")
                Spacer()
                TextField("Find your plant", text: $searchText)
                Spacer()
                Image(systemName: "qrcode.viewfinder")
            }
            .padding()
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.appGreenColor.opacity(0.05))
            )
            
            Text("Plant Category")
                .font(.system(size: 16, weight: .medium))
                .padding(.top)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1..<5) { _ in
                        PlantCategoryView()
                    }
                }
            }
            
            Text("Popular Plant")
                .font(.system(size: 16, weight: .medium))
                .padding(.top)
            
            ScrollView(.horizontal) {
                HStack {
                    ForEach(1..<5) { _ in
                        PopularPlantView()
                    }
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
