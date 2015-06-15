//
//  KWMediaPlayerViewController.h
//  AVKitDemo
//
//  Created by Kai Windle on 15/06/2015.
//  Copyright © 2015 Kai Windle. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <AVFoundation/AVFoundation.h>
#import <AVKit/AVKit.h>

@interface KWMediaPlayerViewController : AVPlayerViewController

@property (nonatomic, assign) NSString *videofile;

@end
