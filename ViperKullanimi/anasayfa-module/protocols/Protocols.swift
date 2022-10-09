//
//  Protocols.swift
//  ViperKullanimi
//
//  Created by Que on 6.10.2022.
//

import Foundation

//Ana protokoller

// view  ->  presenter  ->  Interactor
//rxswift
protocol ViewToPresenterProtocol{
    var interactor : PresenterToInteractorProtocol?{get set}
    var view : PresenterToViewProtocol? {get set}
    func toplamaYap(sayi1:String,sayi2:String)
    func carpmaYap(sayi1:String,sayi2:String)
}

protocol PresenterToInteractorProtocol{
    var presenter : InteractorToPresenterProtocol?{get set}
    
    func topla(sayi1:String,sayi2:String)
    func carp(sayi1:String,sayi2:String)
    
}




//Taşıyıcı Protokoller
// view  <-  presenter  <-  Interactor
protocol InteractorToPresenterProtocol{
    func presenteraVeriGonder(sonuc:String)
}

protocol PresenterToViewProtocol{
    func vieweVeriGonder(sonuc:String)
}



//Router

protocol PresenterToRouterProtocol{
    static func createModule(ref:ViewController)
}
