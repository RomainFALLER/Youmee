
//
//  UserService.swift
//  Youmee
//
//  Created by Benoit Fagot on 18/02/2019.
//  Copyright © 2019 FALLER Romain. All rights reserved.
//

import Foundation

class UserService {
    
    func calcAge(birthday: String) -> Int {
        let dateFormater = DateFormatter()
        dateFormater.dateFormat = "dd/MM/yyyy"
        let birthdayDate = dateFormater.date(from: birthday)
        let calendar: NSCalendar! = NSCalendar(calendarIdentifier: .gregorian)
        let now = Date()
        let calcAge = calendar.components(.year, from: birthdayDate!, to: now, options: [])
        let age = calcAge.year
        return age!
    }
}
