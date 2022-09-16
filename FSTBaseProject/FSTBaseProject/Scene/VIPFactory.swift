//
//  VIPFactory.swift
//  FSTBaseProject
//
//  Created by Filipe Simoes Teodoro on 16/09/22.
//

import UIKit

struct VIPFactory {
    static func make() -> UIViewController {
        let worker = VIPWorker()
        let presenter = VIPPresenter()
        let interactor = VIPInteractor(worker: worker, presenter: presenter)
        let viewController = VIPViewController(interactor: interactor)
        
        presenter.viewController = viewController
        return viewController
    }
}
