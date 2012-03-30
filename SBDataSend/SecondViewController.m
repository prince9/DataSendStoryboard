//
//  SecondViewController.m
//  SBDataSend
//
//  Created by 真有 津坂 on 12/03/31.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "SecondViewController.h"
//追加、Add
#import "AppDelegate.h"

@implementation SecondViewController
@synthesize myLabel1;
@synthesize myLabel2;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //追加、Add
    //データを受け取って、ラベルに表示する
    AppDelegate *appDelegate = [[UIApplication sharedApplication] delegate];
    myLabel1.text = appDelegate.labelData1;
    myLabel2.text = appDelegate.labelData2;
}


- (void)viewDidUnload
{
    [self setMyLabel1:nil];
    [self setMyLabel2:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

//前の画面に戻る。IBで接続するよりメモリ的にこうやって書いたほうが良いらしい
- (IBAction)goBack:(id)sender {
    //追加、Add
    [self dismissModalViewControllerAnimated:YES];
}
@end
