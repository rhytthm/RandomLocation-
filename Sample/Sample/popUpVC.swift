//
//  popUpVC.swift
//  Sample
//
//  Created by Rhytthm on 05/09/22.
//

import UIKit

class popUpVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        var randomIntXGhost = Int.random(in: 0..<10)
        var randomIntYGost = Int.random(in: 0..<10)
        
        var randomIntXPolice = Int.random(in: 0..<10)
        var randomIntYPolice = Int.random(in: 0..<10)
 
        
        
        if(randomIntXGhost == randomIntXPolice){
            randomIntXPolice = Int.random(in: 0..<10)
        }
        if(randomIntYGost == randomIntYPolice){
            randomIntYPolice = Int.random(in: 0..<10)
        }

        var IntXGhost =  95 + covertTo200(value: randomIntXGhost)
        var IntYGost = 239 + covertTo200(value: randomIntYGost)
        
        var IntXPolice =  95 + covertTo200(value: randomIntXPolice)
        var IntYPolice = 239 + covertTo200(value: randomIntYPolice)
        
        let ghosty = UILabel()
        ghosty.frame = CGRect(x: IntXGhost, y: IntYGost, width: 20, height: 20)
        ghosty.text = "👻"
        let police = UILabel()
        police.frame = CGRect(x: IntXPolice, y: IntYPolice, width: 20, height: 20)
        police.text = "👮"
        view.addSubview(police)
        view.addSubview(ghosty)
    }
    

    func covertTo200(value: Int) -> Int {
        return value*20
    }

    

}
