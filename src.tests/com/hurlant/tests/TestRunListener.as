package com.hurlant.tests {

    import flash.desktop.NativeApplication;

    import org.flexunit.runner.Result;
    import org.flexunit.runner.notification.RunListener;

    public class TestRunListener extends RunListener {

        override public function testRunFinished(result:Result):void {
            trace('FlexUnit tests complete: ' + result.runCount + ' run, ' + result.failureCount + ' failed');
            NativeApplication.nativeApplication.exit(result.failureCount == 0 ? 0 : 1);
        }

    }

}
