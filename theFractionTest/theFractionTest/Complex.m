//
//  Complex.m
//  Complex
//
//  Created by Not Sure on 5/16/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "Complex.h"

@implementation Complex

@synthesize real, imaginary;

-(void) print
{
    NSLog(@"\n%g + %gi",real,imaginary);
}

-(void) setReal: (double) a andImaginary: (double) b
{
	real = a;
	imaginary = b;
}

-(Complex *) add: (Complex *) ComplexNum
{
	Complex *result = [[Complex alloc] init];
	
	result.real = ComplexNum.real + real;
	result.imaginary = ComplexNum.imaginary + imaginary;
	return result;
	
}
@end
