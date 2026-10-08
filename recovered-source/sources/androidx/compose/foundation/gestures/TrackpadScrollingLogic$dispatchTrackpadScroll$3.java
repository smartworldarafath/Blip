package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$dispatchTrackpadScroll$3", f = "TrackpadScrollingLogic.kt", l = {171}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class TrackpadScrollingLogic$dispatchTrackpadScroll$3 extends SuspendLambda implements Function2<NestedScrollScope, Continuation<? super Unit>, Object> {
    public Ref$ObjectRef n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ TrackpadScrollingLogic q;
    public final /* synthetic */ ScrollingLogic r;
    public final /* synthetic */ Ref$ObjectRef s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackpadScrollingLogic$dispatchTrackpadScroll$3(TrackpadScrollingLogic trackpadScrollingLogic, ScrollingLogic scrollingLogic, Ref$ObjectRef ref$ObjectRef, Continuation continuation) {
        super(2, continuation);
        this.q = trackpadScrollingLogic;
        this.r = scrollingLogic;
        this.s = ref$ObjectRef;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TrackpadScrollingLogic$dispatchTrackpadScroll$3) s((NestedScrollScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TrackpadScrollingLogic$dispatchTrackpadScroll$3 trackpadScrollingLogic$dispatchTrackpadScroll$3 = new TrackpadScrollingLogic$dispatchTrackpadScroll$3(this.q, this.r, this.s, continuation);
        trackpadScrollingLogic$dispatchTrackpadScroll$3.p = obj;
        return trackpadScrollingLogic$dispatchTrackpadScroll$3;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00f8  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00a4  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0070 -> B:5:0x0072). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        NestedScrollScope nestedScrollScope;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        Continuation continuation = null;
        ScrollingLogic scrollingLogic = this.r;
        Ref$ObjectRef ref$ObjectRef = this.s;
        TrackpadScrollingLogic trackpadScrollingLogic = this.q;
        if (i != 0) {
            if (i == 1) {
                Ref$ObjectRef ref$ObjectRef2 = this.n;
                NestedScrollScope nestedScrollScope2 = (NestedScrollScope) this.p;
                ResultKt.b(obj);
                NestedScrollScope nestedScrollScope3 = nestedScrollScope2;
                Ref$ObjectRef ref$ObjectRef3 = ref$ObjectRef2;
                Object c = obj;
                ref$ObjectRef3.j = c;
                TrackpadScrollingLogic.TrackpadScrollDelta trackpadScrollDelta = (TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j;
                DifferentialVelocityTracker differentialVelocityTracker = trackpadScrollingLogic.e;
                long j = trackpadScrollDelta.b;
                long j2 = trackpadScrollDelta.a;
                differentialVelocityTracker.a.a(j, Float.intBitsToFloat((int) (j2 >> 32)));
                differentialVelocityTracker.b.a(j, Float.intBitsToFloat((int) (j2 & 4294967295L)));
                TrackpadScrollingLogic.TrackpadScrollDelta e = TrackpadScrollingLogic.e(trackpadScrollingLogic.f);
                if (e != null) {
                    DifferentialVelocityTracker differentialVelocityTracker2 = trackpadScrollingLogic.e;
                    long j3 = e.b;
                    long j4 = e.a;
                    differentialVelocityTracker2.a.a(j3, Float.intBitsToFloat((int) (j4 >> 32)));
                    differentialVelocityTracker2.b.a(j3, Float.intBitsToFloat((int) (j4 & 4294967295L)));
                    ref$ObjectRef.j = ((TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j).a(e);
                }
                float j5 = scrollingLogic.j(scrollingLogic.f(((TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j).a));
                ScrollingLogic scrollingLogic2 = trackpadScrollingLogic.a;
                scrollingLogic2.h(scrollingLogic2.f(((ScrollingLogic$nestedScrollScope$1) nestedScrollScope3).a(1, scrollingLogic2.i(scrollingLogic2.e(j5)))));
                nestedScrollScope = nestedScrollScope3;
                continuation = null;
                if (!((TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j).c) {
                    BufferedChannel bufferedChannel = trackpadScrollingLogic.f;
                    this.p = nestedScrollScope;
                    this.n = ref$ObjectRef;
                    this.o = 1;
                    c = CoroutineScopeKt.c(new NonTouchScrollingLogicKt$busyReceive$2(bufferedChannel, continuation), this);
                    if (c == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    nestedScrollScope3 = nestedScrollScope;
                    ref$ObjectRef3 = ref$ObjectRef;
                    ref$ObjectRef3.j = c;
                    TrackpadScrollingLogic.TrackpadScrollDelta trackpadScrollDelta2 = (TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j;
                    DifferentialVelocityTracker differentialVelocityTracker3 = trackpadScrollingLogic.e;
                    long j6 = trackpadScrollDelta2.b;
                    long j22 = trackpadScrollDelta2.a;
                    differentialVelocityTracker3.a.a(j6, Float.intBitsToFloat((int) (j22 >> 32)));
                    differentialVelocityTracker3.b.a(j6, Float.intBitsToFloat((int) (j22 & 4294967295L)));
                    TrackpadScrollingLogic.TrackpadScrollDelta e2 = TrackpadScrollingLogic.e(trackpadScrollingLogic.f);
                    if (e2 != null) {
                    }
                    float j52 = scrollingLogic.j(scrollingLogic.f(((TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j).a));
                    ScrollingLogic scrollingLogic22 = trackpadScrollingLogic.a;
                    scrollingLogic22.h(scrollingLogic22.f(((ScrollingLogic$nestedScrollScope$1) nestedScrollScope3).a(1, scrollingLogic22.i(scrollingLogic22.e(j52)))));
                    nestedScrollScope = nestedScrollScope3;
                    continuation = null;
                    if (!((TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j).c) {
                        return Unit.a;
                    }
                }
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            NestedScrollScope nestedScrollScope4 = (NestedScrollScope) this.p;
            float j7 = scrollingLogic.j(scrollingLogic.f(((TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j).a));
            ScrollingLogic scrollingLogic3 = trackpadScrollingLogic.a;
            scrollingLogic3.h(scrollingLogic3.f(((ScrollingLogic$nestedScrollScope$1) nestedScrollScope4).a(1, scrollingLogic3.i(scrollingLogic3.e(j7)))));
            nestedScrollScope = nestedScrollScope4;
            if (!((TrackpadScrollingLogic.TrackpadScrollDelta) ref$ObjectRef.j).c) {
            }
        }
    }
}
