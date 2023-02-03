//
//  User.swift
//  FilmKu
//
//  Created by Salah Khaled on 02/02/2023.
//  Copyright © 2023 Salah Khaled. All rights reserved.
//

import Foundation

class Movie: NSObject, NSCoding, Codable {

    let items: [Item]
    let errorMessage: String?

    func encode(with coder: NSCoder) {
        coder.encode(items, forKey: "items")
        coder.encode(errorMessage, forKey: "errorMessage")
    }

    required init?(coder: NSCoder) {
        self.items = coder.decodeObject(forKey: "items") as? [Item] ?? []
        self.errorMessage = coder.decodeObject(forKey: "errorMessage") as? String ?? ""

    }
}

extension Movie {

    enum CodingKeys: String, CodingKey {

        case items
        case errorMessage
    }
}
