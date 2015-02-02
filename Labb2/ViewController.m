//
//  ViewController.m
//  Labb2
//
//  Created by IT-Högskolan on 2015-01-26.
//  Copyright (c) 2015 IT-Högskolan. All rights reserved.
//

#import "ViewController.h"
#import "ITHSSaga.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextView *sagaText;
@property (weak, nonatomic) IBOutlet UISwitch *romanceOption;
@property (weak, nonatomic) IBOutlet UISwitch *violenceOption;
@property (weak, nonatomic) IBOutlet UISlider *happinessOption;
@property (nonatomic) ITHSSaga *saga;


@end

@implementation ViewController

- (IBAction)pushedButton:(id)sender {
    self.sagaText.text = [self.saga generateWithRomance:self.romanceOption.isOn WithViolence:self.violenceOption.isOn WithHappiness:self.happinessOption.value];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.saga = [[ITHSSaga alloc] init];
}

@end
