//
//  ViewController.swift
//  M2Homework3
//
//  Created by Artem Gorbachev on 03.01.2024.
//

import UIKit

class ViewController: UIViewController {

    lazy var img : UIImageView = {
       let image = UIImageView()
        image.image = UIImage(named: "avatar")
        image.translatesAutoresizingMaskIntoConstraints = false
        
        image.contentMode = .scaleAspectFill
        image.clipsToBounds = true
        image.layer.cornerRadius = 40
        
        return image
    }()
    
    lazy var nameLabel : UILabel = {
        let label = UILabel ()
        label.text = "Имя Фамилия"
        label.textColor = . black
        label.font = .boldSystemFont(ofSize: 20)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var aboutMeLabel : UILabel = {
        let label = UILabel ()
        label.text = "О себе"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var textView : UIView = {
        let v = UIView ()
        v.backgroundColor = UIColor(red: 232/255, green: 232/255, blue: 232/255, alpha: 1)
        v.translatesAutoresizingMaskIntoConstraints = false
        v.layer.cornerRadius = 15
        
        return v
    }()
    
    lazy var text : UILabel = {
       let text = UILabel ()
        text.text = "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo"
        text.textColor = .black
        text.numberOfLines = 0
        text.font = .systemFont(ofSize: 12)
        text.translatesAutoresizingMaskIntoConstraints = false
        
        return text
    }()
    
    lazy var fotoLabel : UILabel = {
        let label = UILabel ()
        label.text = "Фото"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 12)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    lazy var foto1 : UIImageView = {
        let image = UIImageView ()
        image.image = UIImage(named: "foto1")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 20
        image.contentMode = .scaleAspectFill
        

        return image
        
    }()
    
    lazy var foto2 : UIImageView = {
        let image = UIImageView ()
        image.image = UIImage(named: "foto2")
        image.translatesAutoresizingMaskIntoConstraints = false
        image.clipsToBounds = true
        image.layer.cornerRadius = 20
        image.contentMode = .scaleAspectFill
        
        return image
    }()
    
    lazy var redactBtn : UIButton = {
       let btn = UIButton ()
        btn.setTitle("Редактировать", for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.backgroundColor = UIColor(red: 19/255, green: 81/255, blue: 202/255, alpha: 1)
        btn.layer.cornerRadius = 20
        btn.translatesAutoresizingMaskIntoConstraints = false
    
        return btn
    }()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        
        view.addSubview(img)
        view.addSubview(nameLabel)
        view.addSubview(aboutMeLabel)
        view.addSubview(textView)
        view.addSubview(text)
        view.addSubview(fotoLabel)
        view.addSubview(foto1)
        view.addSubview(foto2)
        view.addSubview(redactBtn)
        
        NSLayoutConstraint.activate([
            img.heightAnchor.constraint(equalToConstant: 80),
            img.widthAnchor.constraint(equalToConstant: 80),
            img.topAnchor.constraint(equalTo: view.topAnchor, constant: 79),
            img.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            nameLabel.topAnchor.constraint(equalTo: img.bottomAnchor, constant: 20),
            nameLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            aboutMeLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 50),
            aboutMeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 33),
            
            textView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            textView.topAnchor.constraint(equalTo: aboutMeLabel.bottomAnchor, constant: 20),
            
            text.topAnchor.constraint(equalTo: textView.topAnchor, constant: 20),
            text.leadingAnchor.constraint(equalTo: textView.leadingAnchor, constant: 13),
            text.trailingAnchor.constraint(equalTo: textView.trailingAnchor, constant: -13),
            text.bottomAnchor.constraint(equalTo: textView.bottomAnchor, constant: -20),
            
            fotoLabel.topAnchor.constraint(equalTo: textView.bottomAnchor, constant: 52),
            fotoLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41),
            
            
            foto1.widthAnchor.constraint(equalToConstant: (view.frame.width/2) - 25),
            foto1.heightAnchor.constraint(equalToConstant: (view.frame.width/2) - 25),
            foto1.topAnchor.constraint(equalTo: fotoLabel.bottomAnchor, constant: 14),
            foto1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            
            foto2.widthAnchor.constraint(equalToConstant: (view.frame.width/2) - 25),
            foto2.heightAnchor.constraint(equalToConstant: (view.frame.width/2) - 25),
            foto2.topAnchor.constraint(equalTo: fotoLabel.bottomAnchor, constant: 14),
            foto2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            redactBtn.heightAnchor.constraint(equalToConstant: 59),
            redactBtn.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            redactBtn.widthAnchor.constraint(equalToConstant: (view.frame.width - 40)),
            redactBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -56)
            
            
        ])
    }
    

}
