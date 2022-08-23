//
//  ViewController.swift
//  ExAppleLogin
//
//  Created by Calibraint on 27/06/22.
//

import UIKit
import AuthenticationServices

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        performExistingAccountSetupFlows()
        accountSetupFlows()
    }

    func accountSetupFlows()  {
        let authorizationButton = ASAuthorizationAppleIDButton()
        authorizationButton.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(authorizationButton)
        NSLayoutConstraint.activate([authorizationButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
        authorizationButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
        authorizationButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)])
        authorizationButton.addTarget(self, action: #selector(handleAppleIdRequest), for: .touchUpInside)
    
    }
    
    private func performExistingAccountSetupFlows() {
        // Prepare requests for both Apple ID and password providers.
        let requests = [ASAuthorizationAppleIDProvider().createRequest(), ASAuthorizationPasswordProvider().createRequest()]
        
        // Create an authorization controller with the given requests.
        let authorizationController = ASAuthorizationController(authorizationRequests: requests)
        authorizationController.delegate = self
        authorizationController.presentationContextProvider = self
        authorizationController.performRequests()
    }
    
    @objc func handleAppleIdRequest() {
        let appleIDProvider = ASAuthorizationAppleIDProvider()
        let request = appleIDProvider.createRequest()
        request.requestedScopes = [.fullName, .email]

        let authorizationController = ASAuthorizationController(authorizationRequests: [request])
        authorizationController.delegate = self
        authorizationController.presentationContextProvider = self
        authorizationController.performRequests()
    }

}

extension ViewController: ASAuthorizationControllerDelegate {

    func authorizationController(controller: ASAuthorizationController, didCompleteWithAuthorization authorization: ASAuthorization) {

        print("auth", authorization)
        
        if let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential {
            // Create an account in your system.
            let userIdentifier = appleIDCredential.user
            let userFirstName = appleIDCredential.fullName?.givenName
            let userLastName = appleIDCredential.fullName?.familyName
            let userEmail = appleIDCredential.email
            print("User id is \(userIdentifier) \n Full Name is \(String(describing: userFirstName)) \(String(describing: userLastName)) \n Email id is \(String(describing: userEmail))")

            navigateToHomeScreen()
                //Navigate to other view controller
            } else if let passwordCredential = authorization.credential as? ASPasswordCredential {
                // Sign in using an existing iCloud Keychain credential.
                let username = passwordCredential.user
                let password = passwordCredential.password
                
                print("User name is \(username) \n password is \(String(describing: password))")
                navigateToHomeScreen()
                //Navigate to other view controller
            } else {
                let appleIDProvider = ASAuthorizationAppleIDProvider()
                let appleIDCredential = authorization.credential as? ASAuthorizationAppleIDCredential
                let userIdentifier = appleIDCredential?.user ?? ""
                appleIDProvider.getCredentialState(forUserID: userIdentifier) { (credentialState, error) in
                    switch credentialState {
                    case .authorized:
                        // The Apple ID credential is valid. Show Home UI Here
                        print(" Successfully authorized ..")
                        self.navigateToHomeScreen()
                        break
                    case .revoked:
                        // The Apple ID credential is revoked. Show SignIn UI Here.
                        print("revoked called")
                        break
                    case .notFound:
                        // No credential was found. Show SignIn UI Here.
                        print("not found called")
                        break
                    default:
                        print("default called")
                        break
                    }
                }
            }
    }
    func authorizationController(controller: ASAuthorizationController, didCompleteWithError error: Error) {
        print("error occured", error)
    }
    
    func navigateToHomeScreen() {
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        let homeVC = storyBoard.instantiateViewController(withIdentifier: "HomeViewController") as! HomeViewController
        self.present(homeVC, animated:true, completion:nil)
    }

}

extension ViewController: ASAuthorizationControllerPresentationContextProviding {
    func presentationAnchor(for controller: ASAuthorizationController) -> ASPresentationAnchor {
        return self.view.window!
    }
}
