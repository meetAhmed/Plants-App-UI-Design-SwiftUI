//
//  PlantDetailViewModel.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 08/03/2023.
//

import Foundation

class PlantDetailViewModel: ObservableObject {
    let plant: Plant
    @Published var similarPlants: [Plant] = []
    
    init(plant: Plant) {
        self.plant = plant
        similarPlants = PlantService.instance.getPlants().filter { plant.type == $0.type && $0.id != plant.id }
    }
}
