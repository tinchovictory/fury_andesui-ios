//
//  AndesCardViewConfigFactory.swift
//  AndesUI
//
//  Created by Martin Victory on 14/07/2020.
//

import Foundation

internal class AndesCardViewConfigFactory {
    static func provideConfig(for card: AndesCard) -> AndesCardViewConfig {
        let type = AndesCardTypeFactory.provide(card.type)
        let padding = AndesCardPaddingFactory.provide(card.padding)
        let style = AndesCardStyleFactory.provide(card.style)
        let hierarchy = AndesCardHierarchyFactory.provide(card.hierarchy, forStyle: style)

        return AndesCardViewConfig(backgroundColor: hierarchy.backgroundColor,
                                   pipeColor: type.pipeColor,
                                   borderColor: hierarchy.borderColor,
                                   padding: padding.paddingSize,
                                   titlePadding: padding.titlePaddingSize,
                                   titleHeight: padding.titleHeight,
                                   shadow: hierarchy.cardShadow,
                                   titleText: card.title,
                                   linkText: card.linkText,
                                   cardView: card.cardView)
    }
}
