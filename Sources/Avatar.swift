/*
 MIT License
 
 Copyright (c) 2017 MessageKit
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE. 
 */

import Foundation

public struct Avatar {
    
    public let image: UIImage?
    
    public let highlightedImage: UIImage?
    
    public let placeholderImage: UIImage
    
    public init(image: UIImage? = nil, highlightedImage: UIImage? = nil, placeholderImage: UIImage) {
        self.image = image
        self.highlightedImage = highlightedImage
        self.placeholderImage = placeholderImage
    }
    
    public func image(highlighted: Bool) -> UIImage {
        
        switch highlighted {
        case true:
            return highlightedImage ?? image ?? placeholderImage
        case false:
            return image ?? placeholderImage
        }

    }
}
