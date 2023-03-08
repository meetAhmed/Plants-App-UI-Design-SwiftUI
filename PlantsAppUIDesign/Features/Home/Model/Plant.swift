//
//  Plant.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 08/03/2023.
//

import Foundation

struct Plant: Identifiable {
    let id = UUID().uuidString
    let name: String
    let price: String
    let imageName: String
    let description: String
    let type: PlantType
    let size: PlantSize
    let coverImageName: String = "CactusCoverImage"
}
