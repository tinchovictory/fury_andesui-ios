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

    // MARK: - View initialization

    private var config: AndesCardViewConfig

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

        updateView()
    }

    internal func loadNib() {
        fatalError("This should be overriden by a subclass")
    }

    /// Override this method on each Card View to setup its unique components
    internal func updateView() {
        containerView.backgroundColor = config.backgroundColor
        leftPipe.backgroundColor = config.pipeColor

        updateShadow()
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

    func update(withConfig config: AndesCardViewConfig) {
        self.config = config
        updateView()
    }
}
