//
//  ViewController.swift
//  Swift_Study_15
//
//  Created by DohyunKim on 2020/06/12.
//  Copyright © 2020 DohyunKim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pick(_ sender: Any) {
        
        let picker = UIImagePickerController()
        
        picker.sourceType = .photoLibrary
        
        picker.allowsEditing = true
        
        picker.delegate = self
        
        self.present(picker, animated: false)
        
    }
    
    
}
// MARK:- imagepickercontrollerdelegate method
extension ViewController: UIImagePickerControllerDelegate {
    
}

extension ViewController: UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: false)
        
        self.dismiss(animated: false) { () in
            let alert = UIAlertController(title: "", message: "이미지 선택이 취소되었습니다", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "확인", style: .cancel))
            
            self.present(alert, animated: false)

        }
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        picker.dismiss(animated: false) { () in
            let img = info[UIImagePickerController.InfoKey.editedImage] as? UIImage
            
            self.imgView.image = img
        }
    }
    
}

