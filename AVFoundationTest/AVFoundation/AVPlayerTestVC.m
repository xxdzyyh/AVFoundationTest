//
//  AVPlayTestVC.m
//  AVFoundationTest
//
//  Created by xiaoniu on 10/22/19.
//  Copyright © 2019 com.xffoundation. All rights reserved.
//

#import "AVPlayerTestVC.h"
#import <AVFoundation/AVFoundation.h>

@interface AVPlayerTestVC ()

@property (nonatomic, strong) AVPlayer *player;
@property (nonatomic, strong) AVPlayerItem *currentPlayerItem;

@end

@implementation AVPlayerTestVC

- (void)viewDidLoad {
    [super viewDidLoad];

    self.currentPlayerItem = [[AVPlayerItem alloc] initWithURL:[NSURL URLWithString:@"https://ksv-video-publish.cdn.bcebos.com/d30e41c2c3ebe866c8e9ce12749b189153a099c5.mp4?auth_key=1618342584-0-0-a607021f43f236f5be45dae67999cf9f&amp"]];
    
    self.player = [[AVPlayer alloc] initWithPlayerItem:self.currentPlayerItem];
    
    AVPlayerLayer *layer = [AVPlayerLayer playerLayerWithPlayer:self.player];
    layer.videoGravity = AVLayerVideoGravityResizeAspect;
    layer.frame = CGRectMake(50, 100, 300, 200);
    
    [self.view.layer addSublayer:layer];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    [self.player play];
}

@end
