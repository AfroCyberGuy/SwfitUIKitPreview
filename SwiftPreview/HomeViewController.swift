//
//  HomeViewController.swift
//  SwiftPreview
//
//  Created by Tatenda Kabike on 2019/11/19.
//  Copyright © 2019 Tatenda Kabike. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController{
    
    //Instantiating UITextField control
    let userTextField: UITextField = {
        
        let tf = UITextField()
        tf.backgroundColor = .white
        tf.translatesAutoresizingMaskIntoConstraints
            = false
        return tf
    }()

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        //Adding the UITextField
        view.addSubview(userTextField)
        userTextField.placeholder = "Username"
        
        //Adding contraints
        userTextField.topAnchor.constraint(equalTo: view.topAnchor, constant: 200).isActive = true
        userTextField.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 40).isActive = true
        userTextField.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -40).isActive = true
        userTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        
        
    }
}


import SwiftUI
struct MainPreview: PreviewProvider {
    
    static var previews: some View {
        
        ContainerView().edgesIgnoringSafeArea(.all)
    }
    
    
    struct ContainerView: UIViewControllerRepresentable {
     
        func makeUIViewController(context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) -> UIViewController {
            
            return HomeViewController()
        }
        
        func updateUIViewController(_ uiViewController: MainPreview.ContainerView.UIViewControllerType, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {


        }
    }
}

