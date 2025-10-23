//
//  StoryBrain.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation

struct StoryBrain{
    
    var storyNumber = 0
    
    
    
    let stories = [
        Story(title: "You see a fork in the road.", choice1: "Take a left.", choice2: "Take a right.", choice1Destination: 1, choice2Destination: 2),
        Story(title: "You see a tiger.", choice1: "Run!", choice2: "Fight!", choice1Destination: 0, choice2Destination: 0),
        Story(title: "You find a treasure chest.", choice1: "Open it.", choice2: "Leave it.", choice1Destination: 0, choice2Destination: 0)
    ]
    
    func getStorytitle() -> String {
        return stories[storyNumber].title
    }
    
    func getChoice1() -> String {
        return stories[storyNumber].choice1
    }
    func getChoice2() -> String {
        return stories[storyNumber].choice2
    }
    
    
    mutating  func nextStory(userChoice: String) {
        if userChoice == getChoice1() {
            storyNumber = stories[storyNumber].choice1Destination
        } else {
            storyNumber = stories[storyNumber].choice2Destination
        }
        
        
    }
}
