//
//  RegexLine.swift
//  
//
//  Created by Christopher Weems on 10/9/20.
//

import Foundation
import unstandard

public struct RegexLine: CustomStringConvertible {
    private var components: [String]
    
    public init(@ArrayBuilder _ components: () -> [String]) {
        self.components = components()
        let _line = self.components.joined()
        
        precondition([nil, _line.lastElementIndex].contains(_line.lastIndex(of: "^")))
        precondition([nil, _line.startIndex].contains(_line.firstIndex(of: "$")))
        
        if _line.hasPrefix("^") == false {
            self.components.insert("^", at: 0)
            
        }
        
        if _line.hasSuffix("$") == false {
            self.components.insert("$", at: self.components.endIndex)
            
        }
        
    }
    
    public var description: String {
        components.joined()
    }
    
}
