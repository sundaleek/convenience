//
//  VersionViewController.swift
//  Convenience
//
//  Created by Davide De Rosa on 9/9/19.
//  Copyright © 2019 Davide De Rosa. All rights reserved.
//

import UIKit

public class VersionViewController: UIViewController {
    @IBOutlet private weak var scrollView: UIScrollView?

    @IBOutlet private weak var imageApp: UIImageView?

    @IBOutlet private weak var labelTitle: UILabel?
    
    @IBOutlet private weak var labelVersion: UILabel?
    
    @IBOutlet private weak var labelIntro: UILabel?
    
    public var backgroundColor: UIColor?
    
    public var textColor: UIColor?

    public var appIcon: UIImage?

    public var extraText: String?
    
    public convenience init() {
        self.init(nibName: nil, bundle: Bundle(for: VersionViewController.self))
    }

    public override func viewDidLoad() {
        super.viewDidLoad()
        
        if title == nil {
            title = "Version"
        }
        imageApp?.image = appIcon ?? UIImage(named: "AppIcon")
        labelTitle?.text = Bundle.main.infoDictionary?["CFBundleName"] as? String
        labelVersion?.text = ApplicationInfo.appVersion
        labelIntro?.text = extraText

        if let backgroundColor = backgroundColor {
            scrollView?.backgroundColor = backgroundColor
        }
        if let textColor = textColor {
            for label in [labelTitle, labelVersion, labelIntro] {
                label?.textColor = textColor
            }
        }
    }
}
