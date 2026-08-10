//
//  DetailViewController.swift
//  StormViewer
//
//  Created by Merve Bulut on 9.08.2026.
//

import UIKit

class DetailViewController: UIViewController {
    @IBOutlet var imageView: UIImageView!
    var selectedImage: String?
    var selectedImageRow: Int?
    var totalImageCount: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let row = selectedImageRow, let count = totalImageCount {
            title = "Picture \(row + 1) of \(count)"
        }
        navigationItem.largeTitleDisplayMode = .never

        if let imageToLoad = selectedImage {
            imageView.image = UIImage(named: imageToLoad)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.hidesBarsOnTap = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        navigationController?.hidesBarsOnTap = false
    }
}
