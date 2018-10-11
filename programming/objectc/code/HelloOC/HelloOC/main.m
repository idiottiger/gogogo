//
//  main.m
//  HelloOC
//
//  Created by fchan on 2018/10/11.
//  Copyright © 2018 fchan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "person.h"

//add private method
@interface Person()
-(void)printInner:(NSString*)p1 param2:(NSString*)p2;
@end

@implementation Person

-(void)print:(NSString *)v1 param2:(NSString *)v2{
    [self printInner:v1 param2:v2];
}

+(void)sayHello{
    NSLog(@"say hello ----");
}

-(void)doLive{
    [super doLive];
    NSLog(@"DO_PERSON_LIVE");
}

- (void)printInner:(NSString*)p1 param2:(NSString *)p2{
    NSLog(@"print v1:%@, v2:%@", p1, p2);
    [self doLive];
}


@end


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
        //Person *p = [[Person alloc] init];
        Person *p = [Person new];
        [p print:@"TOM" param2:@"CAT"];
    }
    return 0;
}
