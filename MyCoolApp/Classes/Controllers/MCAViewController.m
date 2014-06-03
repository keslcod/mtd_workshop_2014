//
//  MCAViewController.m
//  MyCoolApp
//
//  Created by Dirk Fritz on 03.06.14.
//  Copyright (c) 2014 badcompany. All rights reserved.
//

#import "MCAViewController.h"
#import <LBBlurredImage/UIImageView+LBBlurredImage.h>

@interface MCAViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UIButton *button;
- (IBAction)buttonPressed:(id)sender;
@property BOOL toggle;

@end

@implementation MCAViewController

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
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)buttonPressed:(id)sender {
    if (!self.toggle) {
        [self.imageView setImageToBlur:self.imageView.image blurRadius:10 completionBlock:nil];
        [self.button setTitle:@"Unblur Image" forState:UIControlStateNormal];
    }else {
        [self.imageView setImage:[UIImage imageNamed:@"iphone.jpeg"]];
        [self.button setTitle:@"Blur Image" forState:UIControlStateNormal];
    }
    self.toggle = !self.toggle;
}
@end
