package kotlinx.coroutines.internal;

import defpackage.cf;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.ThreadContextElement;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ThreadContextKt {
    public static final cf b;
    public static final cf c;
    public static final Symbol a = new Symbol("NO_THREAD_ELEMENTS");
    public static final a d = new Object();

    /* JADX WARN: Type inference failed for: r0v3, types: [kotlinx.coroutines.internal.a, java.lang.Object] */
    static {
        byte b2 = 0;
        b = new cf(23, b2);
        c = new cf(24, b2);
    }

    public static final void a(CoroutineContext coroutineContext, Object obj) {
        if (obj != a) {
            if (obj instanceof ThreadState) {
                ThreadState threadState = (ThreadState) obj;
                ThreadContextElement[] threadContextElementArr = threadState.c;
                int length = threadContextElementArr.length - 1;
                if (length < 0) {
                    return;
                }
                while (true) {
                    int i = length - 1;
                    ThreadContextElement threadContextElement = threadContextElementArr[length];
                    threadContextElement.getClass();
                    threadContextElement.K0(threadState.b[length]);
                    if (i >= 0) {
                        length = i;
                    } else {
                        return;
                    }
                }
            } else {
                Object P0 = coroutineContext.P0(null, c);
                P0.getClass();
                ((ThreadContextElement) P0).K0(obj);
            }
        }
    }

    public static final Object b(CoroutineContext coroutineContext) {
        Object P0 = coroutineContext.P0(0, b);
        P0.getClass();
        return P0;
    }

    public static final Object c(CoroutineContext coroutineContext, Object obj) {
        if (obj == null) {
            obj = b(coroutineContext);
        }
        if (obj == 0) {
            return a;
        }
        if (obj instanceof Integer) {
            return coroutineContext.P0(new ThreadState(((Number) obj).intValue(), coroutineContext), d);
        }
        return ((ThreadContextElement) obj).o0();
    }
}
