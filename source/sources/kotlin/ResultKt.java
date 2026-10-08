package kotlin;

import kotlin.Result;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ResultKt {
    public static final Result.Failure a(Throwable th) {
        th.getClass();
        return new Result.Failure(th);
    }

    public static final void b(Object obj) {
        if (!(obj instanceof Result.Failure)) {
        } else {
            throw ((Result.Failure) obj).j;
        }
    }
}
