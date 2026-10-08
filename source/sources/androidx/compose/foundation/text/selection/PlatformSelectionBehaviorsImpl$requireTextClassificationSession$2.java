package androidx.compose.foundation.text.selection;

import android.view.textclassifier.TextClassifier;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.time.Duration;
import kotlin.time.DurationKt;
import kotlin.time.DurationUnit;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2", f = "PlatformSelectionBehaviors.android.kt", l = {437, 313, 324}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public Mutex n;
    public PlatformSelectionBehaviorsImpl o;
    public int p;
    public final /* synthetic */ PlatformSelectionBehaviorsImpl q;
    public final /* synthetic */ Function2 r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$1", f = "PlatformSelectionBehaviors.android.kt", l = {325}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.text.selection.PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
        public int n;
        public final /* synthetic */ TextClassifier o;
        public final /* synthetic */ Function2 p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TextClassifier textClassifier, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.o = textClassifier;
            this.p = function2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, this.p, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    return obj;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            TextClassifier textClassifier = this.o;
            if (textClassifier == null) {
                return null;
            }
            this.n = 1;
            Object n = this.p.n(textClassifier, this);
            if (n == coroutineSingletons) {
                return coroutineSingletons;
            }
            return n;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.q = platformSelectionBehaviorsImpl;
        this.r = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2(this.q, this.r, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x003d, code lost:
    
        if (r10.a(r9) == r0) goto L35;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0099 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x009a A[RETURN] */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v12, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [kotlinx.coroutines.sync.Mutex] */
    /* JADX WARN: Type inference failed for: r1v7 */
    /* JADX WARN: Type inference failed for: r4v9, types: [kotlinx.coroutines.sync.Mutex] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        PlatformSelectionBehaviorsImpl platformSelectionBehaviorsImpl;
        MutexImpl mutexImpl;
        ?? r1;
        TextClassifier textClassifier;
        Object c;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i == 3) {
                            ResultKt.b(obj);
                            return obj;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r1 = this.n;
                    try {
                        ResultKt.b(obj);
                        r1 = r1;
                        textClassifier = (TextClassifier) obj;
                        mutexImpl = r1;
                        mutexImpl.h(null);
                        Duration.Companion companion = Duration.k;
                        long e = DurationKt.e(200L, DurationUnit.l);
                        AnonymousClass1 anonymousClass1 = new AnonymousClass1(textClassifier, this.r, null);
                        this.n = null;
                        this.o = null;
                        this.p = 3;
                        c = TimeoutKt.c(DelayKt.d(e), anonymousClass1, this);
                        if (c == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        return c;
                    } catch (Throwable th) {
                        th = th;
                        r1.h(null);
                        throw th;
                    }
                }
                platformSelectionBehaviorsImpl = this.o;
                ?? r4 = this.n;
                ResultKt.b(obj);
                mutexImpl = r4;
            } else {
                ResultKt.b(obj);
                platformSelectionBehaviorsImpl = this.q;
                mutexImpl = platformSelectionBehaviorsImpl.e;
                this.n = mutexImpl;
                this.o = platformSelectionBehaviorsImpl;
                this.p = 1;
            }
            textClassifier = platformSelectionBehaviorsImpl.f;
            if (textClassifier != null) {
                if (textClassifier.isDestroyed()) {
                }
                mutexImpl.h(null);
                Duration.Companion companion2 = Duration.k;
                long e2 = DurationKt.e(200L, DurationUnit.l);
                AnonymousClass1 anonymousClass12 = new AnonymousClass1(textClassifier, this.r, null);
                this.n = null;
                this.o = null;
                this.p = 3;
                c = TimeoutKt.c(DelayKt.d(e2), anonymousClass12, this);
                if (c == coroutineSingletons) {
                }
            }
            Duration.Companion companion3 = Duration.k;
            long e3 = DurationKt.e(300L, DurationUnit.l);
            PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1 = new PlatformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1(platformSelectionBehaviorsImpl, null);
            this.n = mutexImpl;
            this.o = null;
            this.p = 2;
            Object c2 = TimeoutKt.c(DelayKt.d(e3), platformSelectionBehaviorsImpl$requireTextClassificationSession$2$textClassificationSession$1$1, this);
            if (c2 != coroutineSingletons) {
                r1 = mutexImpl;
                obj = c2;
                textClassifier = (TextClassifier) obj;
                mutexImpl = r1;
                mutexImpl.h(null);
                Duration.Companion companion22 = Duration.k;
                long e22 = DurationKt.e(200L, DurationUnit.l);
                AnonymousClass1 anonymousClass122 = new AnonymousClass1(textClassifier, this.r, null);
                this.n = null;
                this.o = null;
                this.p = 3;
                c = TimeoutKt.c(DelayKt.d(e22), anonymousClass122, this);
                if (c == coroutineSingletons) {
                }
            }
            return coroutineSingletons;
        } catch (Throwable th2) {
            th = th2;
            r1 = mutexImpl;
            r1.h(null);
            throw th;
        }
    }
}
