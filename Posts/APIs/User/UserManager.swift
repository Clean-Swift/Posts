//
//  UserManager.swift
//  ShorterMethods
//
//  Created by Raymond Law on 1/17/16.
//  Copyright © 2016 Raymond Law. All rights reserved.
//

import Foundation

class UserManager
{
  func loggedInUser() -> User?
  {
    return User(id: "clean-swift", firstName: "Raymond", lastName: "Law", email: "ray@clean-swift.com")
  }
  
  func followersForUser(user: User) -> [User]
  {
    return [User(id: "clean-swift", firstName: "Raymond", lastName: "Law", email: "ray@clean-swift.com")]
  }
}
