//
//  AndesCardHierarchy.swift
//  AndesUI
//
//  Created by Martin Victory on 13/07/2020.
//

import Foundation

/// Used to define the hierarchy of an AndesCard
@objc public enum AndesCardHierarchy: Int, AndesEnumStringConvertible {
    case primary
    case secondary
    case secondary_dark

	public static func keyFor(_ value: AndesCardHierarchy) -> String {
		switch value {
		case .primary: return "PRIMARY"
		case .secondary: return "SECONDARY"
        case .secondary_dark: return "SECONDARY_DARK"
		}
	}
}
