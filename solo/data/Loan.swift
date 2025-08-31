//
//  Loan.swift
//  solo
//
//  Created by ZI on 8/31/25.
//

import Foundation

struct Loan: Identifiable {
    let id = UUID()
    var name: String
    var amount: Int
    var status: String
}
