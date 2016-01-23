//
//  ListPostsWorker.swift
//  ShorterMethods
//
//  Created by Raymond Law on 1/11/16.
//  Copyright (c) 2016 Raymond Law. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

class ListPostsWorker
{
  let postManager = PostManager()
  
  // MARK: Business Logic
  
  func fetchPostsByAllFollowers(followers: [User], completionHandler: (posts: [Post]?, error: PostManagerError?) -> ())
  {
    var allFollowerPosts = [User: [Post]]()
    for follower in followers {
      fetchPostsByFollower(follower) { (posts: [Post]?, error: PostManagerError?) -> () in
        if let error = error {
          completionHandler(posts: nil, error: error)
        } else if let posts = posts {
          allFollowerPosts[follower] = posts
          if allFollowerPosts.count == followers.count {
            completionHandler(posts: Array(allFollowerPosts.values.flatten()), error: nil)
          }
        }
      }
    }
  }
  
  func fetchPostsByFollower(follower: User, completionHandler: (posts: [Post]?, error: PostManagerError?) -> ())
  {
    postManager.fetchPostsForUser(follower) { (posts: [Post]?, error: PostManagerError?) -> () in
      if let error = error {
        completionHandler(posts: nil, error: error)
      } else if let posts = posts {
        completionHandler(posts: posts, error: nil)
      }
    }
  }
}
