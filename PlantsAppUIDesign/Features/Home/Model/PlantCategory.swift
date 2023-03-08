//
//  PlantCategory.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 08/03/2023.
//

import Foundation

struct PlantCategory: Identifiable {
    let id = UUID().uuidString
    let imageName: String
    let category: String
}
