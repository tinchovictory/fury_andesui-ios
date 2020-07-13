//
//  AndesCard.swift
//  AndesUI
//
//  Created by Martin Victory on 13/07/2020.
//

import UIKit

@objc public class AndesCard: UIView {

	internal var contentView: AndesCardView!

	/// Sets the internal card view of the AndesCard
    @IBInspectable public var cardView: UIView = UIView() // TODO: @IBInspectable ?

	/// Sets the title of the AndesCard
    @IBInspectable public var title: String?

	/// Sets the title position of the AndesCard
    @objc public var titlePosition: AndesCardTitlePosition = .inside

	/// Sets the padding of the AndesCard
	@objc public var padding: AndesCardPadding = .none

	/// Sets the style of the AndesCard
	@objc public var style: AndesCardStyle = .elevated

	/// Sets the type of AndesCard
	@objc public var type: AndesCardType = .none

	/// Sets the hierarchy of the AndesCard
	@objc public var hierarchy: AndesCardHierarchy = .primary

	public required init?(coder: NSCoder) {
		super.init(coder: coder)
		setup()
	}

	public override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}

	public init(cardView: UIView, title: String?, titlePosition: AndesCardTitlePosition = .inside, padding: AndesCardPadding = .none, style: AndesCardStyle = .elevated, type: AndesCardType = .none, hierarchy: AndesCardHierarchy = .primary) {
		super.init(frame: .zero)
		self.cardView = cardView
		self.title = title
		self.titlePosition = titlePosition
		self.padding = padding
		self.style = style
		self.type = type
		self.hierarchy = hierarchy
		setup()
	}

	private func setup() {
		translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
        //drawContentView(with: provideView())
	}
}

// MARK: - IB Interface
public extension AndesCard {

    @available(*, unavailable, message: "This property is reserved for Interface Builder. Use 'titlePosition' instead.")
    @IBInspectable var ibTitlePosition: String {
        set(val) {
            self.titlePosition = AndesCardTitlePosition.checkValidEnum(property: "IB titlePosition", key: val)
        }
        get {
            return self.type.toString()
        }
    }

	@available(*, unavailable, message: "This property is reserved for Interface Builder. Use 'padding' instead.")
    @IBInspectable var ibPadding: String {
        set(val) {
            self.padding = AndesCardPadding.checkValidEnum(property: "IB padding", key: val)
        }
        get {
            return self.type.toString()
        }
    }

	@available(*, unavailable, message: "This property is reserved for Interface Builder. Use 'style' instead.")
    @IBInspectable var ibStyle: String {
        set(val) {
            self.style = AndesCardStyle.checkValidEnum(property: "IB style", key: val)
        }
        get {
            return self.type.toString()
        }
    }

	@available(*, unavailable, message: "This property is reserved for Interface Builder. Use 'type' instead.")
    @IBInspectable var ibType: String {
        set(val) {
            self.type = AndesCardType.checkValidEnum(property: "IB type", key: val)
        }
        get {
            return self.type.toString()
        }
    }

	@available(*, unavailable, message: "This property is reserved for Interface Builder. Use 'hierarchy' instead.")
    @IBInspectable var ibHierarchy: String {
        set(val) {
            self.hierarchy = AndesCardHierarchy.checkValidEnum(property: "IB hierarchy", key: val)
        }
        get {
            return self.type.toString()
        }
    }
}
