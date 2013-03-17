//
//  ViewController.m
//  clicky
//
//  Created by Greg Heo on 2013-03-17.
//  Copyright (c) 2013 Silent Silicon. All rights reserved.
//

#import "ViewController.h"
#import "NerdKeyboard.h"

@interface ViewController () {
  NerdKeyboard *nerdKeyboard_;
}

@end

@implementation ViewController

- (void)viewDidLoad
{
  [super viewDidLoad];

  nerdKeyboard_ = [[NerdKeyboard alloc] initWithNibName:@"NerdKeyboard" bundle:nil];
  [self.nerdTextField setInputView:nerdKeyboard_.view];
  [nerdKeyboard_ setDelegate:self.nerdTextField];
}

@end
