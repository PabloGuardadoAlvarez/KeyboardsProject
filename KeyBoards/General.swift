//
//  General.swift
//  KeyBoards
//
//  Created by PABLO GUARDADO ALVAREZ on 17/10/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit

class General: UIViewController {

    @IBOutlet weak var botonEmpezar: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   @IBAction private func showKeyboards(){
        
        let keyboards = Principal()
        let navigationController = UINavigationController(rootViewController: keyboards)
        navigationController.modalTransitionStyle = .coverVertical
        present(navigationController,animated: true, completion:nil)
    }

    override func didReceiveMemoryWarning() {   
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
