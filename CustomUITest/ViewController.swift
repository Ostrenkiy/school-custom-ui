//
//  ViewController.swift
//  CustomUITest
//
//  Created by Ostrenkiy on 19.07.2020.
//  Copyright © 2020 Ostrenkiy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var gradientContainerView: GradientContainerView!
    
    var trackLists: [TrackList] = [
        TrackList(title: "Sia's songs", tracks: [
            Track(title: "Chandelier", imagePath: "https://picsum.photos/600"),
            Track(title: "Chandelier2", imagePath: "https://picsum.photos/601"),
            Track(title: "Chandelier3", imagePath: "https://picsum.photos/602"),
        ]),
        TrackList(title: "Top pick", tracks: [
            Track(title: "Best song", imagePath: "https://picsum.photos/603"),
            Track(title: "Numb", imagePath: "https://picsum.photos/604"),
            Track(title: "Hips don't lie", imagePath: "https://picsum.photos/605"),
            Track(title: "Du hast", imagePath: "https://picsum.photos/606"),
        ])
    ]
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupStackView()
        gradientContainerView.colors = [
            UIColor.white.cgColor,
            UIColor.clear.cgColor
        ]
        // Do any additional setup after loading the view.
    }
    
    private func setupStackView() {
        trackLists.map { trackList in
            let view: TrackListView = .fromNib()
            view.setup(trackList: trackList)
            return view
        }.forEach {
            stackView.addArrangedSubview($0)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
