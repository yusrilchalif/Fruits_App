//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Yusril on 15/02/23.
//

import SwiftUI

struct OnBoardingView: View {
    //MARK: Properties
    
    //MARK: Body
    var body: some View {
        TabView {
            ForEach(0..<5) { item in
                FruitCardView()
            }//: Loop
        } //: Tab
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 10)
    }
}

//MARK: Preview

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
