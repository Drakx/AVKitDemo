//
//  KWMediaPlayerViewController.m
//  AVKitDemo
//
//  Created by Kai Windle on 15/06/2015.
//  Copyright © 2015 Kai Windle. All rights reserved.
//

#import "KWMediaPlayerViewController.h"

@interface KWMediaPlayerViewController ()

-(void)setupVideoPlayback;

@end

@implementation KWMediaPlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self setupVideoPlayback];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupVideoPlayback {
    
    NSURL *url          = [[NSBundle mainBundle] URLForResource:self.videofile withExtension:@"mp4"];
    
    AVURLAsset *asset   = [AVURLAsset URLAssetWithURL:url options:nil];
    AVPlayerItem *item  = [AVPlayerItem playerItemWithAsset:asset];
    
    self.player = [AVPlayer playerWithPlayerItem:item];
    [self.player seekToTime:kCMTimeZero];
    [self.player play];

}

@end
