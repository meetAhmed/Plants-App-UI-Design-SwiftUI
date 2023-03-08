//
//  PlantCategoryView.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 07/03/2023.
//

import SwiftUI

struct PlantCategoryView: View {
    let category: PlantCategory
    
    var body: some View {
        VStack {
            Image(category.imageName)
                .frame(width: 30, height: 30)
                .padding()
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.appGreenColor.opacity(0.05))
                        .frame(width: 70, height: 70)
                )
            
            Text(category.category)
                .font(.system(size: 10, weight: .medium))
                .padding(.top, 10)
        }
        .padding(6)
    }
}

struct PlantCategoryView_Previews: PreviewProvider {
    static var previews: some View {
        PlantCategoryView(category: PlantService.instance.getPlantCategories()[0])
    }
}
