//
//  ProfileViewUI.swift
//  ExamenTest
//
//  Created Phinder 2022 on 25/02/23.
//  2023 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

protocol ProfileViewUIDelegate {
    
}

class ProfileViewUI: UIView{
    private lazy var navigationBar: UINavigationBar = {
        let navigationController = UINavigationBar(frame: .zero)
        navigationController.translatesAutoresizingMaskIntoConstraints = false
        navigationController.backgroundColor = .white
        return navigationController
    }()
    
    private lazy var contentView: UIView = {
        let scrollview = UIView(frame: .zero)
        scrollview.translatesAutoresizingMaskIntoConstraints = false
        scrollview.backgroundColor = .white
        return scrollview
    }()
    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var titleLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Ingresar"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 26)
        label.textColor = .black
        return label
    }()
    
    lazy var topLine: UIView = {
       let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var toolBar: UIToolbar = {
        let toolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 100.0, height: 44.0))
        let botonAceptar = UIBarButtonItem(barButtonSystemItem: .done, target: nil, action: #selector(finishEditing))
        let spacer = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil)
        botonAceptar.tag = 0
        toolbar.setItems([spacer,botonAceptar], animated: true)
        return toolbar
    }()
    
    private lazy var emailTextfield: UITextField = {
       let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.backgroundColor = .white
        textfield.textColor = .black
        textfield.placeholder = "Correo electronico"
        textfield.setPlaceholderTextColor(color: .gray)
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        textfield.leftViewMode = .always
        textfield.inputAccessoryView = toolBar
        textfield.layer.cornerRadius = 10
        textfield.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 100)
        textfield.layer.shadowRadius = 1.0
        textfield.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        textfield.layer.shadowOpacity = 1.0
        return textfield
    }()
    
    private lazy var credentialTextfield: UITextField = {
       let textfield = UITextField()
        textfield.translatesAutoresizingMaskIntoConstraints = false
        textfield.backgroundColor = .white
        textfield.textColor = .black
        textfield.placeholder = "Contraseña"
        textfield.setPlaceholderTextColor(color: .gray)
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: 10))
        textfield.leftViewMode = .always
        textfield.isSecureTextEntry = true
        textfield.inputAccessoryView = toolBar
        textfield.layer.cornerRadius = 10
        textfield.layer.shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 100)
        textfield.layer.shadowRadius = 1.0
        textfield.layer.shadowOffset = CGSize(width: 0.0, height: 0.0)
        textfield.layer.shadowOpacity = 1.0
        return textfield
    }()
    
    lazy var recoveryButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .clear
        button.setTitle("¿Olvidaste tu contraseña?", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var titleViewLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Crear cuenta"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
    
    lazy var loginButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .black
        button.setTitle("Ingresar", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var centerLine: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .black
        return view
    }()
    
    lazy var oLabel: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        label.text = "ó"
        label.backgroundColor = .white
        label.textColor = .black
        label.font = .systemFont(ofSize: 20)
        return label
    }()
    
    lazy var appleButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "Icon_Apple"), for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var facebookButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "Icon_Facebook"), for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var facebookLine: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var googleButton: UIButton = {
       let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setBackgroundImage(UIImage(named: "Icon_Google"), for: .normal)
        button.layer.masksToBounds = true
        button.layer.cornerRadius = 10
        return button
    }()
    
    lazy var googleLine: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .clear
        return view
    }()
    
    lazy var bottonLine: UIView = {
       let view = UIView()
        view.backgroundColor = .gray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var delegate: ProfileViewUIDelegate?
    var navigationController: UINavigationController?
    
    public convenience init(
        navigation: UINavigationController,
        delegate: ProfileViewUIDelegate){
        self.init()
        self.delegate = delegate
        self.navigationController = navigation
            setupUIElements()
            setupConstraints()
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    fileprivate func setupUIElements(){
        let cardViewElements = [topLine,titleLabel,emailTextfield,credentialTextfield,recoveryButton,titleViewLabel,loginButton,centerLine,oLabel,appleButton,facebookLine,facebookButton,googleLine,googleButton,bottonLine]
        self.addSubview(contentView)
        self.addSubview(navigationBar)
        contentView.addSubview(cardView)
        cardViewElements.map{
            cardView.addSubview($0)
        }
    }
    
    fileprivate func setupConstraints(){
        NSLayoutConstraint.activate([
            navigationBar.topAnchor.constraint(equalTo: self.topAnchor),
            navigationBar.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            navigationBar.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            
            contentView.topAnchor.constraint(equalTo: self.navigationBar.bottomAnchor),
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            ///CardView
            cardView.topAnchor.constraint(equalTo: contentView.topAnchor),
            cardView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor),
            cardView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor),
            cardView.heightAnchor.constraint(equalTo: contentView.heightAnchor),
            cardView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor),
            cardView.centerXAnchor.constraint(equalTo: self.contentView.centerXAnchor),
            
            titleLabel.topAnchor.constraint(equalTo: cardView.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            
            topLine.topAnchor.constraint(equalTo: titleLabel.bottomAnchor,constant: 5),
            topLine.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            topLine.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            topLine.heightAnchor.constraint(equalToConstant: 1),
            
            emailTextfield.topAnchor.constraint(equalTo: topLine.bottomAnchor,constant: 20),
            emailTextfield.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            emailTextfield.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            emailTextfield.heightAnchor.constraint(equalToConstant: 50),
            
            credentialTextfield.topAnchor.constraint(equalTo: emailTextfield.bottomAnchor,constant: 20),
            credentialTextfield.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            credentialTextfield.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            credentialTextfield.heightAnchor.constraint(equalToConstant: 50),
            
            recoveryButton.topAnchor.constraint(equalTo: credentialTextfield.bottomAnchor,constant: 20),
            recoveryButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            recoveryButton.heightAnchor.constraint(equalToConstant: 40),
            
            titleViewLabel.topAnchor.constraint(equalTo: recoveryButton.bottomAnchor,constant: 20),
            titleViewLabel.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            titleViewLabel.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            
            loginButton.topAnchor.constraint(equalTo: titleViewLabel.bottomAnchor,constant: 20),
            loginButton.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 20),
            loginButton.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -20),
            loginButton.heightAnchor.constraint(equalToConstant: 50),
            
            centerLine.topAnchor.constraint(equalTo: loginButton.bottomAnchor,constant: 40),
            centerLine.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor,constant: 10),
            centerLine.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor,constant: -10),
            centerLine.heightAnchor.constraint(equalToConstant: 1),
            
            oLabel.centerXAnchor.constraint(equalTo: centerLine.centerXAnchor),
            oLabel.centerYAnchor.constraint(equalTo: centerLine.centerYAnchor),
            oLabel.widthAnchor.constraint(equalToConstant: 22),
            
            appleButton.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
            appleButton.topAnchor.constraint(equalTo: oLabel.bottomAnchor,constant: 40),
            appleButton.heightAnchor.constraint(equalToConstant: 50),
            appleButton.widthAnchor.constraint(equalToConstant: 50),
            
            facebookLine.topAnchor.constraint(equalTo: appleButton.topAnchor,constant: 25),
            facebookLine.leadingAnchor.constraint(equalTo: cardView.leadingAnchor,constant: 10),
            facebookLine.trailingAnchor.constraint(equalTo: appleButton.leadingAnchor,constant: -10),
            facebookLine.heightAnchor.constraint(equalToConstant: 1),
            
            facebookButton.centerXAnchor.constraint(equalTo: facebookLine.centerXAnchor),
            facebookButton.topAnchor.constraint(equalTo: oLabel.bottomAnchor,constant: 40),
            facebookButton.heightAnchor.constraint(equalToConstant: 50),
            facebookButton.widthAnchor.constraint(equalToConstant: 50),
            
            googleLine.topAnchor.constraint(equalTo: appleButton.topAnchor,constant: 25),
            googleLine.leadingAnchor.constraint(equalTo: appleButton.trailingAnchor,constant: 10),
            googleLine.trailingAnchor.constraint(equalTo: cardView.trailingAnchor,constant: -10),
            googleLine.heightAnchor.constraint(equalToConstant: 1),
            
            googleButton.centerXAnchor.constraint(equalTo: googleLine.centerXAnchor),
            googleButton.topAnchor.constraint(equalTo: oLabel.bottomAnchor,constant: 40),
            googleButton.heightAnchor.constraint(equalToConstant: 50),
            googleButton.widthAnchor.constraint(equalToConstant: 50),
            
            bottonLine.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor,constant: 0),
            bottonLine.leadingAnchor.constraint(equalTo: cardView.leadingAnchor),
            bottonLine.trailingAnchor.constraint(equalTo: cardView.trailingAnchor),
            bottonLine.heightAnchor.constraint(equalToConstant: 1),
        ])
    }
    
    @objc func finishEditing(){
        self.endEditing(true)
    }

}




