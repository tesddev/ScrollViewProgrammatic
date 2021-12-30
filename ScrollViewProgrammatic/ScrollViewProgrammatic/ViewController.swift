//
//  ViewController.swift
//  ScrollViewProgrammatic
//
//  Created by Tes on 28/12/2021.
//

import UIKit

class ViewController: UIViewController {
    
    let scrollView = UIScrollView()
    let contentView = UIView()
    
    // MARK: EXPLORE IMAGE ICON
    var backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "arrowBack"), for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .systemBackground
        button.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        return button
    }()
    let welcomeBackLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Welcome Back"
        return label
    }()
    let footnoteTextView: UITextView = {
        let label = UITextView()
        label.text = "We are happy to see you, login into your account to continue managing your dreams with us."
        label.font = .systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.isEditable = false
        return label
    }()
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        textField.font = UIFont(name: "NunitoSans-SemiBold", size: 15)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 10.0
        textField.layer.borderWidth = 1.0
        textField.backgroundColor = .systemGray6
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.layer.borderColor = UIColor.systemBackground.cgColor
        textField.placeholder = "Email"
        textField.addTarget(self, action: #selector(updateEmailValidationViews), for: .editingChanged)
        return textField
    }()
    let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Password"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        textField.font = UIFont(name: "NunitoSans-SemiBold", size: 15)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 10.0
        textField.layer.borderWidth = 1.0
        textField.backgroundColor = .systemGray6
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.layer.borderColor = UIColor.systemBackground.cgColor
        textField.addTarget(self, action: #selector(passwordValidationViews), for: .editingChanged)
        return textField
    }()
    let forgotPasswordButton: UIButton = {
        let label = UIButton()
        label.backgroundColor = .systemBackground
        label.setTitle("Forgot password?", for: .normal)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.layer.borderWidth = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.titleLabel?.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        button.layer.cornerRadius = 10
        button.heightAnchor.constraint(equalToConstant: 55).isActive = true
        button.layer.borderWidth = 1
        button.backgroundColor = UIColor.systemGreen
        button.layer.borderColor = UIColor.systemGreen.cgColor
        button.addTarget(self, action: #selector(didTapLoginButton), for: .touchUpInside)
        return button
    }()
    let dontHaveAccLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Don't have an account?"
        return label
    }()
    let myFirstView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let mySecondView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemGray
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    let orLabel: UILabel = {
        let label = UILabel()
        label.text = "or"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var appleLoginButton: UIButton = {
        let button = UIButton()
        button.layer.borderWidth = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 5
        button.heightAnchor.constraint(equalToConstant: 54).isActive = true
        button.setImage(UIImage(systemName: "search"), for: .normal)
        return button
    }()
    var gmailLoginButton: UIButton = {
        let button = UIButton()
        button.layer.borderWidth = 0
        button.translatesAutoresizingMaskIntoConstraints = false
        button.clipsToBounds = true
        button.layer.cornerRadius = 5
        button.heightAnchor.constraint(equalToConstant: 54).isActive = true
        button.setImage(UIImage(systemName: "search"), for: .normal)
        return button
    }()
    let scrollTextField: UITextField = {
        let textField = UITextField()
        textField.tintColor = .black
        textField.placeholder = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean facilisis lacus in nisi vulputate vulputate. Maecenas ultricies dolor at ante placerat suscipit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac"
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: 0))
        textField.leftViewMode = .always
        textField.font = UIFont(name: "NunitoSans-SemiBold", size: 15)
        textField.textAlignment = .left
        textField.layer.cornerRadius = 10.0
        textField.layer.borderWidth = 1.0
        textField.backgroundColor = .systemGray6
        textField.autocapitalizationType = .none
        textField.autocorrectionType = .no
        textField.layer.borderColor = UIColor.systemBackground.cgColor
        textField.addTarget(self, action: #selector(passwordValidationViews), for: .editingChanged)
        return textField
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationController?.navigationBar.isHidden = true
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(sender:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(sender:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapGesture)
        constraintViews()
    }
    
    @objc func keyboardWillShow(sender: NSNotification) {
        self.view.frame.origin.y = -216 // Move view 150 points upward
    }
    
    @objc func keyboardWillHide(sender: NSNotification) {
        self.view.frame.origin.y = 0 // Move view to original position
    }
    
    func constraintViews() {
        view.addSubview(scrollView)
        view.addSubview(backButton)
        scrollView.addSubview(contentView)
        contentView.addSubview(welcomeBackLabel)
        contentView.addSubview(footnoteTextView)
        contentView.addSubview(emailTextField)
        contentView.addSubview(passwordTextField)
        contentView.addSubview(loginButton)
        contentView.addSubview(forgotPasswordButton)
        contentView.addSubview(dontHaveAccLabel)
        contentView.addSubview(myFirstView)
        contentView.addSubview(mySecondView)
        contentView.addSubview(orLabel)
        contentView.addSubview(appleLoginButton)
        contentView.addSubview(gmailLoginButton)
        contentView.addSubview(scrollTextField)
        
        scrollView.backgroundColor = UIColor.green
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.showsVerticalScrollIndicator = false
        
        NSLayoutConstraint.activate([
            
            scrollView.widthAnchor.constraint(equalTo: view.widthAnchor),
            scrollView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            //            scrollView.heightAnchor.constraint(equalToConstant: 1000),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor, constant: 25),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            contentView.centerXAnchor.constraint(equalTo: scrollView.centerXAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            
            backButton.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            backButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            backButton.heightAnchor.constraint(equalToConstant: 28),
            backButton.widthAnchor.constraint(equalToConstant: 28),
            
            welcomeBackLabel.topAnchor.constraint(equalTo: backButton.bottomAnchor, constant: 20),
            welcomeBackLabel.leadingAnchor.constraint(equalTo: backButton.leadingAnchor, constant: 5),
            
            footnoteTextView.topAnchor.constraint(equalTo: welcomeBackLabel.bottomAnchor, constant: 10),
            footnoteTextView.leadingAnchor.constraint(equalTo: welcomeBackLabel.leadingAnchor),
            footnoteTextView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.9),
            footnoteTextView.heightAnchor.constraint(equalToConstant: 80),
            
            emailTextField.topAnchor.constraint(equalTo: footnoteTextView.bottomAnchor, constant: 10),
            emailTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            emailTextField.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.85),
            emailTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 10),
            passwordTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            passwordTextField.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.85),
            passwordTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.06),
            
            forgotPasswordButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 10),
            forgotPasswordButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 60),
            loginButton.trailingAnchor.constraint(equalTo: passwordTextField.trailingAnchor),
            loginButton.leadingAnchor.constraint(equalTo: passwordTextField.leadingAnchor),
            
            dontHaveAccLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dontHaveAccLabel.topAnchor.constraint(equalTo: loginButton.bottomAnchor, constant: 5),
            
            myFirstView.topAnchor.constraint(equalTo: dontHaveAccLabel.bottomAnchor, constant: 40),
            myFirstView.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor),
            myFirstView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.37),
            myFirstView.heightAnchor.constraint(equalToConstant: 1),
            
            mySecondView.topAnchor.constraint(equalTo: dontHaveAccLabel.bottomAnchor, constant: 40),
            mySecondView.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor),
            mySecondView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.37),
            mySecondView.heightAnchor.constraint(equalToConstant: 1),
            
            orLabel.topAnchor.constraint(equalTo: myFirstView.topAnchor, constant: -10),
            orLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            appleLoginButton.topAnchor.constraint(equalTo: myFirstView.bottomAnchor, constant: 40),
            appleLoginButton.leadingAnchor.constraint(equalTo: loginButton.leadingAnchor),
            appleLoginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            
            gmailLoginButton.topAnchor.constraint(equalTo: appleLoginButton.topAnchor),
            gmailLoginButton.trailingAnchor.constraint(equalTo: loginButton.trailingAnchor),
            gmailLoginButton.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.4),
            
            scrollTextField.topAnchor.constraint(equalTo: gmailLoginButton.bottomAnchor, constant: 20),
            scrollTextField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            scrollTextField.widthAnchor.constraint(equalTo: view.safeAreaLayoutGuide.widthAnchor, multiplier: 0.85),
            scrollTextField.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.5),
            scrollTextField.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
            
        ])
    }
    @objc func backButtonPressed() {
        navigationController?.popViewController(animated: true)
    }
    @objc func didTapLoginButton() {
            print("login successful")
    }
    @objc func updateEmailValidationViews(_ textField: UITextField) {
    }
    @objc func passwordValidationViews(_ textField: UITextField) {
    }
}

