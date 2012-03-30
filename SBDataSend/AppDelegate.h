//
//  AppDelegate.h
//  SBDataSend
//
//  Created by 真有 津坂 on 12/03/31.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate> {
    //追加、Add
    NSString *labelData1; //スライダのデータを送る変数、The variable which sends the data of a slider 
    NSString *labelData2; //TextFieldに入力されたデータを送る変数、The variable which sends the data inputted into TextField
}

@property (strong, nonatomic) UIWindow *window;

//追加、Add
//labelData1、labelData2というプロパティを作る
@property (strong, nonatomic) NSString *labelData1;
@property (strong, nonatomic) NSString *labelData2;

@end
