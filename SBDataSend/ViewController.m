//
//  ViewController.m
//  SBDataSend
//
//  Created by 真有 津坂 on 12/03/31.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "ViewController.h"
//追加、Add
#import "AppDelegate.h"

@implementation ViewController
@synthesize mySlider;
@synthesize myField;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewDidUnload
{
    [self setMySlider:nil];
    [self setMyField:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction)KeyHide:(id)sender {
    //追加、Add
    //キーボードをしまう
    [myField resignFirstResponder];
}

//ボタンを押すとデータを送る
- (IBAction)detaSend:(id)sender {
    //追加、Add
    //データを送る準備
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    appDelegate.labelData1 = [NSString stringWithFormat:@"%f",mySlider.value];
    appDelegate.labelData2 = myField.text;
}
@end
