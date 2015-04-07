//
//  IdentifyViewController.m
//  AgentYou
//
//  Created by Schasse, Christopher Daniel on 4/6/15.
//  Copyright (c) 2015 Noah Butler. All rights reserved.
//

#import <Foundation/Foundation.h>
#include "IdentifyViewController.h"


@implementation IdentifyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.imagePicker = [[UIImagePickerController alloc] init];
    
    if([UIImagePickerController isSourceTypeAvailable:UIImagePickerControllerSourceTypeCamera]) {
        //if camera is available
        [self.imagePicker setSourceType:UIImagePickerControllerSourceTypeCamera];
        
    }else {
        //show pictures if there is no camera available, redundant, they need a camera to use this app.
        [self.imagePicker setSourceType:UIImagePickerControllerSourceTypePhotoLibrary];
        
        [self.imagePicker setDelegate:self];
        [self presentModalViewController:self.imagePicker animated:YES];
        
    }
    
    self.imagePicker.allowsEditing = NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    
    NSString *mediaType = [info objectForKey: UIImagePickerControllerMediaType];
}

- (IBAction)CaptureAgent:(id)sender {
    [self.imagePicker takePicture];
    
    
}
@end