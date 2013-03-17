//
//  NerdKeyboard.h
//  clicky
//
//  Created by Greg Heo on 2013-03-17.
//  Copyright (c) 2013 Silent Silicon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NerdKeyboard : UIViewController

@property (nonatomic, weak) id delegate;

- (IBAction)keyPress:(id)sender;
- (IBAction)doneEditing:(id)sender;

@end
