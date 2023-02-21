//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Yusril on 15/02/23.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: Properties
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    var body: some View {
        TabView {
            ForEach(fruits[0...3]) { item in
                FruitCardView(fruit: item)
            }//: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

//MARK: Preview

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
