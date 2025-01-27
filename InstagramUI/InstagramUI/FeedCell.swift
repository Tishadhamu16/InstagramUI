//
//  FeedCell.swift
//  SwiftUI_Basics
//
//  Created by Tisha Dhamu on 24/01/25.
//

import Foundation
import SwiftUI



// MARK: - FeedList Component
struct FeedList: View {
    //MARK: Populate feed data
    @State var feedData: [Feed] = [
        Feed(
            username: "John",
            userProfilePhoto: "StoryProfile1",
            postImage: "post",
            location: "Tokyo,",
            country:"Japan",
            description: "Enjoying the sunset 🌅",
            likes: 120,
            isLiked: true
        ),
        Feed(
 
            username: "Jane",
            userProfilePhoto: "StoryProfile2",
            postImage: "post",
            location: "Tokyo,",
            country:"Japan",
            description: "A day at the beach 🏖️",
            likes: 98,
            isLiked: true
        ),
        Feed(
   
            username: "Alice",
            userProfilePhoto: "StoryProfile3",
            postImage: "post",
            location: "Tokyo,",
            country:"Japan",
            description: "Morning vibes ☕️",
            likes: 210,
            isLiked: false
        )
    ]
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                ForEach(feedData) { feed in
                    FeedView(feed: feed)
                }
            }
        }
    }
}

#Preview {
    FeedList()
}
