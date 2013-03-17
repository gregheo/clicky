//
//  NerdKeyboard.m
//  clicky
//
//  Created by Greg Heo on 2013-03-17.
//  Copyright (c) 2013 Silent Silicon. All rights reserved.
//

#import "NerdKeyboard.h"
#import "NerdKeyboardView.h"

@implementation NerdKeyboard

- (IBAction)keyPress:(id)sender
{
  // click!
  [(NerdKeyboardView *)self.view playKeyboardClick];

  // update the textfield (or whatever)
  if (self.delegate && [self.delegate respondsToSelector:@selector(setText:)]) {
    NSString *oldText = [self.delegate text];
    NSString *thisKey = [[(UIButton *)sender titleLabel] text];
    
    [self.delegate performSelector:@selector(setText:) withObject:[oldText stringByAppendingString:thisKey]];
  } else if (self.delegate && [self.delegate respondsToSelector:@selector(nerdKeyPress:)]) {
    [self.delegate performSelector:@selector(nerdKeyPress:) withObject:[[(UIButton *)sender titleLabel] text]];
  }
}

- (IBAction)doneEditing:(id)sender
{
  if (self.delegate && [self.delegate respondsToSelector:@selector(resignFirstResponder)]) {
    [self.delegate performSelector:@selector(resignFirstResponder)];
  }
}

@end
