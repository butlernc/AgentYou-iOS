//
//  LoginViewController.m
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/6/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LoginViewController.h"
#import "KairosSDK.h"

@interface LoginViewController()

@end


@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [KairosSDK initWithAppId:@"3ee0bf26" appKey:@"39cc178beba27322ad2c99df0153e58c"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end