//
//  VIPViewController.swift
//  FSTBaseProject
//
//  Created by Filipe Simoes Teodoro on 13/09/22.
//

import UIKit

final class VIPViewController: UIViewController {
    enum Layout {
        static let viewsHeight: CGFloat = 24
        static let viewsHorizontalEdges: CGFloat = 16
        static let stackViewSpacing: CGFloat = 24
        static let cornerRadius: CGFloat = 6
        static let labelFontSize: CGFloat = 24
    }
    
    // MARK: UI
    private lazy var contentView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var stackView: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = Layout.stackViewSpacing
        return stack
    }()
    
    private lazy var label: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: Layout.labelFontSize, weight: .bold)
        label.text = "Seu texto aqui"
        return label
    }()
 
    private lazy var textField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.backgroundColor = .white
        textField.placeholder = "Digite aqui!"
        textField.borderStyle = .roundedRect
        return textField
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .blue
        button.setTitle("Salvar", for: .normal)
        button.addTarget(self, action: #selector(handlerButton), for: .touchUpInside)
        button.layer.cornerRadius = Layout.cornerRadius
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
        view.backgroundColor = .lightGray
    }
    
    @objc
    private func handlerButton(_ sender: UIButton) {
        label.text = textField.text
        displayAlert()
    }
    
    private func displayAlert() {
        let alert = UIAlertController(title: "Algo deu errado", message: "Deu tudo Certo", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .default)
        alert.addAction(action)
        self.present(alert, animated: true)
    }
    
    // MARK: Build
    private func buildHierarchy() {
        view.addSubview(contentView)
        contentView.addSubview(stackView)
        stackView.addArrangedSubview(label)
        stackView.addArrangedSubview(textField)
        stackView.addArrangedSubview(button)
    }
    
    private func setupConstraints() {
        setupContentView()
        setupStackView()
        setupContentView()
    }
    
    // MARK: Constraints
    private func setupContentView() {
        contentView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
    }
    
    private func setupStackView() {
        stackView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        stackView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,
                                           constant: Layout.viewsHorizontalEdges).isActive = true
        stackView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor,
                                            constant: -Layout.viewsHorizontalEdges).isActive = true
    }
    
    private func setupStackContent() {
        label.heightAnchor.constraint(equalToConstant: Layout.viewsHeight).isActive = true
        textField.heightAnchor.constraint(equalToConstant: Layout.viewsHeight).isActive = true
        button.heightAnchor.constraint(equalToConstant: Layout.viewsHeight).isActive = true
    }
}
