//
//  HomeRouter.swift
//  AndesUI_Example
//
//  Created by Santiago Lazzari on 19/12/2019.
//  Copyright © 2019 MercadoLibre. All rights reserved.
//

import UIKit

protocol HomeRouter: NSObject {
    func route(from: UIViewController)
    func routeToButton()
    func routeToMessages()
    func routeToBadges()
    func routeToWhatsNew()
    func routeTextField()
    func routerCheckbox()
    func routerRadioButton()
    func routeTags()
    func routeSnackbar()
    func routeCard()
    func routeToThumbnail()
}

class HomeAppRouter: NSObject {
    let view = HomeViewController()
    var presenter: HomePresenter?

    let buttonsRouter = ButtonsAppRouter()
    let messagesRouter = MessagesAppRouter()
    let badgesRouter = BadgesAppRouter()
    let whatsNewRouter = WhatsNewAppRouter()
    let textFieldRouter = TextFieldsAppRouter()
    let checkBoxRouter = CheckboxAppRouter()
    let radioButtonRouter = RadioButtonAppRouter()
    let tagRouter = TagsAppRouter()
    let snackbarRouter = SnackbarAppRouter()
    let cardRouter = CardAppRouter()
    let thumbnailRouter = ThumbnailAppRouter()
}

extension HomeAppRouter: HomeRouter {
    func route(from: UIViewController) {
        presenter = HomeViewPresenter(view: view, router: self)
        view.presenter = presenter

        let navigation = UINavigationController(rootViewController: view)
        navigation.modalPresentationStyle = .fullScreen

        from.present(navigation, animated: false, completion: nil)
    }

    func routeToButton() {
        buttonsRouter.route(from: view)
    }

    func routeToMessages() {
        messagesRouter.route(from: view)
    }

    func routeToBadges() {
        badgesRouter.route(from: view)
    }

    func routeToWhatsNew() {
        whatsNewRouter.route(from: view)
    }

    func routeTextField() {
        textFieldRouter.route(from: view)
    }

    func routerCheckbox() {
        checkBoxRouter.route(from: view)
    }

    func routerRadioButton() {
        radioButtonRouter.route(from: view)
    }

    func routeTags() {
        tagRouter.route(from: view)
    }

    func routeSnackbar() {
        snackbarRouter.route(from: view)
    }

    func routeCard() {
        cardRouter.route(from: view)
    }

    func routeToThumbnail() {
	thumbnailRouter.route(from: view)
    }

}
