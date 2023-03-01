//
//  SettingRowView.swift
//  Fructus
//
//  Created by Yusril on 01/03/23.
//

import SwiftUI

struct SettingRowView: View {
    //MARK: Properties
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDestination: String? = nil
    
    //MARK: Body
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if (linkLabel != nil && linkDestination != nil) {
                    Link(linkLabel!, destination: URL(string: "Https://\(linkDestination!)")!)
                    //Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            } //: HStack
        }//: Vstack
    }
}

struct SettingRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingRowView(name: "Developer", content: "Yusril")
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
        SettingRowView(name: "Website", linkLabel: "My Github Account",
                       linkDestination: "github.com/yusrilchalif")
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 60))
            .padding()
    }
}
