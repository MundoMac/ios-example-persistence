//
//  CoreDataVC.m
//  Persistence
//
//  Created by Diego Mazzone on 16/4/15.
//  Copyright (c) 2015 Mundo Mac. All rights reserved.
//

#import "CoreDataVC.h"
#import "AppDelegate.h"
#import "User.h"

@interface CoreDataVC ()

@property (weak, nonatomic) IBOutlet UITextField *userEmailTextField;

@end

@implementation CoreDataVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    
    NSFetchRequest *request = [NSFetchRequest fetchRequestWithEntityName:@"User"];
    
    NSError *error = nil;
    NSArray *matches = [appDelegate.managedObjectContext executeFetchRequest:request error:&error];
    
    if (matches) {
    
        User *user = [matches lastObject];
    
        self.userEmailTextField.text = user.email;
    }
}

- (IBAction)save
{
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    
    User *user = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:appDelegate.managedObjectContext];

    user.email = self.userEmailTextField.text;
}

@end
