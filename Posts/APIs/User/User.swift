//
//  User.swift
//  ShorterMethods
//
//  Created by Raymond Law on 1/17/16.
//  Copyright © 2016 Raymond Law. All rights reserved.
//

import Foundation

class User: Equatable, Hashable
{
  var id: String
  var firstName: String
  var lastName: String
  var email: String
  var hashValue: Int {
    return id.hashValue
  }
  
  init(id: String, firstName: String, lastName: String, email: String)
  {
    self.id = id
    self.firstName = firstName
    self.lastName = lastName
    self.email = email
  }
}

func ==(lhs: User, rhs: User) -> Bool
{
  return lhs.email == rhs.email
}
