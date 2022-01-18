//
//  GFError.swift
//  GHFollowers
//
//  Created by M100-M1MacMini on 2022/1/18.
//

import Foundation

enum GFError: String, Error {
    case invalidUsername    = "This username created an invalid request.\nPlease try again."
    case unableToComplete   = "Unable to complete your request.\nPlease check your internet connection."
    case invalidResponse    = "Invalid response from the server. Please try again."
    case invalidData        = "The data received from the server was invalid. Please try again."
}
