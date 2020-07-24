//
//  AndesCardHierarchySecondaryDark.swift
//  AndesUI
//
//  Created by Martin Victory on 22/07/2020.
//

import Foundation

struct AndesCardHierarchySecondaryDark: AndesCardHierarchyProtocol {
    let backgroundColor: UIColor
    let cardShadow: AndesCardShadowConfig?
    let borderColor: UIColor?

    init() {
        self.backgroundColor = UIColor.Andes.graySolid070
        self.cardShadow = nil
        self.borderColor = nil
    }
}
