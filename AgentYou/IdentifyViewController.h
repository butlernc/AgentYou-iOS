//
//  IdentifyViewController.h
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/6/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifndef AgentYou_IdentifyViewController_h
#define AgentYou_IdentifyViewController_h

@interface IdentifyViewController : UIViewController <UIImagePickerControllerDelegate, UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *CameraPreview;
@property UIImagePickerController *imagePicker;


- (IBAction)CaptureAgent:(id)sender;

@end


#endif
