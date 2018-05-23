//
//  TouchSimpleView.m
//  SuperTalkingMinionsFlashCards
//
//  Created by Mubshir Raza Ali on 27/07/2013.
//  Copyright (c) 2013 Mubshir Raza Ali. All rights reserved.
//



#import "TouchSimpleView.h"
@implementation TouchSimpleView
@synthesize delegate;
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSLog(@"touchesBegan!!! ");
    if ( delegate != nil && [delegate respondsToSelector:@selector(didTouchView:)] ) {
        [delegate didTouchView:self];
    }
    [super touchesBegan:touches withEvent:event];
}
@end
