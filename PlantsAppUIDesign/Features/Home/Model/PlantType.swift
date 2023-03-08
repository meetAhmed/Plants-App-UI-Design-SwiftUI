//
//  PlantType.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 08/03/2023.
//

import Foundation

enum PlantType: String {
    case outdoor, indoor
    
    var rawValue: String {
        switch self {
        case .outdoor:
            return "Outdoor Plant"
        case .indoor:
            return "Indoor Plant"
        }
    }
}
