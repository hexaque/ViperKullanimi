//
//  ViewController.swift
//  ViperKullanimi
//
//  Created by Que on 6.10.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textFieldSayi2: UITextField!
    @IBOutlet weak var textFieldSayi1: UITextField!
    @IBOutlet weak var labelSonuc: UILabel!
    var presenterNesnesi : ViewToPresenterProtocol?
    override func viewDidLoad() {
        
        labelSonuc.text = "0"
        Router.createModule(ref: self)
        
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonCarpma(_ sender: Any) {
        if let sayi1 = textFieldSayi1.text, let sayi2 = textFieldSayi2.text{
            
            presenterNesnesi?.carpmaYap(sayi1: sayi1, sayi2: sayi2)
        }
    }
    
    
    @IBAction func buttonToplama(_ sender: Any) {
        if let sayi1 = textFieldSayi1.text, let sayi2 = textFieldSayi2.text{
            presenterNesnesi?.toplamaYap(sayi1: sayi1, sayi2: sayi2)
        }
    }
}

extension ViewController : PresenterToViewProtocol{
    func vieweVeriGonder(sonuc: String) {
        labelSonuc.text = sonuc
    }
    
    
}

