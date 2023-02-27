//
//  ProfilePresenter.swift
//  ExamenTest
//
//  Created Phinder 2022 on 25/02/23.
//  2023 ___ORGANIZATIONNAME___.
//

import Foundation
class ProfilePresenter {
    var interactor: ProfileInteractorProtocol?
    weak var view: ProfileViewProtocol?
    var router: ProfileRouterProtocol?
    
}



extension ProfilePresenter: ProfilePresenterProtocol {
    
}
