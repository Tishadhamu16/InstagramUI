//
//  ContentView.swift
//  InstagramUI
//
//  Created by Tisha Dhamu on 27/01/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ScrollView(showsIndicators:false){
                TopBar()
                StoryBar()
                FeedList()
            }
            Footer()
        }
    }
}

#Preview {
    ContentView()
}
