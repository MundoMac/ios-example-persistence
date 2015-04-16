//
//  ViewController.m
//  Persistence
//
//  Created by Diego Mazzone on 16/4/15.
//  Copyright (c) 2015 Mundo Mac. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *userEmailTextField;

@end

@implementation ViewController

#define USER_EMAIL @"user_email"

- (void)viewDidLoad
{
    [super viewDidLoad];

    if ([[NSUserDefaults standardUserDefaults] objectForKey:USER_EMAIL] != nil) {
        self.userEmailTextField.text = [[NSUserDefaults standardUserDefaults] stringForKey:USER_EMAIL];
    }
}

- (IBAction)save
{
    [[NSUserDefaults standardUserDefaults] setObject:self.userEmailTextField.text forKey:USER_EMAIL];
    
    [[NSUserDefaults standardUserDefaults] synchronize];
}

@end
