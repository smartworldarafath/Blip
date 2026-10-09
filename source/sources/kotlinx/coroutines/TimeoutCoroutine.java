package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.internal.ScopeCoroutine;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TimeoutCoroutine<U, T extends U> extends ScopeCoroutine<T> implements Runnable {
    public final long n;

    public TimeoutCoroutine(long j, ContinuationImpl continuationImpl) {
        super(continuationImpl, continuationImpl.o());
        this.n = j;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final String V() {
        return super.V() + "(timeMillis=" + this.n + ')';
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        CoroutineContext coroutineContext = this.l;
        DelayKt.c(coroutineContext);
        CoroutineName coroutineName = (CoroutineName) coroutineContext.v(CoroutineName.l);
        if (coroutineName != null) {
            str = coroutineName.k;
        } else {
            str = null;
        }
        String str2 = "Timed out waiting for " + this.n + " ms";
        if (str != null) {
            StringBuilder sb = new StringBuilder("Coroutine \"");
            sb.append(str);
            sb.append("\" ");
            if (str2.length() > 0) {
                str2 = Character.toLowerCase(str2.charAt(0)) + str2.substring(1);
            }
            sb.append(str2);
            str2 = sb.toString();
        }
        x(new TimeoutCancellationException(str2, this));
    }
}
