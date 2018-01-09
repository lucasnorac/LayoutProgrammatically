//
//  Programmar.swift
//  LayoutProgrammatically
//
//  Created by Lucas Caron Albarello on 14/12/17.
//  Copyright © 2017 Lucas Caron Albarello. All rights reserved.
//

import UIKit

class Programmar: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setUI()
        // Do any additional setup after loading the view.
    }

    func setUI(){
     let screenSize = UIScreen.main.bounds
     let navView = UIView()
        navView.frame = CGRect(x: 0, y: 0, width: screenSize.width, height: 57)
        navView.backgroundColor = UIColor.init(red: 126/255, green: 127/255, blue: 227/255, alpha: 1)
        view.addSubview(navView)
    let navLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 30))
        navLabel.center.x = navView.center.x
        navLabel.frame.origin.y = navView.frame.height - navLabel.frame.height
        navLabel.text = "Bem-Vindo"
        navLabel.textColor = .white
        navLabel.textAlignment = .center
        navView.addSubview(navLabel)
        
    let myImage = UIImageView(frame: CGRect(x: 0, y: navView.frame.height + 40, width: 120, height: 120))
        myImage.center.x = view.center.x
        myImage.image = #imageLiteral(resourceName: "testImage")
        myImage.contentMode = .scaleAspectFill
        view.addSubview(myImage)
   
    let emailField = UITextField(frame: CGRect(x: 16, y: myImage.frame.maxY + 30, width: screenSize.width - 32, height: 30))
        emailField.placeholder = "E-mail"
        emailField.keyboardType = .emailAddress
        emailField.borderStyle = .roundedRect
        view.addSubview(emailField)
    
    let senhaField = UITextField(frame: CGRect(x: 16, y: emailField.frame.maxY + 20, width: screenSize.width - 32, height: 30))
        senhaField.placeholder = "Senha"
        senhaField.isSecureTextEntry = true
        senhaField.borderStyle = .roundedRect
        view.addSubview(senhaField)
    
    let botao = UIButton(frame: CGRect(x: 0, y: senhaField.frame.maxY + 40, width: 100, height: 70))
        botao.center.x = view.center.x
        botao.backgroundColor = .purple
        botao.setTitle("Logar", for: .normal)
        botao.setTitleColor(.white, for: .normal)
        botao.addTarget(self, action: #selector(onButtonTapped(_:)), for: .touchUpInside)
        view.addSubview(botao)
    }
    
    @objc func onButtonTapped(_ sender: UIButton){
        print("Vai cagar")
    }
}
