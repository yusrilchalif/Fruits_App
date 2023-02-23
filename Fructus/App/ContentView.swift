//
//  ContentView.swift
//  Fructus
//
//  Created by Yusril on 14/02/23.
//

import SwiftUI

struct ContentView: View {
    //MARK: Properties
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
        }//END: Navigation
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewDevice("iPhone 13 Pro Max")
    }
}
