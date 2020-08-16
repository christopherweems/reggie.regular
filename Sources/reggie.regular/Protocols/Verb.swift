//
//  Verb.swift
//  
//
//  Created by Christopher Weems on 8/15/20.
//

import Foundation

public protocol Verb {
    /// A regular expression with one or more capture groups
    var pattern: String { get }
    
    /// `$1` of `pattern`, if not explicitly set
    func defaultEffect(_ content: String) -> String
    
}

public extension Verb {
    /// This can be overridden in implementations
    func defaultEffect(_ content: String) -> String {
        applyingEffect("$1", in: content)
    }
    
}

public extension Verb {
    /// convienence for
    func applyingEffect(_ replacement: String, in content: String) -> String {
        content.replacingOccurrences(of: pattern, with: replacement, options: .regularExpression)
    }
    
}

public extension Verb {
    func callAsFunction(_ content: String) -> String {
        defaultEffect(content)
    }
}
