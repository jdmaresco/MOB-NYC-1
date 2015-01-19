//
//  Aardvark.swift
//  Lesson03
//
//  Created by JD Maresco on 1/19/15.
//  Copyright (c) 2015 General Assembly. All rights reserved.
//

import Foundation

class Aardvark: Animal {
    override func prettyAnimalName() -> String {
        return "Aardvark name: " + self.name
    }
}