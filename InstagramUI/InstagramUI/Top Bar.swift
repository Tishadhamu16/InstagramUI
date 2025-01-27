//
//  Instagram HomePage.swift
//  SwiftUI_Basics
//
//  Created by Tisha Dhamu on 24/01/25.
//

import Foundation
import SwiftUI

struct TopBar : View {
    var body : some View {
        //MARK: Top Bar
        HStack {
            Image("Icons")
                .resizable()
                .frame(width: 40, height: 40)
            Spacer()
            Image("InstagramLogo")
            
            Spacer()
            Image("Igtv")
                .resizable()
                .frame(width: 30, height: 30)
            
            Image("Messenger")
                .resizable()
                .frame(width: 30, height: 25)
            
        }
        .frame(height: 35)
        .padding(5)
        
    }
}


#Preview {
    TopBar()
}
