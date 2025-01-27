//
//  footer.swift
//  SwiftUI_Basics
//
//  Created by Tisha Dhamu on 24/01/25.
//

import Foundation
import SwiftUI



struct Footer: View{
    var body: some View{
        Spacer()
        HStack(spacing:20){
            Spacer()
            Image("home")
                .resizable()
                .frame(width: 30, height:30)
            Spacer()
            Image(systemName: "magnifyingglass")
                .resizable()
                .frame(width: 30, height:30)
            Spacer()
            Image(systemName: "plus.app")
                .resizable()
                .frame(width: 30, height:30)
            Spacer()
            Image(systemName: "heart")
                .resizable()
                .frame(width: 30, height:30)
            Spacer()
            Image("feedImage")
                    .resizable()
                    .frame(width:30, height:30)
                    .clipShape(Circle())
            Spacer()
        }
        .frame(height:30)
        .padding(5)
    }
}

#Preview {
    Footer()
}
