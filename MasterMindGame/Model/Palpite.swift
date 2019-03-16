//
//  Palpite.swift
//  MasterMindGame
//
//  Created by posmobile on 16/03/19.
//  Copyright © 2019 posmobile. All rights reserved.
//

import Foundation

class Palpite {
    
    let jogo: Jogo = Jogo.init()
    
    func realizarPalpite(palpite: [Int]) {
        var otimo: Int = 0
        var bom: Int = 0
        var ruim: Int = 4
        var tentativas: Int = 0
        /*
        for (i) in 0...3{
            if(jogo.segredo[i] == palpite[i]){
                otimo += 1
                ruim -= 1
            }
            for (j) in 0...3{
                if((jogo.segredo[i] == palpite[j]) && (segredo[i] != palpite[i])){
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
        */
    }
}
