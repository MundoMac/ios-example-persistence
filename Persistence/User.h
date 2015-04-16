//
//  User.h
//  Persistence
//
//  Created by Diego Mazzone on 16/4/15.
//  Copyright (c) 2015 Mundo Mac. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface User : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * email;

@end
