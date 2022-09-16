//
//  VIPPresenter.swift
//  FSTBaseProject
//
//  Created by Filipe Simoes Teodoro on 16/09/22.
//

import Foundation

protocol VIPPresenting {
    func presentSalveResult(didSuccess: Bool)
}

final class VIPPresenter {
    // MARK: Properties
    weak var viewController: VIPDisplaying?
}

extension VIPPresenter: VIPPresenting {
    func presentSalveResult(didSuccess: Bool) {
        let title = didSuccess ? "Sucesso" : "Ops.. Algo deu errado"
        let message = didSuccess ? "A mensagem foi salva" : "A mensagem já foi salva"
        let buttonTitle = didSuccess ? "Show" : "Tentar novamente"
        let alertModel = AlertViewModel(title: title, message: message, buttonTitle: buttonTitle)
        viewController?.displayAlert(with: alertModel)
    }
}
