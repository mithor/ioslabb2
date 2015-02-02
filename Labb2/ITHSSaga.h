//
//  ITHSSaga.h
//  Labb2
//
//  Created by IT-Högskolan on 2015-01-29.
//  Copyright (c) 2015 IT-Högskolan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ITHSSaga : NSObject

- (NSString*)generateWithRomance:(BOOL)romance
                     WithViolence:(BOOL)violence
                     WithHappiness:(float)happiness;

@end
