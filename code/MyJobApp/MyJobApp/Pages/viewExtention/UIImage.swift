// Created by 白童童 on 2022/11/30.
// Copyright © 2022白童童. All rights reserved.

import Foundation
import UIKit
import CoreImage
import SwiftUI

// Extension of UIImage.
extension UIImage {
    // brown-image-filter(old picture)
    func sepiaTone() -> UIImage? {
        let imageData = self.pngData()
        let inputImage = CoreImage.CIImage(data: imageData!)
        let context = CIContext(options:nil)
        let filter = CIFilter(name:"CISepiaTone")
        filter!.setValue(inputImage, forKey: kCIInputImageKey)
        filter!.setValue(0.8, forKey: "inputIntensity")
        if let outputImage = filter!.outputImage {
            let outImage = context.createCGImage(outputImage, from: outputImage.extent)
            return UIImage(cgImage: outImage!)
        }
        return nil
    }
    
}

