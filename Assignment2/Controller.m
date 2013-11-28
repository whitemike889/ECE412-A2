//
//  Controller.m
//  Assignment2
//
//  Created by Michael Hickman on 10/29/13.
//  Copyright (c) 2013 Michael Hickman. All rights reserved.
//

#import "Controller.h"

@implementation MyCustomView


- (IBAction)openModel:(id)sender
{
	NSOpenPanel *openPanel = [NSOpenPanel openPanel];
	
	[openPanel beginSheetModalForWindow:_window completionHandler:^(NSInteger result) {
		if (result == NSOKButton)
		{
			NSURL *selection = openPanel.URLs[0];
			NSString *path = [selection.path stringByResolvingSymlinksInPath];
			[OpenGLView loadModel:path];
		}
	}];
	
}

- (IBAction)resetCam:(id)sender
{
	[OpenGLView resetcam];
}


- (IBAction)changeColor:(id)sender
{
	[OpenGLView updateColor: [red integerValue]
						   : [green integerValue]
						   : [blue integerValue]];
}


- (IBAction) changeNearFar:(id)sender
{
	[OpenGLView updateNearFar: [near floatValue] :[far floatValue]];
}


- (void) setNearFar:(float)n :(float)f
{
	[near setIntegerValue: n];
	[far setIntegerValue: f];
}


- (IBAction)changeMode:(id)sender
{
	[OpenGLView updateMode: [[sender selectedCell] tag]];
}


- (IBAction)changeCull:(id)sender
{
	[OpenGLView updateCulling: [[sender selectedCell] tag]];
}


- (IBAction)debug:(id)sender
{
	[OpenGLView debuglog];
}


- (void) updateLabels: (float)px :(float)py :(float)pz :(float)dx :(float) dy :(float)dz;
{	
	[posx setFloatValue:px];
	[posy setFloatValue:py];
	[posz setFloatValue:pz];
	[dirx setFloatValue:dx*180/M_PI];
	[diry setFloatValue:dy*180/M_PI];
	[dirz setFloatValue:dz*180/M_PI];
}

@end