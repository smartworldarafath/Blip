package androidx.compose.ui;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SessionMutex<T> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Session<T> {
        public final Job a;
        public final Object b;

        public Session(Job job, Object obj) {
            this.a = job;
            this.b = obj;
        }
    }

    public static final Object a(AtomicReference atomicReference) {
        Session session = (Session) atomicReference.get();
        if (session != null) {
            return session.b;
        }
        return null;
    }

    public static final Object b(AtomicReference atomicReference, Function1 function1, Function2 function2, ContinuationImpl continuationImpl) {
        return CoroutineScopeKt.c(new SessionMutex$withSessionCancellingPrevious$2(function1, atomicReference, function2, null), continuationImpl);
    }
}
