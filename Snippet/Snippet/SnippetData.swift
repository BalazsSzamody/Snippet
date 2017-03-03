//
//  SnippetData.swift
//  Snippet
//
//  Created by Frequent Flyer on 03/03/17.
//  Copyright © 2017 Frequent Flyer. All rights reserved.
//

import Foundation

enum SnippetType: String {
    case Text = "Text"
    case Photo = "Photo"
}

struct SnippetData {
    init() {
        print("new snippet created")
    }
}
