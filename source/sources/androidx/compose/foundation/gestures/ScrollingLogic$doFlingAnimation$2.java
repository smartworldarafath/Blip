package androidx.compose.foundation.gestures;

import androidx.compose.ui.unit.Velocity;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$LongRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2", f = "Scrollable.kt", l = {799}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class ScrollingLogic$doFlingAnimation$2 extends SuspendLambda implements Function2<NestedScrollScope, Continuation<? super Unit>, Object> {
    public ScrollingLogic n;
    public Ref$LongRef o;
    public long p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ ScrollingLogic s;
    public final /* synthetic */ Ref$LongRef t;
    public final /* synthetic */ long u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ScrollingLogic$doFlingAnimation$2(ScrollingLogic scrollingLogic, Ref$LongRef ref$LongRef, long j, Continuation continuation) {
        super(2, continuation);
        this.s = scrollingLogic;
        this.t = ref$LongRef;
        this.u = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((ScrollingLogic$doFlingAnimation$2) s((NestedScrollScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        ScrollingLogic$doFlingAnimation$2 scrollingLogic$doFlingAnimation$2 = new ScrollingLogic$doFlingAnimation$2(this.s, this.t, this.u, continuation);
        scrollingLogic$doFlingAnimation$2.r = obj;
        return scrollingLogic$doFlingAnimation$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        ScrollingLogic scrollingLogic;
        Ref$LongRef ref$LongRef;
        float c;
        ScrollingLogic scrollingLogic2;
        long j;
        long a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.q;
        if (i != 0) {
            if (i == 1) {
                j = this.p;
                ref$LongRef = this.o;
                scrollingLogic = this.n;
                scrollingLogic2 = (ScrollingLogic) this.r;
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            NestedScrollScope nestedScrollScope = (NestedScrollScope) this.r;
            scrollingLogic = this.s;
            ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1 = new ScrollingLogic$doFlingAnimation$2$reverseScope$1(scrollingLogic, nestedScrollScope);
            FlingBehavior flingBehavior = scrollingLogic.c;
            ref$LongRef = this.t;
            long j2 = ref$LongRef.j;
            Orientation orientation = scrollingLogic.d;
            Orientation orientation2 = Orientation.k;
            long j3 = this.u;
            if (orientation == orientation2) {
                c = Velocity.b(j3);
            } else {
                c = Velocity.c(j3);
            }
            float e = scrollingLogic.e(c);
            this.r = scrollingLogic;
            this.n = scrollingLogic;
            this.o = ref$LongRef;
            this.p = j2;
            this.q = 1;
            obj = flingBehavior.a(scrollingLogic$doFlingAnimation$2$reverseScope$1, e, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
            scrollingLogic2 = scrollingLogic;
            j = j2;
        }
        float e2 = scrollingLogic2.e(((Number) obj).floatValue());
        if (scrollingLogic.d == Orientation.k) {
            a = Velocity.a(j, e2, 0.0f, 2);
        } else {
            a = Velocity.a(j, 0.0f, e2, 1);
        }
        ref$LongRef.j = a;
        return Unit.a;
    }
}
