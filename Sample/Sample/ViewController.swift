//
//  ViewController.swift
//  Sample
//
//  Created by Rhytthm on 05/09/22.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var constraintView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
       
        
        var xGhost = 95 + covertTo200(value: 0)
        var yGhost = 239 + covertTo200(value: 0)
        var xPolice = 95 + covertTo200(value: 2)
        var yPolice = 239 + covertTo200(value: 3)
        
        print("police x = \(xPolice)")
        print("police y = \(yPolice)")
        print("gHOST x = \(xGhost)")
        print("GhOST y = \(yGhost)")

        let ghosty = UILabel()
        ghosty.frame = CGRect(x: xGhost, y: yGhost, width: 20, height: 20)
        ghosty.text = "👻"
        let police = UILabel()
        police.frame = CGRect(x: xPolice, y: yPolice, width: 20, height: 20)
        police.text = "👮"
        view.addSubview(police)
        view.addSubview(ghosty)
        
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
    }

 
    @IBAction func button(_ sender: Any) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "popUpVC") as? popUpVC
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}

func covertTo200(value: Int) -> Int {
    return value*20
}
