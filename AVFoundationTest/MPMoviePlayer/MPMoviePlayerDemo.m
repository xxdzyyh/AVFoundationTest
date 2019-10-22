//
//  MPMoviePlayerDemo.m
//  AVFoundationTest
//
//  Created by xiaoniu on 10/22/19.
//  Copyright © 2019 com.xffoundation. All rights reserved.
//

#import "MPMoviePlayerDemo.h"
#import <MediaPlayer/MediaPlayer.h>

@interface MPMoviePlayerDemo ()

@property (nonatomic, strong) MPMoviePlayerController *playerController;

@end

@implementation MPMoviePlayerDemo

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.playerController = [[MPMoviePlayerController alloc] initWithContentURL:[NSURL URLWithString:@"https://ksv-video-publish.cdn.bcebos.com/d30e41c2c3ebe866c8e9ce12749b189153a099c5.mp4?auth_key=1618342584-0-0-a607021f43f236f5be45dae67999cf9f&amp"]];
    self.playerController.view.frame = (CGRect){100,100,200,150};
    [self.view addSubview:self.playerController.view];
}

@end
