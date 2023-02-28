//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Yusril on 24/02/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    //MARK: Properties
    var fruit: Fruit
    let nutrient: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK: Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutrition value per 100g") {
                Divider().padding(.vertical, 2)
                
                ForEach(0 ..< nutrient.count, id: \.self) { item in
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrient[item])
                        }
                        .foregroundColor(fruit.gradientColor[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }//Box
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
