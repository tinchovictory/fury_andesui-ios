//
//  AndesCardTitlePosition.swift
//  AndesUI
//
//  Created by Martin Victory on 13/07/2020.
//

import Foundation

/// Used to define the title position of an AndesCard
@objc public enum AndesCardTitlePosition: Int, AndesEnumStringConvertible {
    case inside
	case outside

	public static func keyFor(_ value: AndesCardTitlePosition) -> String {
		switch value {
		case .inside: return "INSIDE"
		case .outside: return "OUTSIDE"
		}
	}
}
