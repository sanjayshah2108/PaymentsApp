//
//  PaymentGateway.m
//  PaymentsApp
//
//  Created by Sanjay Shah on 2017-10-06.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import "PaymentGateway.h"

@implementation PaymentGateway

-(instancetype) init {
    self = [super init];
    if (self){
        
    }
    
    return self;
}

-(void) processPaymentAmount:(NSInteger) inputInt{
    
    
    if([self.paymentDelegate canProcessPayment]){
            [self.paymentDelegate processPaymentAmount:inputInt];
        
    }
    
    else {
        NSLog(@"Cannot be processed");
    }
    
    
}


@end
