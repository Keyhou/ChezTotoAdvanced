//
//  Model.swift
//  ChezTotoAdvanced
//
//  Created by Keyhan Mortezaeifar on 21/11/2023.
//

import Foundation

struct Restaurant {
    let name: String
    let address: String
    let website: String
    let phoneNumber: String
    let openingHours: [OpeningHour]
    let image: String
}

struct OpeningHour {
    let day: String
    let openTime: String
    let closeTime: String
}

class OpenedHours {
    func getOpeneninghour () -> [OpeningHour] {
        let openedHours = [
        OpeningHour(day: "Monday", openTime: "", closeTime: "Closed"),
        OpeningHour(day: "Tuesday", openTime: "11h30 - 14h30 •", closeTime: " 18h30 - 22h00"),
        OpeningHour(day: "Wednesday", openTime: "11h30 - 14h30 •", closeTime: " 18h30 - 22h00"),
        OpeningHour(day: "Thursday", openTime: "11h30 - 14h30 •", closeTime: " 18h30 - 22h00"),
        OpeningHour(day: "Friday", openTime: "11h30 - 14h30 •", closeTime: " 18h30 - 22h30"),
        OpeningHour(day: "Saturday", openTime: "11h30 - 14h30 •", closeTime: " 18h30 - 22h30"),
        OpeningHour(day: "Sunday", openTime: "", closeTime: "Closed")
        ]
        return openedHours
    }
}
