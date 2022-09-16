//
//  VIPInteractor.swift
//  FSTBaseProject
//
//  Created by Filipe Simoes Teodoro on 16/09/22.
//

import Foundation

protocol VIPInteracting {
    func saveInformation(_ information: String)
}

final class VIPInteractor {
    var worker: VIPWorking
    var presenter: VIPPresenting
    
    init(worker: VIPWorking, presenter: VIPPresenting) {
        self.worker = worker
        self.presenter = presenter
    }
}

extension VIPInteractor: VIPInteracting {
    func saveInformation(_ information: String) {
        if worker.information == information {
            presenter.presentSalveResult(didSuccess: false)
        } else {
            worker.information = information
            presenter.presentSalveResult(didSuccess: true)
        }
    }
}
