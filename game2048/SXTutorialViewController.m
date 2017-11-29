//
//  SXTutorialViewController.m
//  game2048
//
//  Created by Sun Xi on 3/25/14.
//  Copyright (c) 2014 Sun Xi. All rights reserved.
//

#import "SXTutorialViewController.h"
#import "SRCarouselView.h"

@interface SXTutorialViewController ()<UIScrollViewDelegate, SRCarouselViewDelegate>


@property (weak, nonatomic) IBOutlet SRCarouselView *carouselView;
@property (weak, nonatomic) IBOutlet UIPageControl *pageControl;
@property (weak, nonatomic) IBOutlet UIButton *button;

@end

@implementation SXTutorialViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.button setTitle:NSLocalizedString(@"Start the game", @"") forState:UIControlStateNormal];
    NSArray *imageArray = @[[UIImage imageNamed:@"tt1"],
                            [UIImage imageNamed:@"tt2"]];
    
    SRCarouselView *carouselView = [SRCarouselView sr_carouselViewWithImageArrary:imageArray describeArray:nil placeholderImage:nil delegate:self];
    carouselView.frame = CGRectMake(20, 80, self.view.frame.size.width - 40, self.view.frame.size.height - 50);
    carouselView.currentPageIndicatorTintColor = [UIColor blueColor];
    carouselView.pageIndicatorTintColor = [UIColor blackColor];
    carouselView.autoPagingInterval = 10.0;
    [self.view addSubview:carouselView];
    [self.view bringSubviewToFront:self.button];
    // Do any additional setup after loading the view.
}

- (void)viewDidLayoutSubviews
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


-(IBAction)startGame:(id)sender {
    NSLog(@"start game");
    [self dismissViewControllerAnimated:YES completion:^{
        //do nothing
    }];
}

@end
