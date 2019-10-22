//
//  ViewController.m
//  AVFoundationTest
//
//  Created by xiaoniu on 10/22/19.
//  Copyright © 2019 com.xffoundation. All rights reserved.
//

#import "ViewController.h"
#import <AVFoundation/AVFoundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.dataSources = @[@{ActionTypeString:@(ActionTypeController),ActionValueString:@"AVPlayTestVC",ActionDescString:@"AVPlayer"},
    @{ActionTypeString:@(ActionTypeController),ActionValueString:@"AVPlayerViewControlerTestVC",ActionDescString:@"AVPlayerViewControler"},];
    

    
}


@end
