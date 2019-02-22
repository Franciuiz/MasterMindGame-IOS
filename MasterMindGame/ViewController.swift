//
//  ViewController.swift
//  MasterMindGame
//
//  Created by posmobile on 21/02/19.
//  Copyright © 2019 posmobile. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var fieldTextView: [UITextField]!
    var palpite: [Int] = [0, 0, 0, 0]
    
    @IBOutlet weak var segredoTextView: UILabel!
    
    @IBAction func botaoEnviar(_ sender: UIButton) {

        for x in fieldTextView.indices{
            palpite[x] = Int(fieldTextView[x].text!)!
        }
        
        realizarPalpite(palpite: palpite)
        //palpite[0] = fieldTextView[0].text!

        //segredoTextView.text = "\(palpite[0], palpite[1], palpite[2], palpite[3])"
    }
    
    
    
    //var palpite: [Int] = [4, 3, 2, 1]
    var segredo: [Int] = [1,2,3,4,5,6,7,8,9].shuffled()
    
    
    @IBAction func revelar(_ sender: UIButton) {
        segredoTextView.text = "\(segredo[0], segredo[1], segredo[2], segredo[3])"
    }
    
    @IBOutlet weak var otimoLabel: UILabel!
    @IBOutlet weak var bomLabel: UILabel!
    @IBOutlet weak var ruimLabel: UILabel!
    
    
    func realizarPalpite(palpite: [Int]) {
        var otimo: Int = 0
        var bom: Int = 0
        var ruim: Int = 4

        for (i) in 0...3{
            if(segredo[i] == palpite[i]){
                otimo += 1
                ruim -= 1
            }
            for (j) in 0...3{
                if((segredo[i] == palpite[j]) && (segredo[i] != palpite[i])){
                    bom += 1
                    ruim -= 1
                }
            }
        }
        otimoLabel.text = "Otimo: \(otimo)"
        bomLabel.text = "Bom: \(bom)"
        ruimLabel.text = "Ruim: \(ruim)"
        if (otimo == 4){
            //ganhou
            Mensagem(strBody: "Parabens, você ganhou", delegate: nil);
            
        }
        else{
            //default
        }

    }
    
    func Mensagem(strBody: NSString, delegate: AnyObject?)
    {
        
        let valert : UIAlertView = UIAlertView();
        valert.message  = strBody as String;
        valert.delegate = delegate;
        valert.addButton(withTitle: "OK");
        valert.show();
        
    }
    
    /*
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }*/


}
