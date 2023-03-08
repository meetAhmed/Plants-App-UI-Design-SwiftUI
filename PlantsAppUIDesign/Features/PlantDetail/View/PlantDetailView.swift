//
//  PlantDetailView.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 08/03/2023.
//

import SwiftUI

struct PlantDetailView: View {
    @StateObject var viewModel: PlantDetailViewModel
    @Environment(\.presentationMode) var presentationMode
    
    init(plant: Plant) {
        self._viewModel = StateObject(wrappedValue: PlantDetailViewModel(plant: plant))
    }
    
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "chevron.left")
                    .onTapGesture {
                        presentationMode.wrappedValue.dismiss()
                    }
                
                Spacer()
                Text(viewModel.plant.name)
                    .font(.system(size: 16, weight: .semibold))
                Spacer()
                Image(systemName: "heart")
            }
            .padding()
            
            Image(viewModel.plant.coverImageName)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width)
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Description")
                    .font(.system(size: 16, weight: .semibold))
                
                Text(viewModel.plant.description)
                    .font(.system(size: 12, weight: .regular))
                
                HStack(spacing: 20) {
                    VStack(alignment: .leading) {
                        Text("Type")
                            .font(.system(size: 12, weight: .regular))
                        
                        Text(viewModel.plant.type.rawValue)
                            .font(.system(size: 14, weight: .medium))
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Size")
                            .font(.system(size: 12, weight: .regular))
                        
                        Text(viewModel.plant.size.rawValue.capitalized)
                            .font(.system(size: 14, weight: .medium))
                    }
                    
                    VStack(alignment: .leading) {
                        Text("Price")
                            .font(.system(size: 12, weight: .regular))
                        
                        Text(viewModel.plant.price)
                            .font(.system(size: 14, weight: .medium))
                    }
                }
                .padding(.top)
                
                Text("Similar Type")
                    .font(.system(size: 16, weight: .medium))
                    .padding(.top)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack {
                        ForEach(viewModel.similarPlants) { plant in
                            SimilarPlantTypeView(plant: plant)
                        }
                    }
                }
                
                Button {
                    
                } label: {
                    Text("Add to cart")
                        .font(.system(size: 18, weight: .semibold))
                        .padding(22)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 20)
                                .fill(Color.appGreenShade2)
                        )
                }
                .padding(.top)
            }
            .padding()
            .multilineTextAlignment(.leading)
            
            Spacer()
        }
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plant: PlantService.instance.getPlants()[0])
    }
}
