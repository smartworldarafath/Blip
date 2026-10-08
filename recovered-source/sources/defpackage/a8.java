package defpackage;

import androidx.compose.animation.core.Transition;
import androidx.compose.foundation.BorderStroke;
import androidx.compose.foundation.gestures.DraggableGestureConnection;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableLongState;
import androidx.compose.runtime.SnapshotMutableLongStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.semantics.ProgressBarRangeInfo;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Dp;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.math.MathKt;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;
import kotlin.reflect.KProperty;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a8 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ float k;
    public final /* synthetic */ Object l;

    public /* synthetic */ a8(Transition transition, float f) {
        this.j = 3;
        this.l = transition;
        this.k = f;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        boolean z;
        int i = this.j;
        boolean z2 = false;
        Unit unit = Unit.a;
        float f = this.k;
        Object obj2 = this.l;
        switch (i) {
            case 0:
                Ref$BooleanRef ref$BooleanRef = (Ref$BooleanRef) obj2;
                DraggableGestureConnection draggableGestureConnection = (DraggableGestureConnection) obj;
                boolean a = Intrinsics.a(draggableGestureConnection.T(), "waiting");
                if (draggableGestureConnection.b0() != null) {
                    Orientation b0 = draggableGestureConnection.b0();
                    b0.getClass();
                    Function3 function3 = DraggableKt.a;
                    if (b0 != Orientation.k ? !(f <= 30.0f || f > 90.0f) : f <= 30.0f) {
                        z = true;
                        if (!ref$BooleanRef.j || (a && z)) {
                            z2 = true;
                        }
                        ref$BooleanRef.j = z2;
                        return Boolean.valueOf(!z2);
                    }
                }
                z = false;
                if (!ref$BooleanRef.j) {
                }
                z2 = true;
                ref$BooleanRef.j = z2;
                return Boolean.valueOf(!z2);
            case 1:
                ClosedFloatingPointRange closedFloatingPointRange = (ClosedFloatingPointRange) obj2;
                ProgressBarRangeInfo progressBarRangeInfo = new ProgressBarRangeInfo(((Number) RangesKt.f(Float.valueOf(f), closedFloatingPointRange)).floatValue(), closedFloatingPointRange);
                KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
                SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.c;
                KProperty kProperty = SemanticsPropertiesKt.a[1];
                semanticsPropertyKey.getClass();
                ((SemanticsPropertyReceiver) obj).b(semanticsPropertyKey, progressBarRangeInfo);
                return unit;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                BorderStroke borderStroke = (BorderStroke) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) ((ContentDrawScope) obj);
                layoutNodeDrawScope.a();
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
                if (!Dp.b(f, 0.0f)) {
                    float density = canvasDrawScope.getDensity() * f;
                    float intBitsToFloat = Float.intBitsToFloat((int) (canvasDrawScope.i() & 4294967295L)) - (density / 2.0f);
                    DrawScope.d0(layoutNodeDrawScope, borderStroke.b, (Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L), (Float.floatToRawIntBits(Float.intBitsToFloat((int) (canvasDrawScope.i() >> 32))) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L), density, 0.0f, 496);
                }
                return unit;
            default:
                Transition transition = (Transition) obj2;
                long longValue = ((Long) obj).longValue();
                boolean h = transition.h();
                MutableLongState mutableLongState = transition.h;
                if (!h) {
                    if (((SnapshotMutableLongStateImpl) mutableLongState).j() == Long.MIN_VALUE) {
                        ((SnapshotMutableLongStateImpl) mutableLongState).k(longValue);
                        ((SnapshotMutableStateImpl) transition.a.a).setValue(Boolean.TRUE);
                    }
                    long j = longValue - ((SnapshotMutableLongStateImpl) mutableLongState).j();
                    if (f != 0.0f) {
                        j = MathKt.c(j / f);
                    }
                    transition.o(j);
                    if (f == 0.0f) {
                        z2 = true;
                    }
                    transition.i(j, z2);
                }
                return unit;
        }
    }

    public /* synthetic */ a8(float f, Object obj, int i) {
        this.j = i;
        this.k = f;
        this.l = obj;
    }
}
