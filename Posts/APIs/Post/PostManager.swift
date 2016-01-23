//
//  PostManager.swift
//  ShorterMethods
//
//  Created by Raymond Law on 1/17/16.
//  Copyright © 2016 Raymond Law. All rights reserved.
//

import Foundation

enum PostManagerError: ErrorType
{
  case CannotFetch(String)
}

class PostManager
{
  func fetchPostsForUser(user: User, completionHandler: (posts: [Post]?, error: PostManagerError?) -> ())
  {
    let oneDay: Double = 24*60*60
    let user = User(id: "clean-swift", firstName: "Raymond", lastName: "Law", email: "ray@clean-swift.com")
    let posts = [
      Post(title: "View Controller", user: user, timestamp: NSDate(timeIntervalSinceNow: -oneDay)),
      Post(title: "Interactor", user: user, timestamp: NSDate(timeIntervalSinceNow: -oneDay * 2)),
      Post(title: "Presenter", user: user, timestamp: NSDate(timeIntervalSinceNow: -oneDay * 3)),
      Post(title: "Worker", user: user, timestamp: NSDate(timeIntervalSinceNow: -oneDay * 4)),
      Post(title: "Router", user: user, timestamp: NSDate(timeIntervalSinceNow: -oneDay * 5)),
      Post(title: "Configurator", user: user, timestamp: NSDate(timeIntervalSinceNow: -oneDay * 6))
    ]
    completionHandler(posts: posts, error: nil)
  }
}
