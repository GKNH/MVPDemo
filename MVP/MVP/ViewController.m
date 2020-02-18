//
//  ViewController.m
//  MVP
//
//  Created by Sun on 2020/2/17.
//  Copyright © 2020 sun. All rights reserved.
//

#import "ViewController.h"
#import "SAppPresenter.h"

@interface ViewController ()
@property (nonatomic, strong) SAppPresenter *presenter;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.presenter = [[SAppPresenter alloc] initWithController:self];
}


@end
