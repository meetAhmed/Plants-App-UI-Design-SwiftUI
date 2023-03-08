//
//  HomeView.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 07/03/2023.
//

import SwiftUI

struct HomeView: View {
    @State var searchText = ""
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        VStack(alignment: .leading) {
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
                    ForEach(viewModel.plantCategories) { category in
                        PlantCategoryView(category: category)
                    }
                }
            }
            
            Text("Popular Plant")
                .font(.system(size: 16, weight: .medium))
                .padding(.top)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(viewModel.plants) { plant in
                        PopularPlantView(plant: plant)
                            .onTapGesture {
                                viewModel.selectedPlant = plant
                            }
                    }
                }
            }
            
            Spacer()
        }
        .padding()
        .fullScreenCover(item: $viewModel.selectedPlant) { plant in
            PlantDetailView(plant: plant)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
