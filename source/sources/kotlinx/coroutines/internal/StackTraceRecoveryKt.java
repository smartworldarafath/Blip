package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StackTraceRecoveryKt {
    public static final /* synthetic */ int a = 0;

    static {
        Object failure;
        Object failure2;
        StackTraceElement stackTraceElement = new Exception().getStackTrace()[0];
        new StackTraceElement("_COROUTINE._BOUNDARY", "_", stackTraceElement.getFileName(), stackTraceElement.getLineNumber());
        try {
            failure = BaseContinuationImpl.class.getCanonicalName();
        } catch (Throwable th) {
            failure = new Result.Failure(th);
        }
        if (Result.a(failure) != null) {
            failure = "kotlin.coroutines.jvm.internal.BaseContinuationImpl";
        }
        try {
            failure2 = StackTraceRecoveryKt.class.getCanonicalName();
        } catch (Throwable th2) {
            failure2 = new Result.Failure(th2);
        }
        if (Result.a(failure2) != null) {
            failure2 = "kotlinx.coroutines.internal.StackTraceRecoveryKt";
        }
    }
}
