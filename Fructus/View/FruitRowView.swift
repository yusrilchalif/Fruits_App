//
//  FruitRowView.swift
//  Fructus
//
//  Created by Yusril on 21/02/23.
//

import SwiftUI

struct FruitRowView: View {
    //MARK: Properties
    var fruits: Fruit
    
    //MARK: Body
    var body: some View {
        HStack {
            Image(fruits.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruits.gradientColor), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5) {
                Text(fruits.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruits.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }//: Hstack end
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruits: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
