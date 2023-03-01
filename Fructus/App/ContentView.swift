//
//  ContentView.swift
//  Fructus
//
//  Created by Yusril on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
    @State private var isShowSetting: Bool = false
    var fruits: [Fruit] = fruitsData
    
    //MARK: Body
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    NavigationLink(destination: FruitDetailView(fruit: item)) {
                        FruitRowView(fruits: item)
                            .padding(.vertical, 4)
                    }
                }
            }
            .navigationTitle("Fruits")
            .navigationBarItems(
                trailing:
                    Button(action: {
                        isShowSetting = true
                    }) {
                        Image(systemName: "slider.horizontal.3")
                    } //: Button
                    .sheet(isPresented: $isShowSetting) {
                        SettingView()
                    }
            )
        }//END: Navigation
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 13 Pro Max")
    }
}
