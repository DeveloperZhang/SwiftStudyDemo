//
//  ViewController.m
//  TestFixSwift
//
//  Created by ZhangYu on 2021/5/13.
//  Copyright © 2021 MyZone. All rights reserved.
//

#import "ViewController.h"
#import "TestFixSwift-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    FixSwift *fs = [FixSwift new];
    [fs myTest];
    
}


@end
