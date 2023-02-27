//
//  ProfileMain.swift
//  ExamenTest
//
//  Created Phinder 2022 on 25/02/23.
//  2023 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

open class ProfileMain{
    public static func createModule() -> UIViewController {
        let viewController: ProfileView? = ProfileView()
        if let view = viewController {
            let presenter = ProfilePresenter()
            let router = ProfileRouter()
            let interactor = ProfileInteractor()
            
            
             view.presenter = presenter
             
             presenter.view = view
             presenter.interactor = interactor
             presenter.router = router
             
             interactor.presenter = presenter
            return view
        }
        return UIViewController()
    }
    
    
}
