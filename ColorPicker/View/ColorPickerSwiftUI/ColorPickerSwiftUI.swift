//
//  ColorPickerSwiftUI.swift
//  ColorPicker
//
//  Created by paw on 20.04.2021.
//

import SwiftUI

struct ColorPickerSwiftUI: View {
    @State var buttonColor = Color(.link)
    @State var bcgColor = Color(.systemBackground)
    var body: some View {
        NavigationView{
         
            ZStack{
                bcgColor.edgesIgnoringSafeArea(.all)
                VStack{ColorPicker("Select this button color", selection: $buttonColor).foregroundColor(buttonColor)
                ColorPicker("Select bcg color", selection: $bcgColor)}.padding()}
                .navigationTitle("SwiftUI")
            }
        }
    
}

struct ColorPickerSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerSwiftUI()
    }
}
