//
//  DetailViewController.m
//  BirdApp
//
//  Created by Bianca Binstock on 2015-04-27.
//  Copyright (c) 2015 Bianca Binstock. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@property (nonatomic, strong) UIImageView *birdImageView;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = self.bird.name;
    
    self.birdImageView = [[UIImageView alloc] init];
    self.birdImageView.frame = self.view.bounds;
    UIImage *birdImage = [UIImage imageNamed:self.bird.image];
    self.birdImageView.image = birdImage;
    self.birdImageView.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:self.birdImageView];
}

@end
