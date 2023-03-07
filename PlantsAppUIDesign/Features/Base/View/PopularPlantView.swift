//
//  PopularPlantView.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 07/03/2023.
//

import SwiftUI

struct PopularPlantView: View {
    var body: some View {
        VStack {
            Image("Cactus")
                .resizable()
                .frame(width: UIScreen.main.bounds.width * 0.50, height: 200)
            
            VStack(alignment: .leading) {
                Text("Round Cactus")
                Text("$21.9")
            }
            .font(.system(size: 10, weight: .medium))
            .padding()
            .frame(maxWidth: .infinity)
            .background(
                RoundedRectangle(cornerRadius: 20)
                    .fill(.white)
            )
            .padding()
        }
        .background(
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.appGrayColor)
        )
        .frame(width: UIScreen.main.bounds.width * 0.50)
    }
}

struct PopularPlantView_Previews: PreviewProvider {
    static var previews: some View {
        PopularPlantView()
    }
}
