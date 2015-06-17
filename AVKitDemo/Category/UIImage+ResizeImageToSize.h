//
//  UIImage+ResizeImageToSize.h
//  AVKitDemo
//
//  Created by Kai Windle on 15/06/2015.
//  Copyright © 2015 Kai Windle. All rights reserved.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
//  EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
//  OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
//  NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
//  HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
//  WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
//  FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
//  OTHER DEALINGS IN THE SOFTWARE.
//

#import <UIKit/UIKit.h>

@interface UIImage (ResizeImageToSize)

/**
 Scales a given image down to or indeed up to a new CGSize
 
 @param image Image to be scaled
 @param newSize The new size the image is to be scaled to
 @returns UIImage
 */
+(UIImage *)imageWithImage:(UIImage*)image scaledToSize:(CGSize)newSize;

@end
