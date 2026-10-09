package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.SupervisorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NonTouchScrollingLogic {
    public final ScrollingLogic a;
    public final Function2 b;
    public Density c;
    public boolean d;
    public final DifferentialVelocityTracker e = new DifferentialVelocityTracker();

    public NonTouchScrollingLogic(ScrollingLogic scrollingLogic, Function2 function2, Density density) {
        this.a = scrollingLogic;
        this.b = function2;
        this.c = density;
    }

    public static void a(PointerEvent pointerEvent) {
        List list = pointerEvent.a;
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ((PointerInputChange) list.get(i)).a();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Function2 function2, ContinuationImpl continuationImpl) {
        NonTouchScrollingLogic$userScroll$1 nonTouchScrollingLogic$userScroll$1;
        int i;
        if (continuationImpl instanceof NonTouchScrollingLogic$userScroll$1) {
            nonTouchScrollingLogic$userScroll$1 = (NonTouchScrollingLogic$userScroll$1) continuationImpl;
            int i2 = nonTouchScrollingLogic$userScroll$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                nonTouchScrollingLogic$userScroll$1.o = i2 - Integer.MIN_VALUE;
                Object obj = nonTouchScrollingLogic$userScroll$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = nonTouchScrollingLogic$userScroll$1.o;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    this.d = true;
                    NonTouchScrollingLogic$userScroll$2 nonTouchScrollingLogic$userScroll$2 = new NonTouchScrollingLogic$userScroll$2(this, function2, null);
                    nonTouchScrollingLogic$userScroll$1.o = 1;
                    if (SupervisorKt.c(nonTouchScrollingLogic$userScroll$2, nonTouchScrollingLogic$userScroll$1) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                this.d = false;
                return Unit.a;
            }
        }
        nonTouchScrollingLogic$userScroll$1 = new NonTouchScrollingLogic$userScroll$1(this, continuationImpl);
        Object obj2 = nonTouchScrollingLogic$userScroll$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = nonTouchScrollingLogic$userScroll$1.o;
        if (i == 0) {
        }
        this.d = false;
        return Unit.a;
    }
}
