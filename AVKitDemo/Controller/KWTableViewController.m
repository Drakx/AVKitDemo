//
//  KWTableViewController.m
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

#import "KWTableViewController.h"
#import "KWMediaPlayerViewController.h"
#import "UIImage+ResizeImageToSize.h"

@interface KWTableViewController ()

@end

#define kCellWithReuseIdentifierCell        @"Cell"
#define kSegueWithIdentifierVideoPlayback   @"videoPlaybackSegue"

@implementation KWTableViewController {
    
    NSArray *sourceArray;
    NSArray *sourceTitlesArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
   
    // I know we're only using one video and is maybe overkill
    // but what the hell lets just do it anyway
    sourceArray = @[@"BBB"];
    sourceTitlesArray = @[@"Big Bunny Buck"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    NSInteger count = sourceArray.count;
    return count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:kCellWithReuseIdentifierCell];
    
    cell.textLabel.text = sourceTitlesArray[indexPath.row];
    cell.detailTextLabel.text = @"Press to play";
    cell.imageView.image = [UIImage imageNamed:@"BBB"];
    
    return cell;
}

#pragma mark - Table view delegate
-(void)tableView:(nonnull UITableView *)tableView didSelectRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    [self performSegueWithIdentifier:kSegueWithIdentifierVideoPlayback sender:self];
    
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

#pragma mark - Navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {

    if ([[segue identifier] isEqualToString:kSegueWithIdentifierVideoPlayback]) {
        
        // Assume we have more rows than I've allowed for this example
        NSIndexPath *selectedIndexPath = [self.tableView indexPathForSelectedRow];
        NSString *videofile = sourceArray[selectedIndexPath.row];
        
        KWMediaPlayerViewController *destinationController = [segue destinationViewController];
        destinationController.videofile = videofile;
    }
}

@end

