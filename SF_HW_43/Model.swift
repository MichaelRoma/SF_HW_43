//
//  Model.swift
//  SF_HW_43
//
//  Created by Mykhailo Romanovskyi on 12.08.2021.
//

import Foundation

struct CarListModel: Identifiable {
    let name: String
    let title: String
    let aboutTheCar: String
    var id = UUID()
}
