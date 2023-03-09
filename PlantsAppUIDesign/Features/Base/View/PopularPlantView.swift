//
//  PopularPlantView.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 07/03/2023.
//

import SwiftUI

struct PopularPlantView: View {
    let plant: Plant
    
    var body: some View {
        ZStack(alignment: .bottom) {
            ZStack(alignment: .topLeading) {
                Image(plant.imageName)
                    .resizable()
                    .scaledToFill()
                    .frame(
                        width: UIScreen.main.bounds.width * 0.65,
                        height: UIScreen.main.bounds.height * 0.42
                    )
                    .clipShape(RoundedRectangle(cornerRadius: 20))
                
                HStack {
                    Circle()
                        .fill(plant.type == .outdoor ? .green : .orange)
                        .frame(width: 7, height: 7)
                    
                    Text(plant.type.rawValue)
                        .font(.system(size: 12, weight: .medium))
                        .foregroundColor(Color.appGreenColor)
                }
                .padding(6)
                .background(
                    RoundedRectangle(cornerRadius: 20)
                        .fill(.white.opacity(0.8))
                )
                .padding(6)
            }
            
            HStack(alignment: .top) {
                VStack(alignment: .leading) {
                    Text(plant.name)
                        .font(.system(size: 14, weight: .semibold))
                    
                    Text(plant.price)
                        .font(.system(size: 22, weight: .bold))
                }
                
                Spacer()
                
                Image(systemName: "heart")
            }
            .padding(8)
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white.opacity(0.8))
            )
            .padding(8)
            .foregroundColor(Color.appGreenColor)
        }
        .frame(
            width: UIScreen.main.bounds.width * 0.65,
            height: UIScreen.main.bounds.height * 0.42
        )
        .padding(6)
    }
}

struct PopularPlantView_Previews: PreviewProvider {
    static var previews: some View {
        PopularPlantView(plant: PlantService.instance.getPlants()[0])
    }
}
