//
//  TVCKeyboardsSwitch.swift
//  KeyBoards
//
//  Created by PABLO GUARDADO ALVAREZ on 30/10/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit

class TVCKeyboardsSwitch: UITableViewCell {


    @IBOutlet weak var lblCelda: UILabel!
    @IBOutlet weak var lblSwitch: UISwitch!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func sampleSwitchValueChanged(_ sender: Any) {
        
        if lblSwitch.isOn {
            print(lblCelda.text! + " ON")
        }
        else {
            print (lblCelda.text! + " OFF")
        }
    }
    
}

