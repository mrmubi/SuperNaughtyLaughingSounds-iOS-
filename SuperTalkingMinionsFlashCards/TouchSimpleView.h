//
//  TouchSimpleView.h
//  SuperTalkingMinionsFlashCards
//
//  Created by Mubshir Raza Ali on 27/07/2013.
//  Copyright (c) 2013 Mubshir Raza Ali. All rights reserved.
//

/*
 
 UI VIEW SUB CLASS
 
 */

@interface TouchSimpleView : UIImageView {
    id  delegate;
}
@property(retain) id delegate;
@end

@interface NSObject(TouchSimpleView)
-(void)didTouchView:(UIView *)aView;
@end