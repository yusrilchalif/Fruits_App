//
//  FruitCardView.swift
//  Fructus
//
//  Created by Yusril on 14/02/23.
//

import SwiftUI

struct FruitCardView: View {
    //MARK: - Properties
    var fruit: Fruit
    
    @State private var isAnimation: Bool = false
    
    //MARK: - Body
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                // Fruit: - Image
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimation ? 1.0 : 0.6)
                
                // Fruit: - Title
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2
                    )
                // Fruit: - Headline
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                // Button: - Start
                StartButtonView()
            }//: Vstack end
        }//: ZStack end
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimation = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColor), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
}

//MARK: - Preview

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[2])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
