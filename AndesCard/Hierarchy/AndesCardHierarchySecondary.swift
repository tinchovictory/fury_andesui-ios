//
//  AndesCardHierarchySecondary.swift
//  AndesUI
//
//  Created by Martin Victory on 14/07/2020.
//

import Foundation

struct AndesCardHierarchySecondary: AndesCardHierarchyProtocol {
    let backgroundColor: UIColor
    let cardShadow: AndesCardShadowConfig?
    let borderColor: UIColor?

    init() {
        self.backgroundColor = .white
        self.cardShadow = nil
        self.borderColor = nil
    }
}
