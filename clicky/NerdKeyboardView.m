//
//  NerdKeyboardView.m
//  clicky
//
//  Created by Greg Heo on 2013-03-17.
//  Copyright (c) 2013 Silent Silicon. All rights reserved.
//

#import "NerdKeyboardView.h"

@implementation NerdKeyboardView

- (BOOL)enableInputClicksWhenVisible {
  return YES;
}

- (void)playKeyboardClick
{
  [[UIDevice currentDevice] playInputClick];
}

@end
