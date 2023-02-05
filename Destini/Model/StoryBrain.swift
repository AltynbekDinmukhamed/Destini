//
//  StoryBrain.swift
//  Destini
//
//  Created by Димаш Алтынбек on 05.02.2023.
//

import Foundation

class StoryBrain {
    
    let story = [
        Story(title: "Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: 'Need a ride, boy?'.",
              choise1: "I'll hop in. Thanks for the help!",
              choise1Destination: 2,
              choise2: "Better ask him if he's a murderer first.", choise2Destination: 1),
        Story(title: "He nods slowly, unfazed by the question.",
              choise1: "At least he's honest. I'll climb in.", choise1Destination: 2,
              choise2: "Wait, I know how to change a tire.", choise2Destination: 3),
        Story(title: "As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.",
              choise1: "I love Elton John! Hand him the cassette tape.", choise1Destination: 5,
              choise2: "It's him or me! You take the knife and stab him.", choise2Destination: 4),
        Story(title: "What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?",
              choise1: "The", choise1Destination: 0,
              choise2: "End", choise2Destination: 0),
        Story( title: "As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.",
               choise1: "The", choise1Destination: 0,
               choise2: "End", choise2Destination: 0),
        Story(title: "You bond with the murderer while crooning verses of 'Can you feel the love tonight'. He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: 'Try the pier.'",
              choise1: "The", choise1Destination: 0,
              choise2: "End", choise2Destination: 0)
    ]
    
    var questionNumber = 0
    
    func getText() -> String {
        return story[questionNumber].title
    }
    
    func getChoise1() -> String {
        return story[questionNumber].choise1
    }
    
    func getChoise2() -> String {
        return story[questionNumber].choise2
    }
    
    func nextQuestion(userAnswear: String) {
        let currentChoise = story[questionNumber]
        if userAnswear == story[questionNumber].choise1 {
            questionNumber = currentChoise.choise1Destination
        } else if userAnswear == currentChoise.choise2 {
            questionNumber = currentChoise.choise2Destination
        }
    }
    
}
