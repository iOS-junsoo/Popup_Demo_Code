//
//  ViewController.swift
//  Popup_Demo
//
//  Created by 준수김 on 2021/10/15.
//

import UIKit

final class ViewController: UIViewController {

   private let popUpButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // SetUp View - View 설정
        view.backgroundColor = UIColor.white
        
        // SetUp PopUpButton - 버튼 설정
        popUpButton.setTitle("PopUp", for: .normal)
        popUpButton.setTitleColor(UIColor.blue, for: .normal)
        popUpButton.addTarget(self, action: #selector(didTapPopUpButton(_:)), for: .touchUpInside)
        view.addSubview(popUpButton)

        // PopUpButton AutoLayout - 버튼 레이아웃 설정
        popUpButton.translatesAutoresizingMaskIntoConstraints = false
        popUpButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        popUpButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 200).isActive = true
        popUpButton.frame.size = CGSize(width: 100, height: 50)
    }
    
    @objc func didTapPopUpButton(_ sender: UIButton) { //버튼을 클릭했을 때
        print("Tap")
        let popUpViewController = PopUpViewController()
        popUpViewController.modalPresentationStyle = .overCurrentContext //view가 생성되는 스타일
        present(popUpViewController, animated: true, completion: nil)
    }
}


