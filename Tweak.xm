%group Hooks
  %hook IGMediaScreenshotLogger
  -(void) _onTakenScreenshot {
  }
  %end

  %hook IGScreenshotLogger
  -(void) onTakenScreenshot {
  }
  %end

  %hook IGScreenshotObserver
  -(bool) isCurrentlyCapturingScreen {
    return NO;
  }

  -(void) _onTakenScreenshot {
  }
  %end
%end

%ctor {
  dlopen([[[NSBundle mainBundle].bundlePath stringByAppendingPathComponent:@"Frameworks/InstagramAppCoreFramework.framework/InstagramAppCoreFramework"] UTF8String], RTLD_NOW);
  %init(Hooks);
}
