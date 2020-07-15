//
//  AndesCardAbstractView.swift
//  AndesUI
//
//  Created by Martin Victory on 14/07/2020.
//

import UIKit

class AndesCardAbstractView: UIView, AndesCardView {

    // MARK: - Xib Outlets

    @IBOutlet var containerView: UIView!
    @IBOutlet weak var leftPipe: UIView!
    @IBOutlet weak var userViewContainer: UIView!
    @IBOutlet weak var titleContainer: UIView!
    @IBOutlet weak var titleLbl: UILabel!

    @IBOutlet weak var topUserViewContainerConstraint: NSLayoutConstraint!
    @IBOutlet weak var leadingUserViewContainerConstraint: NSLayoutConstraint!
    @IBOutlet weak var trailingUserViewContainerConstraint: NSLayoutConstraint!
    @IBOutlet weak var bottomUserViewContainerConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleContainerHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLblLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var titleLblTrailingConstraint: NSLayoutConstraint!

    // MARK: - View initialization

    private var config: AndesCardViewConfig
    private weak var userCardView: UIView?

    init(withConfig config: AndesCardViewConfig) {
        self.config = config
        super.init(frame: .zero)
        setup()
    }

    required init?(coder: NSCoder) {
        self.config = AndesCardViewConfig()
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        loadNib()
        translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(containerView)
        containerView.pinToSuperview()
        containerView.layer.cornerRadius = 6
        containerView.clipsToBounds = true

        userViewContainer.backgroundColor = .clear
        titleLbl.setAndesStyle(style: AndesFontStyle(textColor: UIColor.Andes.gray800, font: AndesStyleSheetManager.styleSheet.semiboldSystemFontOfSize(size: 16), lineSpacing: 1))

        updateView()
    }

    /// Override this method on each Card View to setup its unique Xib
    internal func loadNib() {
        fatalError("This should be overriden by a subclass")
    }

    // MARK: - View configuration

    /// Override this method on each Card View to setup its unique components
    internal func updateView() {
        containerView.backgroundColor = config.backgroundColor
        leftPipe.backgroundColor = config.pipeColor

        updateUserView()
        updatePadding()
        updateBorder()
        updateShadow()
        updateTitle()
    }

    private func updateUserView() {
        if let userCardView = self.userCardView, userCardView == config.cardView {
            return
        }

        userCardView?.removeFromSuperview()
        userCardView = config.cardView

        userViewContainer.addSubview(userCardView!)
        userCardView?.pinToSuperview()
    }

    private func updatePadding() {
        topUserViewContainerConstraint.constant = CGFloat(config.padding)
        leadingUserViewContainerConstraint.constant = CGFloat(config.padding)
        trailingUserViewContainerConstraint.constant = CGFloat(config.padding)
        bottomUserViewContainerConstraint.constant = CGFloat(config.padding)
    }

    private func updateBorder() {
        if let borderColor = config.borderColor {
            containerView.layer.borderColor = borderColor.cgColor
            containerView.layer.borderWidth = 1
        } else {
            containerView.layer.borderWidth = 0
        }
    }

    private func updateShadow() {
        if let shadowConfig = config.shadow {
            layer.shadowColor = shadowConfig.shadowColor.cgColor
            layer.shadowOffset = shadowConfig.shadowOffset
            layer.shadowOpacity = shadowConfig.shadowOpacity
            layer.shadowRadius = shadowConfig.shadowRadius
        } else {
            layer.shadowColor = UIColor.clear.cgColor
        }
    }

    private func updateTitle() {
        guard let titleText = config.titleText else {
            titleLbl.isHidden = true
            titleContainerHeightConstraint.constant = 0
            return
        }

        titleLbl.isHidden = false
        titleLbl.text = titleText
        titleContainerHeightConstraint.constant = CGFloat(config.titleHeight)
        titleLblLeadingConstraint.constant = CGFloat(config.titlePadding)
        titleLblTrailingConstraint.constant = CGFloat(config.titlePadding)
    }

    func update(withConfig config: AndesCardViewConfig) {
        self.config = config
        updateView()
    }
}
