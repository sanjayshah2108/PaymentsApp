//
//  PaymentGateway.h
//  PaymentsApp
//
//  Created by Sanjay Shah on 2017-10-06.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>

@protocol PaymentDelegate

-(void) processPaymentAmount:(NSInteger) inputInt;
-(BOOL) canProcessPayment;

@end


@interface PaymentGateway : NSObject

-(void) processPaymentAmount:(NSInteger) inputInt;

@property (weak) id<PaymentDelegate> paymentDelegate;



@end
