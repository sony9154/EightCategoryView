//
//  ViewController.m
//  EightCategoryView
//
//  Created by Peter.Hsu on 2017/2/15.
//  Copyright © 2017年 Peter.Hsu. All rights reserved.
//

#import "ViewController.h"
#import "ChannelsController.h"

@interface ViewController () {
    ChannelsController *_channelsController;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ( ! _channelsController )
        _channelsController = [[ChannelsController alloc] init:self withView:self.view yOffset:0];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
