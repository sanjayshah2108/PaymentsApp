//
//  ApplePaymentService.m
//  PaymentsApp
//
//  Created by Sanjay Shah on 2017-10-06.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "ApplePaymentService.h"

@implementation ApplePaymentService

-(void) processPaymentAmount:(NSInteger) totalValue{
    
    NSLog(@"Apple Payment made of $ %ld", (long)totalValue);
}

-(BOOL) canProcessPayment{
    
    if (arc4random_uniform(2) == 1){
        return true;
    }
    else if (arc4random_uniform(2) == 0){
        return false;
    }
    else return false;
}




@end
