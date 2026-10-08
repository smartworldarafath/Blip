package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c implements Function1 {
    public final /* synthetic */ MouseWheelScrollingLogic j;
    public final /* synthetic */ Ref$ObjectRef k;
    public final /* synthetic */ Ref$FloatRef l;
    public final /* synthetic */ ScrollingLogic m;
    public final /* synthetic */ Ref$BooleanRef n;

    public /* synthetic */ c(MouseWheelScrollingLogic mouseWheelScrollingLogic, Ref$ObjectRef ref$ObjectRef, Ref$FloatRef ref$FloatRef, ScrollingLogic scrollingLogic, Ref$BooleanRef ref$BooleanRef) {
        this.j = mouseWheelScrollingLogic;
        this.k = ref$ObjectRef;
        this.l = ref$FloatRef;
        this.m = scrollingLogic;
        this.n = ref$BooleanRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        float floatValue = ((Float) obj).floatValue();
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.j;
        MouseWheelScrollingLogic.MouseWheelScrollDelta g = MouseWheelScrollingLogic.g(mouseWheelScrollingLogic.g);
        boolean z = true;
        if (g != null) {
            DifferentialVelocityTracker differentialVelocityTracker = mouseWheelScrollingLogic.e;
            long j = g.b;
            long j2 = g.a;
            differentialVelocityTracker.a.a(j, Float.intBitsToFloat((int) (j2 >> 32)));
            differentialVelocityTracker.b.a(j, Float.intBitsToFloat((int) (j2 & 4294967295L)));
            Ref$ObjectRef ref$ObjectRef = this.k;
            MouseWheelScrollingLogic.MouseWheelScrollDelta a = ((MouseWheelScrollingLogic.MouseWheelScrollDelta) ref$ObjectRef.j).a(g);
            ref$ObjectRef.j = a;
            long j3 = a.a;
            ScrollingLogic scrollingLogic = this.m;
            this.l.j = scrollingLogic.j(scrollingLogic.f(j3));
            this.n.j = !MouseWheelScrollingLogicKt.a(r0 - floatValue);
        }
        if (g == null) {
            z = false;
        }
        return Boolean.valueOf(z);
    }
}
