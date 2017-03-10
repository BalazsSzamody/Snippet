//
//  SnippetData.swift
//  Snippet
//
//  Created by Frequent Flyer on 03/03/17.
//  Copyright © 2017 Frequent Flyer. All rights reserved.
//

import Foundation
import UIKit

enum SnippetType: String {
    case Text = "Text"
    case Photo = "Photo"
}


class SnippetData {
    let type: SnippetType
    let date: Date
    
    init( snippetType: SnippetType, creationDate: Date) {
        type = snippetType
        date = creationDate
        print("\(type.rawValue) snippet created at \(date)")
    }
}

class TextData: SnippetData{
    let textData: String
    
    init (text: String, creationDate: Date) {
        textData = text
        super.init(snippetType: .Text, creationDate: creationDate)
    print("Text snippet data: \(textData)")
    }
}

class PhotoData: SnippetData {
    let photoData: UIImage
    
    init(photo: UIImage, creationDate: Date) {
        photoData = photo
        super.init(snippetType: .Photo, creationDate: creationDate)
        print ("Photo snippet data: \(photoData)")
    }
}
