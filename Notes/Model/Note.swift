//
//  Note.swift
//  Notes
//
//  Created by Boris Lysikov on 15.03.2022.
//

import Foundation

struct Note: Identifiable {
    var id = UUID()
    var title: String
    var description: String
}
