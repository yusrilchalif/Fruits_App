//
//  SettingView.swift
//  Fructus
//
//  Created by Yusril on 25/02/23.
//

import SwiftUI

struct SettingView: View {
    //MARK: Properties
    @Environment(\.presentationMode) var presentationMode
    
    //MARK: Body
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (spacing: 20){
                    //MARK: Section1
                    GroupBox(
                        label:
                            SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
                    ) {
                        Divider().padding(.vertical, 4)
                        
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruit are naturally low in fat, sodium and calories. None have Cholesterol. Fruits are sources of many essential nutrients, including pottasium, dietary fiber, vitamins and more.")
                                .font(.footnote)
                        }
                    }
                    
                    //MARK: Section2
                    
                    //MARK: Section3
                }//VStack
                .navigationBarTitle(Text("Setting"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//Scroll
        }//NavigationView
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
