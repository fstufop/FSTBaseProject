//
//  VIPViewController.swift
//  FSTBaseProject
//
//  Created by Filipe Simoes Teodoro on 13/09/22.
//

import UIKit

final class VIPViewController: UIViewController {
    enum Layout {
        
    }
    // MARK: UI
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        return stack
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        return label
    }()
 
    private lazy var textField: UITextField = {
        let textField = UITextField()
        return textField
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        return button
    }()
    
    // MARK: Properties
    
    // MARK: Initialization
    
    // MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    // MARK: Methods
    private func setupUI() {
        buildHierarchy()
        setupConstraints()
    }
    
    // MARK: Build
    private func buildHierarchy() {
        view.addSubview(stackView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(button)
    }
    
    private func setupConstraints() {
        
    }
}
