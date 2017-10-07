//
//  PaypalPaymentService.m
//  PaymentsApp
//
//  Created by Sanjay Shah on 2017-10-06.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "PaypalPaymentService.h"

@implementation PaypalPaymentService

-(void) processPaymentAmount:(NSInteger) totalValue{
    
         NSLog(@"Paypal Payment made of $ %d", totalValue);
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
