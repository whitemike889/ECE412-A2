//
//  Shader.h
//  Assignment2
//
//  Created by Michael Hickman on 11/4/13.
//  Copyright (c) 2013 Michael Hickman. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <OpenGL/gl.h>
#import <OpenGL/glu.h>

@interface Shader : NSObject
{
	GLhandleARB obj;
}

- (id) initWithShaderName:(NSString *)shaderName;
- (GLhandleARB) compileShader:(GLenum)type :(const GLcharARB **)shader;
- (void) linkProgram;
- (GLhandleARB) getProgram;

@end
