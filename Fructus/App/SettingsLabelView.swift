//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Yusril on 28/02/23.
//

import SwiftUI

struct SettingsLabelView: View {
    //MARK: Properties
    var labelText: String
    var labelImage: String
    
    //MARK: Body
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
