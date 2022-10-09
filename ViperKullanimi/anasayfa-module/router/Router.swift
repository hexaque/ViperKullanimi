//
//  Router.swift
//  ViperKullanimi
//
//  Created by Que on 6.10.2022.
//

import Foundation
class Router:PresenterToRouterProtocol{
    static func createModule(ref: ViewController) {
        let presenter = Presenter()
        
        
        // view katmanı değişkeni
        ref.presenterNesnesi = presenter
        
        //presenter katmanı değişkeni
        ref.presenterNesnesi?.interactor = Interactor()
        ref.presenterNesnesi?.view = ref
        
        //interactor katmanı değişkeni
        ref.presenterNesnesi?.interactor?.presenter = presenter
        
    }
    
}
