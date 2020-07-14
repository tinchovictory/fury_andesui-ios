//
//  CardViewController.swift
//  AndesUI-demoapp
//
//  Created by Martin Victory on 14/07/2020.
//  Copyright © 2020 MercadoLibre. All rights reserved.
//

import UIKit
import AndesUI

class CardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let view = UIView()
        view.backgroundColor = .red

        let card = AndesCard(cardView: view, title: "title", padding: .small, hierarchy: .primary, style: .elevated, type: .warning)

        self.view.addSubview(card)
        card.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            card.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 200),
            card.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -20),
            card.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 20),
            card.heightAnchor.constraint(equalToConstant: 150)
        ])
    }

}
