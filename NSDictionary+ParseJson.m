//
//  NSDictionary+DictCategory.m
//  categoryExample
//
//  Created by CPU11606 on 8/6/19.
//  Copyright © 2019 CPU11606. All rights reserved.
//

#import "NSDictionary+ParseJson.h"

@implementation NSDictionary (ParseJson)
- (NSString *)getNSString:(NSString *) strKey{
    NSString * strResults = [self objectForKey:strKey];
    if ([strResults isKindOfClass:NSString.class]) {
        
        return strResults;
    }
    else return NSString.new ;
}
- (NSArray *)getNSArray:(NSString *) arrKey{
    NSArray *arrResults = [self objectForKey:arrKey];
    if ([arrResults isKindOfClass:NSArray.class]) {
        return arrResults;
    }
    else return [[NSArray alloc] init];
}
- (NSNumber *)getNSNumber:(NSString *) numberKey{
    NSNumber *numberResults = [self objectForKey:numberKey];
    if ([numberResults isKindOfClass:NSNumber.class]) {
        return numberResults;
    }
    else return NSNumber.new;
}
- (NSURL *)getNSURLWithString:(NSString *) URL{
    NSURL *urlResults = [self objectForKey:URL];
    if ([urlResults isKindOfClass:NSNumber.class]) {
        return urlResults;
    }
    else return NSURL.new;
}
- (NSString *)getTitle{
    return [self getNSString:@"Tittle"];
}
- (NSURL *)getURL{
    return [NSURL URLWithString:[self getNSString:@"url"]];
}
@end
