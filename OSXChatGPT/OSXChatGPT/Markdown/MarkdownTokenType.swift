//
//  MarkdownTokenType.swift
//  OSXChatGPT
//
//  Created by CoderChan on 2023/4/12.
//

import Foundation

public enum MarkdownTokenType: Hashable {
    /// A keyword, such as `if`, `class`, `let` or attributes such as @available
    case keyword
    /// A token that is part of a string literal
    case string
    /// A reference to a type
    case type
    /// A call to a function or method
    case call
    /// A number, either interger of floating point
    case number
    /// A comment, either single or multi-line
    case comment
    /// A property being accessed, such as `object.property`
    case property
    /// A symbol being accessed through dot notation, such as `.myCase`
    case dotAccess
    /// A preprocessing symbol, such as `#if`
    case preprocessing
    /// A custom token type, containing an arbitrary string
    case custom(String)
}

public extension MarkdownTokenType {
    /// Return a string value representing the token type
    var string: String {
        if case .custom(let type) = self {
            return type
        }

        return "\(self)"
    }
}
