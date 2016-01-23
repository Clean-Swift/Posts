//
//  Post.swift
//  ShorterMethods
//
//  Created by Raymond Law on 1/17/16.
//  Copyright © 2016 Raymond Law. All rights reserved.
//

import Foundation

struct Post: Comparable
{
  var title: String
  var user: User
  var timestamp = NSDate()
  
  init(title: String, user: User, timestamp: NSDate)
  {
    self.title = title
    self.user = user
    self.timestamp = timestamp
  }
}

func <(lhs: Post, rhs: Post) -> Bool
{
  return lhs.timestamp.compare(rhs.timestamp) == .OrderedAscending
}

func ==(lhs: Post, rhs: Post) -> Bool
{
  return lhs.timestamp == rhs.timestamp
}
