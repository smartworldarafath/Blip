package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.nestedscroll.NestedScrollConnection;
import androidx.compose.ui.unit.Velocity;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollableNestedScrollConnection implements NestedScrollConnection {
    public final ScrollingLogic j;
    public boolean k;

    public ScrollableNestedScrollConnection(ScrollingLogic scrollingLogic, boolean z) {
        this.j = scrollingLogic;
        this.k = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0023  */
    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object u(long j, long j2, Continuation continuation) {
        ScrollableNestedScrollConnection$onPostFling$1 scrollableNestedScrollConnection$onPostFling$1;
        int i;
        long j3;
        if (continuation instanceof ScrollableNestedScrollConnection$onPostFling$1) {
            scrollableNestedScrollConnection$onPostFling$1 = (ScrollableNestedScrollConnection$onPostFling$1) continuation;
            int i2 = scrollableNestedScrollConnection$onPostFling$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                scrollableNestedScrollConnection$onPostFling$1.p = i2 - Integer.MIN_VALUE;
                Object obj = scrollableNestedScrollConnection$onPostFling$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = scrollableNestedScrollConnection$onPostFling$1.p;
                if (i == 0) {
                    if (i == 1) {
                        j2 = scrollableNestedScrollConnection$onPostFling$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    j3 = 0;
                    if (this.k) {
                        ScrollingLogic scrollingLogic = this.j;
                        if (!scrollingLogic.i) {
                            scrollableNestedScrollConnection$onPostFling$1.m = j2;
                            scrollableNestedScrollConnection$onPostFling$1.p = 1;
                            obj = scrollingLogic.a(j2, scrollableNestedScrollConnection$onPostFling$1);
                            if (obj == coroutineSingletons) {
                                return coroutineSingletons;
                            }
                        }
                        j3 = Velocity.d(j2, j3);
                    }
                    return new Velocity(j3);
                }
                j3 = ((Velocity) obj).a;
                j3 = Velocity.d(j2, j3);
                return new Velocity(j3);
            }
        }
        scrollableNestedScrollConnection$onPostFling$1 = new ScrollableNestedScrollConnection$onPostFling$1(this, (ContinuationImpl) continuation);
        Object obj2 = scrollableNestedScrollConnection$onPostFling$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = scrollableNestedScrollConnection$onPostFling$1.p;
        if (i == 0) {
        }
        j3 = ((Velocity) obj2).a;
        j3 = Velocity.d(j2, j3);
        return new Velocity(j3);
    }

    @Override // androidx.compose.ui.input.nestedscroll.NestedScrollConnection
    public final long w0(int i, long j, long j2) {
        if (this.k) {
            ScrollingLogic scrollingLogic = this.j;
            if (!scrollingLogic.a.a()) {
                return scrollingLogic.i(scrollingLogic.e(scrollingLogic.a.e(scrollingLogic.e(scrollingLogic.h(j2)))));
            }
            return 0L;
        }
        return 0L;
    }
}
