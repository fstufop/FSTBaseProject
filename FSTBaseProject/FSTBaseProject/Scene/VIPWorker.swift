//
//  VIPWorker.swift
//  FSTBaseProject
//
//  Created by Filipe Simoes Teodoro on 16/09/22.
//

import Foundation

final class VIPWorker {
    // MARK: Properties
    enum Keys: String {
        case information
    }
    
    var information: String? {
        set {
            UserDefaults.standard.set(newValue, forKey: Keys.information.rawValue)
        } get {
            UserDefaults.standard.string(forKey: Keys.information.rawValue)
        }
    }
}
