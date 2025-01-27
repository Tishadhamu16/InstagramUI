//
//  StoryView.swift
//  InstagramUI
//
//  Created by Tisha Dhamu on 27/01/25.
//

import Foundation
import SwiftUI

// MARK: - StoryView Component
struct StoryView: View {
    let story: Story
    var body: some View {
        VStack {
            ZStack{
                Image(story.profilePhoto)
                    .resizable()
                    .frame(width: 62, height: 62)
                    .clipShape(Circle())
                Circle()
                    .stroke(
                        LinearGradient(
                            gradient: .init(colors: [
                                Color(red: 0.9, green: 0.6, blue: 0.2),  // Red
                                Color(red: 0.85, green: 0.10, blue: 0.27),  // Green
                                Color(red: 0.6, green: 0.05, blue: 0.57)   // Blue
                            ]),
                            startPoint: .bottomLeading,
                            endPoint: .topTrailing
                        ),
                        lineWidth: 2
                    )

                
            }
            Text(story.username)
                .font(.caption)
        }
    }
}

// MARK: - StoryBar Component
struct StoryBar: View {
    
    //MARK: Populating data
    let stories: [Story] = [
        Story(profilePhoto: "StoryProfile1", username: "Your Story"),
        Story(profilePhoto: "StoryProfile2", username: "Chandler"),
        Story(profilePhoto: "StoryProfile3", username: "Monica"),
        Story(profilePhoto: "StoryProfile4", username: "Joey"),
        Story(profilePhoto: "StoryProfile5", username: "Phoebee"),
        Story(profilePhoto: "StoryProfile3", username: "Ross"),
        Story(profilePhoto: "StoryProfile2", username: "Daemon"),
        Story(profilePhoto: "StoryProfile1", username: "Elena"),
        Story(profilePhoto: "StoryProfile5", username: "Caroline")
    ]
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(stories) { story in
                    StoryView(story: story)
                }
            }
            .padding(5) //adds padding to the extreme left of the story bar
        }
        .frame(height: 100)
    }
}
#Preview{
    StoryBar()
    
}
