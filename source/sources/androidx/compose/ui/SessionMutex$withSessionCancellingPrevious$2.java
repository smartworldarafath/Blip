package androidx.compose.ui;

import androidx.compose.ui.SessionMutex;
import defpackage.u2;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.SessionMutex$withSessionCancellingPrevious$2", f = "SessionMutex.kt", l = {61, 63}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SessionMutex$withSessionCancellingPrevious$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Function1 p;
    public final /* synthetic */ AtomicReference q;
    public final /* synthetic */ Function2 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SessionMutex$withSessionCancellingPrevious$2(Function1 function1, AtomicReference atomicReference, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.p = function1;
        this.q = atomicReference;
        this.r = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SessionMutex$withSessionCancellingPrevious$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        SessionMutex$withSessionCancellingPrevious$2 sessionMutex$withSessionCancellingPrevious$2 = new SessionMutex$withSessionCancellingPrevious$2(this.p, this.q, this.r, continuation);
        sessionMutex$withSessionCancellingPrevious$2.o = obj;
        return sessionMutex$withSessionCancellingPrevious$2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x005b, code lost:
    
        if (r9 == r0) goto L24;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        SessionMutex.Session session;
        SessionMutex.Session session2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        AtomicReference atomicReference = this.q;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        session2 = (SessionMutex.Session) this.o;
                        try {
                            ResultKt.b(obj);
                            while (!atomicReference.compareAndSet(session2, null) && atomicReference.get() == session2) {
                            }
                            return obj;
                        } catch (Throwable th) {
                            th = th;
                            while (!atomicReference.compareAndSet(session2, null) && atomicReference.get() == session2) {
                            }
                            throw th;
                        }
                    }
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                session = (SessionMutex.Session) this.o;
                ResultKt.b(obj);
            } else {
                ResultKt.b(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.o;
                session = new SessionMutex.Session(JobKt.d(coroutineScope.getCoroutineContext()), this.p.b(coroutineScope));
                SessionMutex.Session session3 = (SessionMutex.Session) atomicReference.getAndSet(session);
                if (session3 != null) {
                    Job job = session3.a;
                    this.o = session;
                    this.n = 1;
                    job.n(null);
                    Object O = job.O(this);
                    if (O != coroutineSingletons) {
                        O = Unit.a;
                    }
                }
            }
            Function2 function2 = this.r;
            Object obj2 = session.b;
            this.o = session;
            this.n = 2;
            obj = function2.n(obj2, this);
            if (obj != coroutineSingletons) {
                session2 = session;
                while (!atomicReference.compareAndSet(session2, null)) {
                }
                return obj;
            }
            return coroutineSingletons;
        } catch (Throwable th2) {
            th = th2;
            session2 = session;
            while (!atomicReference.compareAndSet(session2, null)) {
            }
            throw th;
        }
    }
}
