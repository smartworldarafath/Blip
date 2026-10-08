package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.ScrollingLogic$doFlingAnimation$2$reverseScope$1;
import androidx.compose.foundation.gestures.TargetedFlingBehavior;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehavior;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function1;
import kotlin.math.MathKt;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PagerWrapperFlingBehavior implements FlingBehavior {
    public final TargetedFlingBehavior a;
    public final PagerState b;

    public PagerWrapperFlingBehavior(TargetedFlingBehavior targetedFlingBehavior, PagerState pagerState) {
        this.a = targetedFlingBehavior;
        this.b = pagerState;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    @Override // androidx.compose.foundation.gestures.FlingBehavior
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(final ScrollingLogic$doFlingAnimation$2$reverseScope$1 scrollingLogic$doFlingAnimation$2$reverseScope$1, float f, Continuation continuation) {
        PagerWrapperFlingBehavior$performFling$1 pagerWrapperFlingBehavior$performFling$1;
        int i;
        PagerState pagerState;
        PagerScrollPosition pagerScrollPosition;
        PagerScrollPosition pagerScrollPosition2;
        if (continuation instanceof PagerWrapperFlingBehavior$performFling$1) {
            pagerWrapperFlingBehavior$performFling$1 = (PagerWrapperFlingBehavior$performFling$1) continuation;
            int i2 = pagerWrapperFlingBehavior$performFling$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                pagerWrapperFlingBehavior$performFling$1.o = i2 - Integer.MIN_VALUE;
                Object obj = pagerWrapperFlingBehavior$performFling$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = pagerWrapperFlingBehavior$performFling$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    Function1 function1 = new Function1(scrollingLogic$doFlingAnimation$2$reverseScope$1) { // from class: androidx.compose.foundation.pager.g
                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj2) {
                            float f2;
                            float floatValue = ((Float) obj2).floatValue();
                            PagerState pagerState2 = PagerWrapperFlingBehavior.this.b;
                            if (pagerState2.n() != 0) {
                                f2 = floatValue / pagerState2.n();
                            } else {
                                f2 = 0.0f;
                            }
                            ((SnapshotMutableIntStateImpl) pagerState2.q).k(pagerState2.j(pagerState2.d.a() + MathKt.b(f2)));
                            return Unit.a;
                        }
                    };
                    pagerWrapperFlingBehavior$performFling$1.o = 1;
                    obj = ((SnapFlingBehavior) this.a).d(scrollingLogic$doFlingAnimation$2$reverseScope$1, f, function1, pagerWrapperFlingBehavior$performFling$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                float floatValue = ((Number) obj).floatValue();
                pagerState = this.b;
                pagerScrollPosition = pagerState.d;
                pagerScrollPosition2 = pagerState.d;
                if (pagerScrollPosition.b() != 0.0f && Math.abs(pagerScrollPosition2.b()) < 0.001d) {
                    int a = pagerScrollPosition2.a();
                    if (pagerState.k.a()) {
                        BuildersKt.c(((PagerMeasureResult) ((SnapshotMutableStateImpl) pagerState.m).getValue()).s, null, null, new PagerState$requestScrollToPage$1(pagerState, null), 3);
                    }
                    pagerState.r(a, 0.0f, false);
                } else {
                    new Float(pagerScrollPosition2.b());
                }
                return new Float(floatValue);
            }
        }
        pagerWrapperFlingBehavior$performFling$1 = new PagerWrapperFlingBehavior$performFling$1(this, (ContinuationImpl) continuation);
        Object obj2 = pagerWrapperFlingBehavior$performFling$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = pagerWrapperFlingBehavior$performFling$1.o;
        if (i == 0) {
        }
        float floatValue2 = ((Number) obj2).floatValue();
        pagerState = this.b;
        pagerScrollPosition = pagerState.d;
        pagerScrollPosition2 = pagerState.d;
        if (pagerScrollPosition.b() != 0.0f) {
            int a2 = pagerScrollPosition2.a();
            if (pagerState.k.a()) {
            }
            pagerState.r(a2, 0.0f, false);
            return new Float(floatValue2);
        }
        new Float(pagerScrollPosition2.b());
        return new Float(floatValue2);
    }
}
