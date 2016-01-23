//
//  ListPostsModels.swift
//  ShorterMethods
//
//  Created by Raymond Law on 1/11/16.
//  Copyright (c) 2016 Raymond Law. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

enum ListPosts_FetchFollowerPosts_Error: ErrorType
{
  case NotLoggedIn(msg: String)
  case CannotFetch(msg: String)
}

struct ListPosts_FetchFollowerPosts_Request
{
}

struct ListPosts_FetchFollowerPosts_Response
{
  var posts: [Post]?
  var error: ListPosts_FetchFollowerPosts_Error?
}

struct ListPosts_FetchFollowerPosts_ViewModel
{
  struct Post
  {
    var title: String
    var author: String
    var publishedOn: String
  }
  var posts: [Post]?
  var error: String?
}
