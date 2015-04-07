//
//  RegisterViewController.h
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/6/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#ifndef AgentYou_RegisterViewController_h
#define AgentYou_RegisterViewController_h

#import <UIKit/UIKit.h>

@interface RegisterViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *agentEmailField;

@property (strong, nonatomic) IBOutlet UITextField *agentNameField;

@property (strong, nonatomic) IBOutlet UITextField *agentPasswordField;

@property (strong, nonatomic) IBOutlet UITextField *agentRePasswordField;

- (IBAction)advanceToCreateID:(id)sender;

@end


#endif
