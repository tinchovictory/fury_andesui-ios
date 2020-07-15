//
//  AndesCard.swift
//  AndesUI
//
//  Created by Martin Victory on 13/07/2020.
//

import UIKit

@objc public class AndesCard: UIView {

	internal var contentView: AndesCardView!

	// MARK: - User properties

	/// Sets the internal card view of the AndesCard
    @IBInspectable public var cardView: UIView = UIView() { // TODO: @IBInspectable ?
        didSet { self.updateContentView() }
    }

	/// Sets the title of the AndesCard
    @IBInspectable public var title: String? {
        didSet { self.updateContentView() }
    }

	/// Sets the padding of the AndesCard
    @objc public var padding: AndesCardPadding = .none {
        didSet { self.updateContentView() }
    }

    /// Sets the hierarchy of the AndesCard
    @objc public var hierarchy: AndesCardHierarchy = .primary {
        didSet { self.updateContentView() }
    }

	/// Sets the style of the AndesCard
    @objc public var style: AndesCardStyle = .elevated {
        didSet { self.updateContentView() }
    }

	/// Sets the type of AndesCard
    @objc public var type: AndesCardType = .none {
        didSet { self.updateContentView() }
    }

    internal var linkText: String?

    // closure triggered when user presses the link
    private var onLinkActionPressed: ((_ card: AndesCard) -> Void)?

	// MARK: - Initialization
	public required init?(coder: NSCoder) {
		super.init(coder: coder)
		setup()
	}

	public override init(frame: CGRect) {
		super.init(frame: frame)
		setup()
	}

	public init(cardView: UIView, title: String?, padding: AndesCardPadding = .none, hierarchy: AndesCardHierarchy = .primary, style: AndesCardStyle = .elevated, type: AndesCardType = .none) {
		super.init(frame: .zero)
		self.cardView = cardView
		self.title = title
		self.padding = padding
        self.hierarchy = hierarchy
		self.style = style
		self.type = type
		setup()
	}

	// MARK: - Content View Setup

	private func setup() {
		translatesAutoresizingMaskIntoConstraints = false
        self.backgroundColor = .clear
        drawContentView(with: provideView())
	}

	/// Should return a view depending on which card variant is selected
    private func provideView() -> AndesCardView {
        let config = AndesCardViewConfigFactory.provideConfig(for: self)

        if self.onLinkActionPressed != nil {
            return AndesCardWithLinkView(withConfig: config)
        }

        return AndesCardDefaultView(withConfig: config)
    }

	private func drawContentView(with newView: AndesCardView) {
        self.contentView = newView
        contentView.delegate = self
        addSubview(contentView)
        leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }

    // MARK: - Conent View Update

    /// Check if view needs to be redrawn, and then update it. This method should be called on all modifiers that may need to change which internal view should be rendered
    private func reDrawContentViewIfNeededThenUpdate() {
        let newView = provideView()
        if Swift.type(of: newView) !== Swift.type(of: contentView) {
            contentView.removeFromSuperview()
            drawContentView(with: newView)
        }
        updateContentView()
    }

	private func updateContentView() {
        let config = AndesCardViewConfigFactory.provideConfig(for: self)
        contentView.update(withConfig: config)
    }

    // MARK: - Actions

    /// Link action, when defined a link button will appear
    /// - Parameters:
    ///   - title: Link text
    ///   - handler: handler to trigger on link tap
    @objc public func setLinkAction(_ title: String, handler: ((_ card: AndesCard) -> Void)?) {
        self.linkText = title
        self.onLinkActionPressed = handler
        reDrawContentViewIfNeededThenUpdate()
    }
}

// MARK: - AndesCardViewDelegate
extension AndesCard: AndesCardViewDelegate {
    func onLinkTouchUp() {
        self.onLinkActionPressed?(self)
    }
}

// MARK: - IB Interface
public extension AndesCard {

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
