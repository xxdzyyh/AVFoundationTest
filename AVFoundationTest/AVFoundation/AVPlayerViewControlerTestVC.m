//
//  AVPlayerViewControlerTestVC.m
//  AVFoundationTest
//
//  Created by xiaoniu on 10/22/19.
//  Copyright © 2019 com.xffoundation. All rights reserved.
//

#import "AVPlayerViewControlerTestVC.h"
#import <AVKit/AVKit.h>

@interface AVPlayerViewControlerTestVC ()

@property (nonatomic, strong) AVPlayerViewController *playerVC;

@end

@implementation AVPlayerViewControlerTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSURL *url = [NSURL URLWithString:@"https://ksv-video-publish.cdn.bcebos.com/d30e41c2c3ebe866c8e9ce12749b189153a099c5.mp4?auth_key=1618342584-0-0-a607021f43f236f5be45dae67999cf9f&amp"];
    
    AVPlayer *player = [[AVPlayer alloc] initWithURL:url];
    AVPlayerLayer *layer = [AVPlayerLayer playerLayerWithPlayer:player];
    layer.videoGravity = AVLayerVideoGravityResizeAspect;
    layer.frame = CGRectMake(50, 100, 300, 200);
    
    self.playerVC = [[AVPlayerViewController alloc] init];
    self.playerVC.player = player;
    
    [self presentViewController:self.playerVC animated:YES completion:nil];
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
