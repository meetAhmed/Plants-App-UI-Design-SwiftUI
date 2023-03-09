//
//  HomeViewModel.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 08/03/2023.
//

import Foundation

class HomeViewModel: ObservableObject {
    @Published var plants = PlantService.instance.getPlants().filter { $0.showOnHomeScreen }
    @Published var plantCategories = PlantService.instance.getPlantCategories()
    @Published var selectedPlant: Plant?
}
