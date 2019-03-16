//
//  Jogo.swift
//  MasterMindGame
//
//  Created by posmobile on 21/02/19.
//  Copyright © 2019 posmobile. All rights reserved.
//

import Foundation



struct Jogo {
    var segredo: [Int] = [1,2,3,4,5,6,7,8,9].shuffled()
    var otimo: Int = 0
    var bom: Int = 0
    var ruim: Int = 4
    
    
        
}

/*

struct Card {
    var identifier: Int
    var isFaceUp: Bool = false
    var isMatched: Bool = false
    
    private static var identifierFactory = 0
    
    init() {
        Card.identifierFactory += 1
        identifier = Card.identifierFactory
    }
}


    public Logica() {
    int aux;
    for(int j=0; j<4; j++){
    Random ent = new Random();
    aux = ent.nextInt(9);
    for(int i=0; i<4; i++){
    if(aux==0){
    Random ent1 = new Random();
    aux = ent1.nextInt(9);
    }
    if(aux==segredo[i]){
    Random ent1 = new Random();
    aux = ent1.nextInt(9);
    }
    else{
    segredo[j] = aux;
    }
    }
    }
    }
    
    
    public Boolean realizarPalpite(int[] palpite){
    //gambiarra huehue
    this.otimo = 0; this.bom = 0; this.ruim = 4;
    
    
    for(int i=0; i<4; i++){
    if(segredo[i]==palpite[i]){
    this.otimo++;
    this.ruim--;
    }
    for(int j=0; j<4; j++){
    if((segredo[i]==palpite[j]) && (segredo[i]!=palpite[i])){
    this.bom++;
    this.ruim--;
    }
    }
    }
    if(this.otimo==4){
    return true;
    }
    else{
    return false;
    }
    }
    
    
    public int getOtimo() {
    return otimo;
    }
    
    
    public int getBom() {
    return bom;
    }
    
    
    public int getRuim() {
    return ruim;
    }
    
    //teste de caixa preta
    public int getSegredo(int x) {
    return segredo[x];
    }
    
    
    
}
*/
