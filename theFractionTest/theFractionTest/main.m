//
//  main.m
//  FractionTest
//
//  Created by Not Sure on 5/12/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

/*
 #import "Fraction.h"
 int main (int argc, char * argv[]) {
 @autoreleasepool {
 Fraction *myFraction = [[Fraction alloc] init];
 
 // set fraction to 1/3
 
 [myFraction setNumerator: 1]; [myFraction setDenominator: 3];
 
 // display the fraction
 
 NSLog (@"The value of myFraction is:");
 [myFraction print]; 
 }
 return 0; 
 }
 
 
 #import "Fraction.h"
 
 int main (int argc, char * argv[]) {
 
 @autoreleasepool {
 Fraction *aFraction = [[Fraction alloc] init];
 
 [aFraction setTo: 100 over: 200]; 
 [aFraction print];
 
 [aFraction setTo: 1 over: 3];
 [aFraction print]; 
 }
 return 0; 
 }
 */

#import "Fraction.h"

int main (int argc, char * argv[]) {
	
	@autoreleasepool {
		
		Fraction *aFraction = [[Fraction alloc] init]; 
		Fraction *bFraction = [[Fraction alloc] init];
		
		Fraction *cFraction;
		
		// Set two fractions to 1/4 and 1/2 and add them together
		
		[aFraction setTo: -5 over: 2]; 
		[bFraction setTo: 2 over: 7];
		
		// Print the results
		
		[aFraction print: NO]; 
		NSLog (@"+"); 
		[bFraction print: NO]; 
		NSLog (@"=");
		
		cFraction = [aFraction add: bFraction];
		[cFraction print: NO]; 
		
		cFraction = [aFraction subtract: bFraction];
		[cFraction print: NO];
		
		cFraction = [aFraction multiply: bFraction];
		[cFraction print: NO];
		
		cFraction = [aFraction divide: bFraction];
		[cFraction print: NO];
		
		[aFraction print: YES]; 
		NSLog (@"  reduced!"); 
		[bFraction print: YES]; 
		NSLog (@" reduced!");
		
	}
	return 0; 
}