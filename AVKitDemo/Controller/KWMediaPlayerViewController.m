//
//  KWMediaPlayerViewController.m
//  AVKitDemo
//
//  Created by Kai Windle on 15/06/2015.
//  Copyright © 2015 Kai Windle. All rights reserved.
//
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

-(void)viewDidDisappear:(BOOL)animated {
    
    [super viewDidDisappear:animated];
    
    if ([self isPlaying]) {
        // stop the video playback
        [self stopPlayback];
    }
}

-(void)stopPlayback {
    
    [self.player setRate:0];
    self.player = nil;
}

-(BOOL)isPlaying {
    
    if (self.player.currentItem && self.player.rate > 0) {
        
        return YES;
    }
    
    return NO;
}

-(void)setupVideoPlayback {
    
    NSURL *url          = [[NSBundle mainBundle] URLForResource:self.videofile withExtension:@"mp4"];
    
    AVURLAsset *asset   = [AVURLAsset URLAssetWithURL:url options:nil];
    AVPlayerItem *item  = [AVPlayerItem playerItemWithAsset:asset];
    
    self.player         = [AVPlayer playerWithPlayerItem:item];
    [self.player seekToTime:kCMTimeZero];
    [self.player play];

}

@end
