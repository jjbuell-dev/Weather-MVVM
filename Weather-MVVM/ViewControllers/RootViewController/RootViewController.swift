//
//
// Weather-MVVM
// 
// RootViewController.swift
//
// Created by Royal Blue Software
// 


import UIKit

final class RootViewController: UIViewController {
    
    // MARK: - Properties
    
    private let dayViewController: DayViewController = {
        let dayViewController = DayViewController()
        dayViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        return dayViewController
    }()
    
    private let weekViewController: WeekViewController = {
        let weekViewController = WeekViewController()
        weekViewController.view.translatesAutoresizingMaskIntoConstraints = false
        
        return weekViewController
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setup Child ViewContollers
        setupChildViewControllers()
        
        // Fetch Weather Data
        fetchWeatherData()
        
    }
    
    
    // MARK: - Fetch Weather Data Function
    
    private func fetchWeatherData() {
       
        guard let baseURL = URL(string: "https://https://weatherapi-com.p.rapidapi.com/current.json?") else { return }
        let url = baseURL.appendingPathComponent("q=\(84604)")
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Request Did Fail: \(error)")
                
            } else if let response = response {
                print(response)
            }
            print(url)
        }.resume()
    }
    
    // MARK: - Helper Functions
    
    private func setupChildViewControllers() {
        addChild(dayViewController)
        addChild(weekViewController)
        
        view.addSubview(dayViewController.view)
        view.addSubview(weekViewController.view)
        
        dayViewController.didMove(toParent: self)
        weekViewController.didMove(toParent: self)
        
        NSLayoutConstraint.activate([
            dayViewController.view.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            dayViewController.view.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor),
            dayViewController.view.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor),
            dayViewController.view.heightAnchor.constraint(equalToConstant: 200),
            
            weekViewController.view.topAnchor.constraint(equalTo: dayViewController.view.bottomAnchor),
            weekViewController.view.leadingAnchor.constraint(equalTo: dayViewController.view.leadingAnchor),
            weekViewController.view.trailingAnchor.constraint(equalTo: dayViewController.view.trailingAnchor),
            weekViewController.view.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
