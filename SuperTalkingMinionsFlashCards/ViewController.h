//
//  ViewController.h
//  SuperTalkingMinionsFlashCards
//
//  Created by Mubshir Raza Ali on 27/07/2013.
//  Copyright (c) 2013 Mubshir Raza Ali. All rights reserved.
//

#import <UIKit/UIKit.h>

#import "TouchSimpleView.h"
#import "AVFoundation/AVAudioPlayer.h"
#import "GADBannerView.h"

@interface ViewController : UIViewController{
    TouchSimpleView *touchView;
    IBOutlet UIImageView *imageView;
    
    IBOutlet UIImageView *imageView2;
    
    //UIImageView *imageView;
   GADBannerView *bannerView_;
    
      
    //__weak IBOutlet GADBannerView *bannerView2_;
    
    __weak IBOutlet UIImageView *imgView;
}

@property (nonatomic, retain) TouchSimpleView *touchView;
@property (nonatomic, retain) IBOutlet UIImageView *imageView;
- (IBAction)iPadImgTap:(id)sender;
- (IBAction)iPadImgSwapAction:(id)sender;
- (IBAction)iPadImgLongPress:(id)sender;
   

- (IBAction)buttonPress:(id)sender;

@end



