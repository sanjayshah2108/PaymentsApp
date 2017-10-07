//
//  main.m
//  PaymentsApp
//
//  Created by Sanjay Shah on 2017-10-06.
//  Copyright © 2017 Sanjay Shah. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "PaymentGateway.h"
#import "PaypalPaymentService.h"
#import "StripePaymentService.h"
#import "AmazonPaymentService.h"
#import "ApplePaymentService.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        char input[255];
        float totalValue = arc4random_uniform(900) +100;
        NSLog(@"Thank you for shopping at Acme.com Your total today is $%.02f Please select your payment method: 1: Paypal, 2: Stripe, 3: Amazon$", totalValue);
        
        fgets(input, 255, stdin);
        NSInteger inputInt = [[NSString stringWithFormat:@"%s", input] integerValue];
        
     
        
        PaymentGateway *PG = [[PaymentGateway alloc] init];
        
        PaypalPaymentService *paypalPS = [[PaypalPaymentService alloc] init];
        StripePaymentService *stripePS = [[StripePaymentService alloc] init];
        AmazonPaymentService *amazonPS = [[AmazonPaymentService alloc] init];
        ApplePaymentService *applePS = [[ApplePaymentService alloc] init];
       
        
        switch (inputInt) {
            case 1:{
                //PaypalPaymentService *paypalPS = [[PaypalPaymentService alloc] init];
                PG.paymentDelegate = paypalPS;
                 [PG processPaymentAmount:totalValue];
                
              //  [paypalPS processPaymentAmount:&inputInt];
                
                break;
            }
                
            case 2:{
                
              // StripePaymentService *stripePS = [[StripePaymentService alloc] init];
                PG.paymentDelegate = stripePS;
                 [PG processPaymentAmount:totalValue];
               // [stripePS processPaymentAmount:&inputInt];
                
                break;
            }
                
            case 3:{
               // AmazonPaymentService *amazonPS = [[AmazonPaymentService alloc] init];
                PG.paymentDelegate = amazonPS;
                 [PG processPaymentAmount:totalValue];
               // [amazonPS processPaymentAmount:&inputInt];
                break;
            }
                
            case 4:{
                PG.paymentDelegate = applePS;
                [PG processPaymentAmount:inputInt];
                
                break;
            }
                
                
            default:
                break;
                
                
        }
        
       
        
        
        
       
        
        
        
        
    }
    return 0;
}
