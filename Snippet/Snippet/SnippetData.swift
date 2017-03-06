//
//  SnippetData.swift
//  Snippet
//
//  Created by Frequent Flyer on 03/03/17.
//  Copyright © 2017 Frequent Flyer. All rights reserved.
//

import Foundation

enum SnippetType: String {
    case text = "Text"
    case photo = "Photo"
}


class SnippetData {
    let type: SnippetType
    
    init( snippetType: SnippetType) {
        type = snippetType
        print("\(type.rawValue) snippet created")
    }
}

class TextData: SnippetData{
    let textData: String
    
    init (text: String) {
        textData = text
        super.init(snippetType: .text)
    print("Text snippet data: \(textData)")
    }
}
