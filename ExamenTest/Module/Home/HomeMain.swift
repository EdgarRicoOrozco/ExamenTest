//
//  HomeMain.swift
//  ExamenTest
//
//  Created Phinder 2022 on 25/02/23.
//  2023 ___ORGANIZATIONNAME___.
//

import Foundation
import UIKit

open class HomeMain{
    public static func createModule() -> UIViewController {
        let viewController: HomeView? = HomeView()
        if let view = viewController {
            let presenter = HomePresenter()
            let router = HomeRouter()
            let interactor = HomeInteractor()
            
            
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
