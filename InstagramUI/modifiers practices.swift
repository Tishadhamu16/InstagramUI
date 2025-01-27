//
//  modifiers practices.swift
//  InstagramUI
//
//  Created by Tisha Dhamu on 27/01/25.
//

import Foundation
import SwiftUI

struct ImplicitAnimationExample: View {
    @State private var isExpanded = false

    var body: some View {
        VStack {
            Rectangle()
                .frame(width: isExpanded ? 200 : 100, height: 100)
                .border(Color.red)
                .padding(40)
                .border(Color.yellow)
                .padding(20)
                .border(Color.green)
            Button("Toggle") {
                isExpanded.toggle()
            }
        }
        
    }
}

struct Viewwww: View {
  var body: some View {
    Rectangle()
      .fill(Color.red)
      .frame(width: 100, height: 100, alignment: .center)
      .padding(8)
      .border(Color.yellow)
      .foregroundStyle(Color.yellow)
      .padding(16)
//    Rectangle()
//      .frame(width: 116, height: 116)
//      .foregroundStyle(Color.red)
//    Rectangle()
//      .frame(width: 84, height: 84)

  }
}

#Preview {
    Viewwww()
}
