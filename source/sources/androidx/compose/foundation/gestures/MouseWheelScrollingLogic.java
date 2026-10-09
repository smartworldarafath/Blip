package androidx.compose.foundation.gestures;

import android.view.ViewConfiguration;
import androidx.compose.animation.core.AnimationStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import defpackage.jb;
import defpackage.u2;
import java.util.Iterator;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.sequences.SequencesKt;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.channels.BufferedChannel;
import kotlinx.coroutines.channels.ChannelKt;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MouseWheelScrollingLogic extends NonTouchScrollingLogic {
    public final AndroidConfig f;
    public final BufferedChannel g;
    public Job h;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MouseWheelScrollDelta {
        public final long a;
        public final long b;
        public final boolean c;

        public MouseWheelScrollDelta(long j, long j2, boolean z) {
            this.a = j;
            this.b = j2;
            this.c = z;
        }

        public final MouseWheelScrollDelta a(MouseWheelScrollDelta mouseWheelScrollDelta) {
            return new MouseWheelScrollDelta(Offset.f(this.a, mouseWheelScrollDelta.a), Math.max(this.b, mouseWheelScrollDelta.b), this.c);
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof MouseWheelScrollDelta) {
                    MouseWheelScrollDelta mouseWheelScrollDelta = (MouseWheelScrollDelta) obj;
                    if (!Offset.c(this.a, mouseWheelScrollDelta.a) || this.b != mouseWheelScrollDelta.b || this.c != mouseWheelScrollDelta.c) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.c) + jb.a(Long.hashCode(this.a) * 31, 31, this.b);
        }

        public final String toString() {
            return "MouseWheelScrollDelta(value=" + Offset.h(this.a) + ", timeMillis=" + this.b + ", shouldApplyImmediately=" + this.c + ")";
        }
    }

    public MouseWheelScrollingLogic(ScrollingLogic scrollingLogic, AndroidConfig androidConfig, Function2 function2, Density density) {
        super(scrollingLogic, function2, density);
        this.f = androidConfig;
        this.g = ChannelKt.a(Integer.MAX_VALUE, 6, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x010f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0156 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0157 A[PHI: r16
  0x0157: PHI (r16v1 kotlin.Unit) = (r16v0 kotlin.Unit), (r16v2 kotlin.Unit) binds: [B:35:0x00c5, B:28:0x0154] A[DONT_GENERATE, DONT_INLINE], RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0031  */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object c(MouseWheelScrollingLogic mouseWheelScrollingLogic, ScrollingLogic scrollingLogic, MouseWheelScrollDelta mouseWheelScrollDelta, float f, float f2, ContinuationImpl continuationImpl) {
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$1 mouseWheelScrollingLogic$dispatchMouseWheelScroll$1;
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$1 mouseWheelScrollingLogic$dispatchMouseWheelScroll$12;
        CoroutineSingletons coroutineSingletons;
        int i;
        Unit unit;
        Ref$FloatRef ref$FloatRef;
        float f3;
        ScrollingLogic scrollingLogic2;
        long a;
        Function2 function2;
        Velocity velocity;
        long a2;
        MouseWheelScrollingLogic mouseWheelScrollingLogic2 = mouseWheelScrollingLogic;
        DifferentialVelocityTracker differentialVelocityTracker = mouseWheelScrollingLogic2.e;
        if (continuationImpl instanceof MouseWheelScrollingLogic$dispatchMouseWheelScroll$1) {
            mouseWheelScrollingLogic$dispatchMouseWheelScroll$1 = (MouseWheelScrollingLogic$dispatchMouseWheelScroll$1) continuationImpl;
            int i2 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$1.r;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$1.r = i2 - Integer.MIN_VALUE;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$12 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$1;
                Object obj = mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.p;
                coroutineSingletons = CoroutineSingletons.j;
                i = mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.r;
                Unit unit2 = Unit.a;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ResultKt.b(obj);
                            return unit2;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    f3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.o;
                    ref$FloatRef = mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.n;
                    scrollingLogic2 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.m;
                    ResultKt.b(obj);
                    unit = unit2;
                } else {
                    ResultKt.b(obj);
                    ?? obj2 = new Object();
                    obj2.j = mouseWheelScrollDelta;
                    long j = mouseWheelScrollDelta.b;
                    unit = unit2;
                    long j2 = mouseWheelScrollDelta.a;
                    differentialVelocityTracker.a.a(j, Float.intBitsToFloat((int) (j2 >> 32)));
                    differentialVelocityTracker.b.a(j, Float.intBitsToFloat((int) (j2 & 4294967295L)));
                    MouseWheelScrollDelta g = g(mouseWheelScrollingLogic2.g);
                    if (g != null) {
                        long j3 = g.b;
                        long j4 = g.a;
                        differentialVelocityTracker.a.a(j3, Float.intBitsToFloat((int) (j4 >> 32)));
                        differentialVelocityTracker.b.a(j3, Float.intBitsToFloat((int) (j4 & 4294967295L)));
                        obj2.j = ((MouseWheelScrollDelta) obj2.j).a(g);
                    }
                    ?? obj3 = new Object();
                    float h = scrollingLogic.h(scrollingLogic.f(((MouseWheelScrollDelta) obj2.j).a));
                    obj3.j = h;
                    if (!MouseWheelScrollingLogicKt.a(h)) {
                        ?? obj4 = new Object();
                        obj4.j = AnimationStateKt.b(0.0f, 0.0f, 30);
                        mouseWheelScrollingLogic2 = mouseWheelScrollingLogic;
                        MouseWheelScrollingLogic$dispatchMouseWheelScroll$3 mouseWheelScrollingLogic$dispatchMouseWheelScroll$3 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$3(obj3, obj4, obj2, f, mouseWheelScrollingLogic2, f2, scrollingLogic, null);
                        mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.m = scrollingLogic;
                        mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.n = obj3;
                        mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.o = f2;
                        mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.r = 1;
                        if (mouseWheelScrollingLogic2.b(mouseWheelScrollingLogic$dispatchMouseWheelScroll$3, mouseWheelScrollingLogic$dispatchMouseWheelScroll$12) != coroutineSingletons) {
                            ref$FloatRef = obj3;
                            f3 = f2;
                            scrollingLogic2 = scrollingLogic;
                        }
                        return coroutineSingletons;
                    }
                    return unit;
                }
                a = VelocityKt.a(differentialVelocityTracker.a.c(Float.MAX_VALUE), differentialVelocityTracker.b.c(Float.MAX_VALUE));
                if (a == 0) {
                    float e = scrollingLogic2.e(Math.signum(ref$FloatRef.j)) * Math.min(Math.abs(ref$FloatRef.j) / 100.0f, f3) * 1000.0f;
                    if (e == 0.0f) {
                        a = 0;
                    } else {
                        if (scrollingLogic2.d == Orientation.k) {
                            a2 = VelocityKt.a(e, 0.0f);
                        } else {
                            a2 = VelocityKt.a(0.0f, e);
                        }
                        a = a2;
                    }
                }
                function2 = mouseWheelScrollingLogic2.b;
                velocity = new Velocity(a);
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.m = null;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.n = null;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.r = 2;
                if (function2.n(velocity, mouseWheelScrollingLogic$dispatchMouseWheelScroll$12) != coroutineSingletons) {
                    return coroutineSingletons;
                }
                return unit;
            }
        }
        mouseWheelScrollingLogic$dispatchMouseWheelScroll$1 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$1(mouseWheelScrollingLogic2, continuationImpl);
        mouseWheelScrollingLogic$dispatchMouseWheelScroll$12 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$1;
        Object obj5 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.p;
        coroutineSingletons = CoroutineSingletons.j;
        i = mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.r;
        Unit unit22 = Unit.a;
        if (i == 0) {
        }
        a = VelocityKt.a(differentialVelocityTracker.a.c(Float.MAX_VALUE), differentialVelocityTracker.b.c(Float.MAX_VALUE));
        if (a == 0) {
        }
        function2 = mouseWheelScrollingLogic2.b;
        velocity = new Velocity(a);
        mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.m = null;
        mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.n = null;
        mouseWheelScrollingLogic$dispatchMouseWheelScroll$12.r = 2;
        if (function2.n(velocity, mouseWheelScrollingLogic$dispatchMouseWheelScroll$12) != coroutineSingletons) {
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:12:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object d(MouseWheelScrollingLogic mouseWheelScrollingLogic, Ref$ObjectRef ref$ObjectRef, Ref$FloatRef ref$FloatRef, ScrollingLogic scrollingLogic, Ref$ObjectRef ref$ObjectRef2, long j, ContinuationImpl continuationImpl) {
        MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1;
        int i;
        ScrollingLogic scrollingLogic2;
        Ref$ObjectRef ref$ObjectRef3;
        MouseWheelScrollingLogic mouseWheelScrollingLogic2;
        Ref$ObjectRef ref$ObjectRef4;
        Ref$FloatRef ref$FloatRef2;
        MouseWheelScrollDelta mouseWheelScrollDelta;
        boolean z;
        if (continuationImpl instanceof MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1) {
            MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$12 = (MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1) continuationImpl;
            int i2 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$12.s;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$12.s = i2 - Integer.MIN_VALUE;
                mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$12;
                Object obj = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.r;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.s;
                if (i == 0) {
                    if (i == 1) {
                        Ref$ObjectRef ref$ObjectRef5 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.q;
                        ScrollingLogic scrollingLogic3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.p;
                        ref$FloatRef2 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.o;
                        ref$ObjectRef4 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.n;
                        MouseWheelScrollingLogic mouseWheelScrollingLogic3 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.m;
                        ResultKt.b(obj);
                        ref$ObjectRef3 = ref$ObjectRef5;
                        scrollingLogic2 = scrollingLogic3;
                        mouseWheelScrollingLogic2 = mouseWheelScrollingLogic3;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    if (j < 0) {
                        return Boolean.FALSE;
                    }
                    MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 = new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2(mouseWheelScrollingLogic, null);
                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.m = mouseWheelScrollingLogic;
                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.n = ref$ObjectRef;
                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.o = ref$FloatRef;
                    scrollingLogic2 = scrollingLogic;
                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.p = scrollingLogic2;
                    ref$ObjectRef3 = ref$ObjectRef2;
                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.q = ref$ObjectRef3;
                    mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.s = 1;
                    obj = TimeoutKt.c(j, mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2, mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    mouseWheelScrollingLogic2 = mouseWheelScrollingLogic;
                    ref$ObjectRef4 = ref$ObjectRef;
                    ref$FloatRef2 = ref$FloatRef;
                }
                mouseWheelScrollDelta = (MouseWheelScrollDelta) obj;
                if (mouseWheelScrollDelta == null) {
                    boolean z2 = ((MouseWheelScrollDelta) ref$ObjectRef4.j).c;
                    long j2 = mouseWheelScrollDelta.a;
                    ref$ObjectRef4.j = new MouseWheelScrollDelta(j2, mouseWheelScrollDelta.b, z2);
                    ref$FloatRef2.j = scrollingLogic2.j(scrollingLogic2.f(j2));
                    ref$ObjectRef3.j = AnimationStateKt.b(0.0f, 0.0f, 30);
                    DifferentialVelocityTracker differentialVelocityTracker = mouseWheelScrollingLogic2.e;
                    long j3 = mouseWheelScrollDelta.b;
                    long j4 = mouseWheelScrollDelta.a;
                    differentialVelocityTracker.a.a(j3, Float.intBitsToFloat((int) (j4 >> 32)));
                    differentialVelocityTracker.b.a(j3, Float.intBitsToFloat((int) (j4 & 4294967295L)));
                    z = !MouseWheelScrollingLogicKt.a(ref$FloatRef2.j);
                } else {
                    z = false;
                }
                return Boolean.valueOf(z);
            }
        }
        mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.r;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = mouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$1.s;
        if (i == 0) {
        }
        mouseWheelScrollDelta = (MouseWheelScrollDelta) obj2;
        if (mouseWheelScrollDelta == null) {
        }
        return Boolean.valueOf(z);
    }

    public static MouseWheelScrollDelta g(BufferedChannel bufferedChannel) {
        MouseWheelScrollDelta mouseWheelScrollDelta = null;
        Iterator e = SequencesKt.e(new NonTouchScrollingLogicKt$untilNull$1(new b(bufferedChannel, 0), null));
        while (e.hasNext()) {
            MouseWheelScrollDelta mouseWheelScrollDelta2 = (MouseWheelScrollDelta) e.next();
            if (mouseWheelScrollDelta != null) {
                mouseWheelScrollDelta2 = mouseWheelScrollDelta.a(mouseWheelScrollDelta2);
            }
            mouseWheelScrollDelta = mouseWheelScrollDelta2;
        }
        return mouseWheelScrollDelta;
    }

    public final float e(NestedScrollScope nestedScrollScope, float f) {
        ScrollingLogic scrollingLogic = this.a;
        long i = scrollingLogic.i(scrollingLogic.e(f));
        ScrollingLogic scrollingLogic2 = ((ScrollingLogic$nestedScrollScope$1) nestedScrollScope).a;
        return scrollingLogic.h(scrollingLogic.f(scrollingLogic2.d(scrollingLogic2.k, i, 1)));
    }

    public final boolean f(PointerEvent pointerEvent) {
        long j;
        AndroidConfig androidConfig = this.f;
        ViewConfiguration viewConfiguration = androidConfig.a;
        float f = -viewConfiguration.getScaledVerticalScrollFactor();
        float f2 = -viewConfiguration.getScaledHorizontalScrollFactor();
        List list = pointerEvent.a;
        Offset offset = new Offset(0L);
        int size = list.size();
        boolean z = false;
        int i = 0;
        while (true) {
            j = offset.a;
            if (i >= size) {
                break;
            }
            offset = new Offset(Offset.f(j, ((PointerInputChange) list.get(i)).j));
            i++;
        }
        float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32)) * f2;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L)) * f;
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat) << 32) | (Float.floatToRawIntBits(intBitsToFloat2) & 4294967295L);
        ScrollingLogic scrollingLogic = this.a;
        float j2 = scrollingLogic.j(scrollingLogic.f(floatToRawIntBits));
        if (j2 != 0.0f) {
            ScrollableState scrollableState = scrollingLogic.a;
            if (j2 > 0.0f) {
                z = scrollableState.d();
            } else {
                z = scrollableState.b();
            }
        }
        if (z) {
            long j3 = ((PointerInputChange) CollectionsKt.s(pointerEvent.a)).b;
            androidConfig.getClass();
            return !(this.g.j(new MouseWheelScrollDelta(floatToRawIntBits, j3, false)) instanceof ChannelResult.Failed);
        }
        return this.d;
    }
}
