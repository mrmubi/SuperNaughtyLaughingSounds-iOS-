//
//  ViewController.m
//  SuperTalkingMinionsFlashCards
//
//  Created by Mubshir Raza Ali on 27/07/2013.
//  Copyright (c) 2013 Mubshir Raza Ali. All rights reserved.
//

#import "ViewController.h"
#import "TouchSimpleView.h"


@interface ViewController ()

@end

@implementation ViewController


bool slocked;
AVAudioPlayer *audioPlayer;


- (void)viewDidLoad
{
    [super viewDidLoad];
	
     [self loadDef];   
    
     [self loadAds];
}

- (IBAction)ImageClickedEvent:(id)sender {
    
    [self loadScene];

}

- (IBAction)ImageSwipedEvent:(id)sender {
    [self loadScene];

}

- (IBAction)ImageLongPressEvent:(id)sender {
    [self loadScene];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)loadScene{
    [self loadImage];
    [self loadSound];
}

-(void)loadImage{
    
    int number = (arc4random()%9)+1; //Generates Number from 1 to 100.
    NSString *string = [NSString stringWithFormat:@"%i", number];
    NSString *imgFileName=[NSString stringWithFormat:@"%@%@%@",@"m", string,@".png"];
    imgView.image = [UIImage imageNamed:imgFileName];
    imageView2.image = [UIImage imageNamed:imgFileName];

    
    
}

-(void)loadSound{

    int snumber = (arc4random()%37)+1; //Generates Number from 1 to 100.
    NSString *sstring = [NSString stringWithFormat:@"%i", snumber];
    NSString *simgFileName=[NSString stringWithFormat:@"%@%@%@",@"%@/s", sstring,@".mp3"];
    
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:simgFileName, [[NSBundle mainBundle] resourcePath]]];
	
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	audioPlayer.numberOfLoops = -1;
	
	if (audioPlayer == nil)
		NSLog([error description]);
	else
		[audioPlayer play];
    
}

-(void)loadDef{

    
        
    NSURL *url = [NSURL fileURLWithPath:[NSString stringWithFormat:@"%@/s1.mp3", [[NSBundle mainBundle] resourcePath]]];
	
	NSError *error;
	audioPlayer = [[AVAudioPlayer alloc] initWithContentsOfURL:url error:&error];
	audioPlayer.numberOfLoops = -1;
	
	if (audioPlayer == nil)
		NSLog([error description]);
	else
		[audioPlayer play];
}

- (void)dealloc {
	//[audioPlayer release];
	//[super dealloc];
}

-(void) loadAds{
    
    
    bannerView_ = [[GADBannerView alloc] initWithAdSize:kGADAdSizeBanner];
        
    // Specify the ad's "unit identifier." This is your AdMob Publisher ID.
    bannerView_.adUnitID = @"a151f5640553bbc";
      bannerView_.rootViewController = self;
    [self.view addSubview:bannerView_];
     // test devivce
	GADRequest *request = [GADRequest request];
	    
	// Initiate a generic request to load it with an ad.
    [bannerView_ loadRequest:request];

}

- (IBAction)iPadImgTap:(id)sender {
    [self loadImage];
    [self loadSound];
}

- (IBAction)iPadImgSwapAction:(id)sender {
    [self loadImage];
    [self loadSound];
}

- (IBAction)iPadImgLongPress:(id)sender {
    [self loadImage];
    [self loadSound];
}


- (void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    //if (UIInterfaceOrientationIsLandscape(toInterfaceOrientation))
      //  bannerView_.currentContentSizeIdentifier =
     //   ADBannerContentSizeIdentifierLandscape;
  //  else
      //  bannerView_.currentContentSizeIdentifier =
     //   ADBannerContentSizeIdentifierPortrait;
}

@end

