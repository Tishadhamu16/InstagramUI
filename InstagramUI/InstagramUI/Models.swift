//
//  Models.swift
//  InstagramUI
//
//  Created by Tisha Dhamu on 27/01/25.
//

import Foundation

// MARK: - Story Model
struct Story :Identifiable {
    var id: String {
        username
    }
    let profilePhoto: String
    let username: String
}

// MARK: - Feed Model
struct Feed: Identifiable {
    var id: String {username}
    let username: String
    let userProfilePhoto: String
    let postImage: String
    let location : String
    let country : String
    let description: String
    var likes: Int
    var isLiked: Bool    
    /*for clickable like*/

}
