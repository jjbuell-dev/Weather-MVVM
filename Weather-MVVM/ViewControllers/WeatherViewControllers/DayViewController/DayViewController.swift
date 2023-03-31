//
//
// Weather-MVVM
// 
// DayViewController.swift
//
// Created by Royal Blue Software
// 


import UIKit

final class DayViewController: UIViewController {

    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

     // SetupView
        setupView()
    }
    
    // MARK: - Helper Functions
    
    private func setupView() {
        // configure view
        view.backgroundColor = .systemBlue
    }

}
