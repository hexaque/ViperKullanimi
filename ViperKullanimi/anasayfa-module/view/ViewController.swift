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
   
    override func viewDidLoad() {
        labelSonuc.text = "0"
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonCarpma(_ sender: Any) {
        if let sayi1 = textFieldSayi1.text, let sayi2 = textFieldSayi2.text{
            if let s1 = Int(sayi1), let s2 = Int(sayi2){
                let carpma = s1*s2
                labelSonuc.text = String(carpma)
            }
        }
    }
    
    
    @IBAction func buttonToplama(_ sender: Any) {
        if let sayi1 = textFieldSayi1.text, let sayi2 = textFieldSayi2.text{
            if let s1 = Int(sayi1), let s2 = Int(sayi2){
                let toplam = s1+s2
                labelSonuc.text = String(toplam)
            }
        }
    }
}

