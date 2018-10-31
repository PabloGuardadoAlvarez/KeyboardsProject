//
//  Principal.swift
//  KeyBoards
//
//  Created by PABLO GUARDADO ALVAREZ on 17/10/18.
//  Copyright © 2018 PABLO GUARDADO ALVAREZ. All rights reserved.
//

import UIKit

class Principal: UIViewController {
    
    @IBOutlet weak var tablaPrincipal: UITableView!
    
    var auxiliar : Int = 0
    
    
    internal var celdas:[Celdas] = []
    
    convenience init(celdas:[Celdas]) {
        self.init()
        self.celdas = celdas
        
    }
    
    internal var celdasSwitch:[CeldasSwitch] = []
    
    convenience init(celdasSwitch:[CeldasSwitch]) {
        self.init()
        self.celdasSwitch = celdasSwitch
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        title="Keyboards"
        registrarCell()
        rellenarceldas()
    }
    
    
    private func registrarCell(){
        
        let identificador = "KeyboardsCell"
        let identificadorSwitch = "KeyboardsCellSwitch"
        
        let cellnib = UINib(nibName: "TVCKeyboards", bundle: nil)
        tablaPrincipal.register(cellnib,forCellReuseIdentifier:identificador)
        
        let cellnib2 = UINib(nibName: "TVCKeyboardsSwitch", bundle: nil)
        tablaPrincipal.register(cellnib2,forCellReuseIdentifier:identificadorSwitch)
        
    }
    
    private func setupBarButtonsItems(){
        
        let actorsBarButton =  UIBarButtonItem(title:"Actores", style: .plain, target: self, action: #selector(actorsPressed))
        navigationItem.setRightBarButton(actorsBarButton, animated: false)
    }
    
    func rellenarceldas(){
    
        let key1 = Celdas(name: "Keyboards")
        let key2 = Celdas(name: "Hardware Keyboards")
        let key3 = Celdas(name: "Text Replacement")
        let key4 = Celdas(name: "One Handed Keyboard")
        
        let key5 = CeldasSwitch(name: "Auto-Capitalization", switches: true)
        let key6 = CeldasSwitch(name: "Auto-Correction",switches: true)
        let key7 = CeldasSwitch(name: "Check Spelling",switches: true)
        let key8 = CeldasSwitch(name: "Enable Caps Lock",switches: true)
        let key9 = CeldasSwitch(name: "Predictive",switches: true)
        let key10 = CeldasSwitch(name: "Smart Punctuation",switches: true)
        let key11 = CeldasSwitch(name: "Character Preview",switches: true)
        let key12 = CeldasSwitch(name: "Shortcut",switches: true)
        let key13 = CeldasSwitch(name: "Enable dictation",switches: false)
        
        celdas.append(key1)
        celdas.append(key2)
        celdas.append(key3)
        celdas.append(key4)
        celdasSwitch.append(key5)
        celdasSwitch.append(key6)
        celdasSwitch.append(key7)
        celdasSwitch.append(key8)
        celdasSwitch.append(key9)
        celdasSwitch.append(key10)
        celdasSwitch.append(key11)
        celdasSwitch.append(key12)
        celdasSwitch.append(key13)
    }
    
    @objc private func actorsPressed(){
        let general = General()
        navigationController?.pushViewController(general, animated: true)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
extension Principal : UITableViewDataSource, UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        switch (section) {
        case 2:
            return "ALL kEYBOARDS"
        default:
            return ""
        }
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        switch (section) {
    
        default:
            return ""
        }
    }
    
    func  numberOfSections(in tableView: UITableView) -> Int {
     return 4
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (section < 2){
            
            return 2
            
        }else if (section == 2)  {
            return 8
            
        }else if (section == 3){
            
            return 1
        }
        return 0
    }
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell : UITableViewCell = UITableViewCell()
        
        if (indexPath.section == 0){
            let cell : TVCKeyboards = (tablaPrincipal.dequeueReusableCell(withIdentifier: "KeyboardsCell", for: indexPath) as! TVCKeyboards)
            
            switch (indexPath.row){
            case 0:
                
                
                let keyboard = celdas[0]
                cell.lblCelda.text = keyboard.name
                cell.accessoryType = .disclosureIndicator
                return cell
                
            case 1:
                
                let keyboard = celdas[1]
                cell.lblCelda.text = keyboard.name
                cell.accessoryType = .disclosureIndicator
                return cell
                
                
            default: break
                
            }
            return cell
            

        } else if (indexPath.section == 1){
            
            let cell : TVCKeyboards = (tablaPrincipal.dequeueReusableCell(withIdentifier: "KeyboardsCell", for: indexPath) as! TVCKeyboards)
            
            switch (indexPath.row){
            case 0:
                
                
                let keyboard = celdas[2]
                cell.lblCelda.text = keyboard.name
                cell.accessoryType = .disclosureIndicator
                return cell
                
            case 1:
                
                let keyboard = celdas[3]
                cell.lblCelda.text = keyboard.name
                cell.accessoryType = .disclosureIndicator
                return cell
                
                
            default: break
                
            
        }
        } else if (indexPath.section == 2){
            
            let cellSwitch : TVCKeyboardsSwitch = (tablaPrincipal.dequeueReusableCell(withIdentifier: "KeyboardsCellSwitch", for: indexPath) as! TVCKeyboardsSwitch)
            
            switch (indexPath.row){
            case 0:
                
                let keyboard = celdasSwitch[0]
                cellSwitch.lblCelda.text = keyboard.name
               
                return cellSwitch
                
            case 1:
                
                let keyboard = celdasSwitch[1]
                cellSwitch.lblCelda.text = keyboard.name
                
                return cellSwitch
            case 2:
                
                let keyboard = celdasSwitch[2]
                cellSwitch.lblCelda.text = keyboard.name
                
                return cellSwitch
                
            case 3:
                
                let keyboard = celdasSwitch[3]
                cellSwitch.lblCelda.text = keyboard.name
                
                return cellSwitch
                
            case 4:
                
                let keyboard = celdasSwitch[4]
                cellSwitch.lblCelda.text = keyboard.name
                
                return cellSwitch
                
            case 5:
                
                let keyboard = celdasSwitch[5]
                cellSwitch.lblCelda.text = keyboard.name
                
                return cellSwitch
            case 6:
                
                let keyboard = celdasSwitch[6]
                cellSwitch.lblCelda.text = keyboard.name
               
                return cellSwitch
                
            case 7:
                
                let keyboard = celdasSwitch[7]
                cellSwitch.lblCelda.text = keyboard.name
                
                return cellSwitch
            
                
            default: break
                
                
            }
    
    
        }else if (indexPath.section == 3){
            
            let cellSwitch : TVCKeyboardsSwitch = (tablaPrincipal.dequeueReusableCell(withIdentifier: "KeyboardsCellSwitch", for: indexPath) as! TVCKeyboardsSwitch)
            
            switch (indexPath.row){
            case 0:
                
                let keyboard = celdasSwitch[8]
                cellSwitch.lblCelda.text = keyboard.name
                
                return cellSwitch
                
            default:
                break
            }
        }
        return cell
    }
}
