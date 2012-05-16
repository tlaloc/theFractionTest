//
// Fraction.m
// FractionTest 
//
// Created by Not Sure on 5/15/12.
// Copyright (c) ClassroomM, Inc. All rights reserved. 
//

#import "Fraction.h"

@implementation Fraction 

@synthesize numerator, denominator;

-(void) print: (BOOL) simplify; 
{
	int wholeNum = 0;
	
	if (denominator == 0)
		NSLog (@"\nNot a number:  %i/%i", numerator, denominator);
	else {
		if (denominator == 1) 
			NSLog (@"%i", numerator);
		else if (numerator == 0)
			NSLog (@"0");
		else if (numerator == denominator)
			NSLog (@"%i", numerator);
		else if (simplify) {
			Fraction *pFraction = [[Fraction alloc] init];
			[pFraction setTo: numerator over: denominator];
			[pFraction reduce];
			
			// check for mixed fractions
			if (ABS(pFraction.numerator) > pFraction.denominator) {
				wholeNum = pFraction.numerator / pFraction.denominator;
				//NSLog (@"\nwholeNum: %i", wholeNum);
				pFraction.numerator = ABS(pFraction.numerator) % pFraction.denominator;
			}
			// print simplified (and mixed) result 
			if (wholeNum)
				NSLog (@"\n%i %i/%i", wholeNum, pFraction.numerator, pFraction.denominator);
			else
				NSLog (@"%i/%i", pFraction.numerator, pFraction.denominator);
		}
		else NSLog (@"%i/%i", numerator, denominator); 
	}
}

-(double)convertToNum 
{
	if (denominator != 0)
		return (double) numerator / denominator;
	else
		return NAN;
}

-(void) setTo: (int) n over: (int) d;
{
	numerator = n;
	denominator = d;
}

// Reduce the fraction to its lowest common denominator
-(void) reduce 
{
	int u, v;
	int temp;
	BOOL isNeg = NO;
	
	// check for negative(s)
	if (numerator < 0) {
		isNeg = YES;
		numerator *= -1;
		//	NSLog (@"\nnum: %i  isNeg: %i", numerator, isNeg);
	}
	if (denominator < 0) {
		denominator *= -1;
		if (isNeg) isNeg = NO;
		else if (! isNeg) isNeg = YES;
		//	NSLog (@"\nden: %i  isNeg: %i", denominator, isNeg);
	}
	
	u = numerator; 
	v = denominator; 
	
	//NSLog (@"\nnum: %i  den:  %i   isNeg: %i", numerator, denominator, isNeg);
	//NSLog (@"\nu: %i  v:  %i", u,v);
	
	// algorithm to find greatest common denominator
	while (v != 0) { 
		temp = u % v; u = v;
		v = temp;
	}
	//NSLog (@"\nwhile:  num: %i  den:  %i   isNeg: %i", numerator, denominator, isNeg);
	//NSLog (@"\nu: %i  v:  %i", u,v);
	if (isNeg)
		numerator *= -1;
	numerator /= u;
	denominator /= u; 
	
}

// Add a fraction to the receiver
-(Fraction *) add: (Fraction *) f
{
	// To add two fractions:
	// a/b + c/d = ((a*d) + (b*c)) / (b * d)
	
	// result will store the result of the addition 
	Fraction *result = [[Fraction alloc] init];
	
	result.numerator = numerator * f.denominator + denominator * f.numerator;
	result.denominator = denominator * f.denominator;
	
	//[result reduce];
	return result;
}

// Subtract argument from receiver
-(Fraction *) subtract: (Fraction *) f
{
	// To subtract a fraction:
	// a/b - c/d = ((a*d) - (b*c)) / (b * d)
	Fraction *result = [[Fraction alloc] init];
	
	result.numerator = numerator * f.denominator - denominator * f.numerator;
	result.denominator = denominator * f.denominator;
	
	//[result reduce];
	return result;
}

// Multiply receiver by argument
-(Fraction *) multiply: (Fraction *) f
{
	// a/b * c/d = (a * c) / (b * d)
	Fraction *result = [[Fraction alloc] init];
	
	result.numerator = numerator * f.numerator;
	result.denominator = denominator * f.denominator;
	
	//[result reduce];
	return result;	
}

// Divide receiver by argument
-(Fraction *) divide: (Fraction *) f {
	// a/b / c/d = a/b * d/c = (a * d) / (b * c)
	Fraction *result = [[Fraction alloc] init];
	
	result.numerator = numerator * f.denominator;
	result.denominator = denominator * f.numerator;
	
	//[result reduce];
	return result;	
}
@end


















