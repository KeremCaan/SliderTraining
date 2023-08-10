//
//  ViewController.swift
//  SlidersNeonAcademy
//
//  Created by Kerem Caan on 31.07.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    let slider : UISlider = UISlider()
    let imageView : UIImageView = UIImageView()
    let label : UILabel = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    func configureUI() {
        
        view.addSubview(imageView)
        imageView.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(400)
            make.centerX.equalToSuperview()
            make.height.width.equalTo(200)
        }
        
        view.addSubview(label)
        label.text = "0"
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(250)
            make.centerX.equalToSuperview()
            make.width.height.equalTo(50)
        }
        
        
        view.addSubview(slider)
        slider.maximumTrackTintColor = .red
        slider.minimumTrackTintColor = .green
        slider.thumbTintColor = .blue
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.addTarget(self, action: #selector(intConverter), for: .valueChanged)
        slider.maximumValueImage = UIImage(systemName: "flame")
        slider.minimumValueImage = UIImage(systemName: "flame")
        slider.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(150)
            make.centerX.equalToSuperview()
            make.width.equalTo(300)
        }
    }
    @objc func intConverter() {
        label.text = "\(Int(slider.value))"
        if Int(slider.value) == 50 {
            imageView.image = UIImage(named: "reddragon")
        }

}

}
