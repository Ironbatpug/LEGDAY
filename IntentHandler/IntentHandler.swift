//
//  IntentHandler.swift
//  IntentHandler
//
//  Created by Molnár Csaba on 2019. 09. 12..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import Intents



class IntentHandler: INExtension, INStartWorkoutIntentHandling {
    
    func handle(intent: INStartWorkoutIntent, completion: @escaping (INStartWorkoutIntentResponse) -> Void) {
        print("Start work intent:", intent)
        
        let userActivity: NSUserActivity? = nil
        
        guard let spokenPhrase = intent.workoutName?.spokenPhrase else {
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActivity))
            return
        }
        
        if spokenPhrase == "walk" ||  spokenPhrase == "run" {
            completion(INStartWorkoutIntentResponse(code: .handleInApp, userActivity: userActivity))
        } else {
            completion(INStartWorkoutIntentResponse(code: .failureNoMatchingWorkout, userActivity: userActivity))
        }
    }
}

