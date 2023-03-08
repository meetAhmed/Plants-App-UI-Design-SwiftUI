//
//  SimilarPlantTypeView.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 08/03/2023.
//

import SwiftUI

struct SimilarPlantTypeView: View {
    let plant: Plant
    
    var body: some View {
        VStack {
            Image(plant.imageName)
                .resizable()
                .scaledToFill()
                .frame(
                    width: UIScreen.main.bounds.width * 0.45,
                    height: UIScreen.main.bounds.height * 0.20
                )
                .clipShape(RoundedRectangle(cornerRadius: 20))
            
            Text(plant.name)
                .font(.system(size: 12, weight: .medium))
        }
    }
}

struct SimilarPlantTypeView_Previews: PreviewProvider {
    static var previews: some View {
        SimilarPlantTypeView(plant: PlantService.instance.getPlants()[2])
    }
}
