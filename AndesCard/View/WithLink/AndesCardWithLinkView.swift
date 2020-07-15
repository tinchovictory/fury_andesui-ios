//
//  AndesCardWidthLinkView.swift
//  AndesUI
//
//  Created by Martin Victory on 15/07/2020.
//

import UIKit

class AndesCardWithLinkView: AndesCardAbstractView {

    // MARK: - Xib Outlets
    @IBOutlet weak var linkContainer: UIView!
    @IBOutlet weak var linkLbl: UILabel!
    @IBOutlet weak var iconView: UIImageView!

    @IBOutlet weak var linkContainerHeightConstraint: NSLayoutConstraint!
    @IBOutlet weak var linkLblLeadingConstraint: NSLayoutConstraint!
    @IBOutlet weak var iconViewTrailingConstraint: NSLayoutConstraint!

    // MARK: - Initialization
    override func loadNib() {
        let bundle = AndesBundle.bundle()
        bundle.loadNibNamed("AndesCardWithLinkView", owner: self, options: nil)
    }

    override func setup() {
        super.setup()

        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(handleTap(sender:)))
        linkContainer.addGestureRecognizer(tapGesture)

        linkLbl.setAndesStyle(style: AndesFontStyle(textColor: AndesStyleSheetManager.styleSheet.accentColor500, font: AndesStyleSheetManager.styleSheet.semiboldSystemFontOfSize(size: 16), lineSpacing: 1))

        AndesIconsProvider.loadIcon(name: AndesIcons.chevronRight16, placeItInto: iconView)
    }

    // MARK: - Update View
    override func updateView() {
        super.updateView()
        updateLink()
    }

    private func updateLink() {
        linkLbl.text = config.linkText
        linkContainerHeightConstraint.constant = CGFloat(config.titleHeight)
        linkLblLeadingConstraint.constant = CGFloat(config.titlePadding)
        iconViewTrailingConstraint.constant = CGFloat(config.titlePadding)
    }

    // MARK: - User Interaction
    @objc private func handleTap(sender: UITapGestureRecognizer) {
        self.delegate?.onLinkTouchUp()
    }
}
