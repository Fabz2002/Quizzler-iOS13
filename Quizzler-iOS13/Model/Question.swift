//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by Fabrizio Jesus Diaz Narvaez on 16/04/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let title : String
    let answer : [String]
    let correctAnswer : String
    
    init(q:String,a:[String],correctAnswer:String){
        title=q
        answer=a
        self.correctAnswer=correctAnswer
    }
}
