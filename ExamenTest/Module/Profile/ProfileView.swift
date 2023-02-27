//
//  ProfileView.swift
//  ExamenTest
//
//  Created Phinder 2022 on 25/02/23.
//  2023 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit
class ProfileView: UIViewController {
    var presenter: ProfilePresenterProtocol?
    private var ui: ProfileViewUI?
    
    
    override func loadView() {
        ui = ProfileViewUI(
            navigation: self.navigationController!,
            delegate: self
        )
        view = ui
        
    }
    
}

extension ProfileView: ProfileViewProtocol {
    
}

extension ProfileView: ProfileViewUIDelegate {
    
}
