//
//  ViewController.h
//  SBDataSend
//
//  Created by 真有 津坂 on 12/03/31.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UISlider *mySlider;
@property (weak, nonatomic) IBOutlet UITextField *myField;

- (IBAction)KeyHide:(id)sender;

- (IBAction)detaSend:(id)sender;

@end
