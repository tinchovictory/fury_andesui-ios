//
//  AndesCardStyleElevated.swift
//  AndesUI
//
//  Created by Martin Victory on 14/07/2020.
//

import Foundation

struct AndesCardStyleElevated: AndesCardStyleProtocol {
    let shadow: AndesCardShadowConfig?
    let borderColor: UIColor?

    init() {
        self.shadow = AndesCardShadowConfig(shadowColor: .green,
                                            shadowOffset: CGSize(width: 0, height: -8),
                                            shadowRadius: 16,
                                            shadowOpacity: 0.1)
        self.borderColor = nil
    }
}
