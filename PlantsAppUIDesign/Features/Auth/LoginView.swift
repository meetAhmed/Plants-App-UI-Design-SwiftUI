//
//  LoginView.swift
//  PlantsAppUIDesign
//
//  Created by Ahmed Ali on 07/03/2023.
//

import SwiftUI

struct LoginView: View {
    @State var isUserLoggedIn = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image("LoginBackground")
                .resizable()
                .scaledToFit()
                .clipped()
                .frame(maxHeight: .infinity, alignment: .top)
                .ignoresSafeArea()
            
            LinearGradient(
                colors: [.clear, .clear, Color.appGreenColor],
                startPoint: .top,
                endPoint: .bottom
            )
            .ignoresSafeArea()
    
            VStack(alignment: .leading, spacing: 15) {
                Text("Buy Your Favorite\nPlants, Only Here!")
                    .font(.system(size: 24, weight: .semibold))
                    .foregroundColor(.white)
                
                Button {
                    isUserLoggedIn.toggle()
                } label: {
                    Text("Login")
                        .font(.system(size: 18, weight: .medium))
                        .padding(16)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .fill(Color.appGreenColor)
                        )
                }
                
                Button {
                    isUserLoggedIn.toggle()
                } label: {
                    Text("Sign Up")
                        .font(.system(size: 18, weight: .medium))
                        .padding(16)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                        .background(
                            RoundedRectangle(cornerRadius: 10)
                                .strokeBorder(Color.appGreenColor, lineWidth: 1)
                        )
                }
                
                Button {
                    isUserLoggedIn.toggle()
                } label: {
                    Text("Guest")
                        .font(.system(size: 18, weight: .medium))
                        .padding(16)
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity)
                }
            }
            .padding()
        }
        .fullScreenCover(isPresented: $isUserLoggedIn) {
            HomeView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
