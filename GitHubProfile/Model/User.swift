//
//  UserModel.swift
//  GitHubProfile
//
//  Created by Marco Valentino on 10/22/17.
//  Copyright © 2017 Marco Valentino. All rights reserved.
//

import Foundation

struct User {
    
    let name: String?
    let username: String?
    let bio: String?
    let website: URL?
    let email: String?
    let repoCount: Int?
    let followerCount: Int?
    let followerURL: URL?
    let followingCount: Int?
    let followingURL: URL?
    let createDate: Date?
    
    init?(JSON: [String:Any]) {
        self.name = JSON["name"] as? String
        self.username = JSON["login"] as? String
        self.bio = JSON["bio"] as? String
        self.website = JSON["blog"] as? URL
        self.email = JSON["email"] as? String
        self.repoCount = JSON["public_repos"] as? Int
        self.followerCount = JSON["followers"] as? Int
        self.followerURL = JSON["followers_url"] as? URL
        self.followingCount = JSON["following"] as? Int
        self.followingURL = JSON["following_url"] as? URL
        self.createDate = JSON["created_at"] as? Date
    }

}
