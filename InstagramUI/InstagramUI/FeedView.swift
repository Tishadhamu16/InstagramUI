//
//  FeedView.swift
//  InstagramUI
//
//  Created by Tisha Dhamu on 27/01/25.
//

import Foundation
import SwiftUI

// MARK: - FeedView Component
struct FeedView: View {
    @State var feed: Feed
    @State private var showHeartAnimation : Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            //MARK: User Info Row
            HStack {
                VStack {
                    Image(feed.userProfilePhoto)
                        .resizable()
                        .frame(width: 40, height: 40)
                        .clipShape(Circle())
                }
                VStack(alignment: .leading) {
                    Text(feed.username)
                        .fontWeight(.bold)
                    HStack {
                        Text(feed.location)
                        Text(feed.country)
                    }
                }
            }
            
            .padding(.horizontal)
            
            //MARK: Post Image
            ZStack{
                Image(feed.postImage)
                    .resizable()
                    .scaledToFit()
                    .onTapGesture (count:2){
                        if !feed.isLiked {
                            withAnimation (.easeOut(duration: 0.6)) {
                                feed.isLiked.toggle()
                                feed.likes += feed.isLiked ? 1 : -1
                                showHeartAnimation = true
                            }
                            // Reset the heart animation after a brief delay
                            DispatchQueue.main.asyncAfter(deadline: .now() + 0.8) {
                                showHeartAnimation = false
                            }
                        }
                    }
                // Heart animation
                if showHeartAnimation {
                    Image(systemName: "heart.fill")
                        .resizable()
                        .frame(width: 120, height: 100)
                        .foregroundColor(.white)
                        .opacity(showHeartAnimation ? 0.8 : 0) // Fade-in effect
                        .position(
                            x: UIScreen.main.bounds.width / 2,
                            y: UIScreen.main.bounds.height / 4
                        ) // Position the heart animation in the center of the post image
                }
            }
            
            //MARK: post activities
            HStack {
                Button(action: {
                    // Toggle the like status
                    feed.isLiked.toggle()
//                    if feed.isLiked {
//                        feed.likes += 1
//                    } else {
//                        feed.likes -= 1
//                    }
                }) {
                    Image(systemName: feed.isLiked ? "heart.fill" : "heart")
                        .resizable()
                        .frame(width: 24, height: 24)
                        .foregroundColor(feed.isLiked ? .red : .black)
                }
                Image(systemName: "message")
                    .resizable()
                    .frame(width:24, height:24)
                Image(systemName: "location")
                    .resizable()
                    .frame(width:24, height:24)
                Spacer()
                Image(systemName: "bookmark")
                    .resizable()
                    .frame(width:21, height:24)
                
            }
            .padding(10)
            
            //MARK: Post Details
            HStack {
                Image(feed.userProfilePhoto)
                    .resizable()
                    .frame(width: 20, height: 20)
                    .clipShape(Circle())
                Text("\(feed.likes + (feed.isLiked ? 1 : 0)) likes")
                    .font(.subheadline)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding(.leading,10)
            
            //MARK: Description
            HStack {
                Text(feed.username)
                    .fontWeight(.bold)
                Text(feed.description)
                    .font(.body)
                    .lineLimit(2)
                
            }
            .padding(.leading,10)
            //            Divider() // Optional divider for visual separation
        }
    }
}

#Preview {
    FeedView(
        feed: Feed(
            username: "asdf",
            userProfilePhoto: "sadf",
            postImage: "asdf",
            location: "asdfasdf",
            country: "asdf",
            description: "asdfasdfasdfadsf",
            likes: 243,
            isLiked: false
           
        )
    )
}
