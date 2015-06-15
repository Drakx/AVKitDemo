//
//  UIImage+ResizeImageToSize.m
//  AVKitDemo
//
//  Created by Kai Windle on 15/06/2015.
//  Copyright © 2015 Kai Windle. All rights reserved.
//

#import "UIImage+ResizeImageToSize.h"

@implementation UIImage (ResizeImageToSize)

+(UIImage *)imageWithImage:(UIImage *)image scaledToSize:(CGSize)newSize {
    
    // Create a bitmap graphics context
    // This will also set it as the current context
    UIGraphicsBeginImageContext(newSize);
    
    // Draw the scaled image in the current context
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    
    // Create a new image from current context
    UIImage* scaledImage = UIGraphicsGetImageFromCurrentImageContext();
    
    // Pop the current context from the stack
    UIGraphicsEndImageContext();
    
    // Return our new scaled image
    return scaledImage;
}
@end
