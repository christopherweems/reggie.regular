//
//  Verb.Pattern+Extensions.swift
//
//
//  Created by Christopher Weems on 10/18/21.
//

import unstandard

extension Verb.Pattern {
    public init(@StringBuilder<EmptyJoin> _ patternBuilder: () -> Self) {
        self = patternBuilder()
    }
    
}
