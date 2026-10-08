package androidx.compose.animation.core;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.platform.InfiniteAnimationPolicy$Key;
import defpackage.r1;
import defpackage.s2;
import defpackage.u2;
import io.sentry.d;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.Flow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.InfiniteTransition$run$1$1", f = "InfiniteTransition.kt", l = {172, 193}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class InfiniteTransition$run$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Ref$FloatRef n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ MutableState q;
    public final /* synthetic */ InfiniteTransition r;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.animation.core.InfiniteTransition$run$1$1$3", f = "InfiniteTransition.kt", l = {}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.animation.core.InfiniteTransition$run$1$1$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass3 extends SuspendLambda implements Function2<Float, Continuation<? super Boolean>, Object> {
        public /* synthetic */ float n;

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass3) s(Float.valueOf(((Number) obj).floatValue()), (Continuation) obj2)).v(Unit.a);
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.Continuation, androidx.compose.animation.core.InfiniteTransition$run$1$1$3, kotlin.coroutines.jvm.internal.SuspendLambda] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            ?? suspendLambda = new SuspendLambda(2, continuation);
            suspendLambda.n = ((Number) obj).floatValue();
            return suspendLambda;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            boolean z;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            if (this.n > 0.0f) {
                z = true;
            } else {
                z = false;
            }
            return Boolean.valueOf(z);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public InfiniteTransition$run$1$1(MutableState mutableState, InfiniteTransition infiniteTransition, Continuation continuation) {
        super(2, continuation);
        this.q = mutableState;
        this.r = infiniteTransition;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ((InfiniteTransition$run$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        return CoroutineSingletons.j;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        InfiniteTransition$run$1$1 infiniteTransition$run$1$1 = new InfiniteTransition$run$1$1(this.q, this.r, continuation);
        infiniteTransition$run$1$1.p = obj;
        return infiniteTransition$run$1$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x008b, code lost:
    
        if (kotlinx.coroutines.flow.FlowKt.m((kotlinx.coroutines.flow.CancellableFlow) r13, r1, r12) == r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x008d, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0065, code lost:
    
        if (androidx.compose.runtime.MonotonicFrameClockKt.a(o()).w(r12, r6) == r0) goto L20;
     */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /* JADX WARN: Type inference failed for: r1v4, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x006d -> B:6:0x003d). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x008b -> B:6:0x003d). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineScope coroutineScope;
        Ref$FloatRef ref$FloatRef;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    Ref$FloatRef ref$FloatRef2 = this.n;
                    CoroutineScope coroutineScope2 = (CoroutineScope) this.p;
                    ResultKt.b(obj);
                    ref$FloatRef = ref$FloatRef2;
                    coroutineScope = coroutineScope2;
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                Ref$FloatRef ref$FloatRef3 = this.n;
                CoroutineScope coroutineScope3 = (CoroutineScope) this.p;
                ResultKt.b(obj);
                ref$FloatRef = ref$FloatRef3;
                coroutineScope = coroutineScope3;
                if (ref$FloatRef.j == 0.0f) {
                    Flow l = SnapshotStateKt.l(new r1(21, coroutineScope));
                    ?? suspendLambda = new SuspendLambda(2, null);
                    this.p = coroutineScope;
                    this.n = ref$FloatRef;
                    this.o = 2;
                }
            }
        } else {
            ResultKt.b(obj);
            CoroutineScope coroutineScope4 = (CoroutineScope) this.p;
            ?? obj2 = new Object();
            obj2.j = 1.0f;
            coroutineScope = coroutineScope4;
            ref$FloatRef = obj2;
        }
        s2 s2Var = new s2(this.q, this.r, ref$FloatRef, coroutineScope, 4);
        this.p = coroutineScope;
        this.n = ref$FloatRef;
        this.o = 1;
        if (o().v(InfiniteAnimationPolicy$Key.j) != null) {
            d.i();
            return null;
        }
    }
}
