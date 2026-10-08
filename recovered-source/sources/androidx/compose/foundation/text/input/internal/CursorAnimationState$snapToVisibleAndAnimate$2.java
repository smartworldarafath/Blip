package androidx.compose.foundation.text.input.internal;

import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import defpackage.u2;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2", f = "CursorAnimationState.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class CursorAnimationState$snapToVisibleAndAnimate$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Boolean>, Object> {
    public /* synthetic */ Object n;
    public final /* synthetic */ CursorAnimationState o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2$1", f = "CursorAnimationState.kt", l = {72, 77, 79, 81}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.foundation.text.input.internal.CursorAnimationState$snapToVisibleAndAnimate$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public final /* synthetic */ Job o;
        public final /* synthetic */ CursorAnimationState p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Job job, CursorAnimationState cursorAnimationState, Continuation continuation) {
            super(2, continuation);
            this.o = job;
            this.p = cursorAnimationState;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
            return CoroutineSingletons.j;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.o, this.p, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0076, code lost:
        
            if (kotlinx.coroutines.DelayKt.b(500, r13) == r2) goto L35;
         */
        /* JADX WARN: Code restructure failed: missing block: B:32:0x004e, code lost:
        
            if (r14 == r2) goto L35;
         */
        /* JADX WARN: Removed duplicated region for block: B:12:0x0069  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0076 -> B:9:0x0079). Please report as a decompilation issue!!! */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object v(Object obj) {
            CursorAnimationState cursorAnimationState = this.p;
            MutableFloatState mutableFloatState = cursorAnimationState.c;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            try {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i == 4) {
                                    ResultKt.b(obj);
                                    ((SnapshotMutableFloatStateImpl) mutableFloatState).k(1.0f);
                                    this.n = 3;
                                    if (DelayKt.b(500L, this) == coroutineSingletons) {
                                        return coroutineSingletons;
                                    }
                                    ((SnapshotMutableFloatStateImpl) mutableFloatState).k(0.0f);
                                    this.n = 4;
                                } else {
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                            } else {
                                ResultKt.b(obj);
                                ((SnapshotMutableFloatStateImpl) mutableFloatState).k(0.0f);
                                this.n = 4;
                            }
                        } else {
                            ResultKt.b(obj);
                            throw new RuntimeException();
                        }
                    } else {
                        ResultKt.b(obj);
                    }
                } else {
                    ResultKt.b(obj);
                    Job job = this.o;
                    if (job != null) {
                        this.n = 1;
                        job.n(null);
                        Object O = job.O(this);
                        if (O != coroutineSingletons) {
                            O = Unit.a;
                        }
                    }
                }
                ((SnapshotMutableFloatStateImpl) mutableFloatState).k(1.0f);
                if (!cursorAnimationState.a) {
                    this.n = 2;
                    DelayKt.a(this);
                    return coroutineSingletons;
                }
                this.n = 3;
                if (DelayKt.b(500L, this) == coroutineSingletons) {
                }
                ((SnapshotMutableFloatStateImpl) mutableFloatState).k(0.0f);
                this.n = 4;
            } catch (Throwable th) {
                ((SnapshotMutableFloatStateImpl) mutableFloatState).k(0.0f);
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CursorAnimationState$snapToVisibleAndAnimate$2(CursorAnimationState cursorAnimationState, Continuation continuation) {
        super(2, continuation);
        this.o = cursorAnimationState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((CursorAnimationState$snapToVisibleAndAnimate$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        CursorAnimationState$snapToVisibleAndAnimate$2 cursorAnimationState$snapToVisibleAndAnimate$2 = new CursorAnimationState$snapToVisibleAndAnimate$2(this.o, continuation);
        cursorAnimationState$snapToVisibleAndAnimate$2.n = obj;
        return cursorAnimationState$snapToVisibleAndAnimate$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.n;
        CursorAnimationState cursorAnimationState = this.o;
        AtomicReference atomicReference = cursorAnimationState.b;
        Job c = BuildersKt.c(coroutineScope, null, null, new AnonymousClass1((Job) atomicReference.getAndSet(null), cursorAnimationState, null), 3);
        while (true) {
            if (atomicReference.compareAndSet(null, c)) {
                z = true;
                break;
            }
            if (atomicReference.get() != null) {
                z = false;
                break;
            }
        }
        return Boolean.valueOf(z);
    }
}
