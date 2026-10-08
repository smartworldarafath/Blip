package androidx.compose.ui.platform;

import android.graphics.Rect;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.RectRulers;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.layout.WindowInsetsRulers;
import androidx.compose.ui.layout.WindowInsetsRulers_androidKt;
import androidx.compose.ui.layout.WindowWindowInsetsAnimationValues;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.node.WeakReference;
import androidx.compose.ui.text.input.NullableInputConnectionWrapper;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ b(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Unit unit = Unit.a;
        int i2 = 0;
        Object obj2 = this.k;
        switch (i) {
            case 0:
                RulerScope rulerScope = (RulerScope) obj;
                AndroidComposeView androidComposeView = AndroidComposeView.this;
                if (((SnapshotMutableIntStateImpl) androidComposeView.getInsetsListener().p).j() > 0) {
                    MutableIntObjectMap mutableIntObjectMap = WindowInsetsRulers_androidKt.a;
                    LookaheadCapablePlaceable.ResettableRulerScope resettableRulerScope = (LookaheadCapablePlaceable.ResettableRulerScope) rulerScope;
                    resettableRulerScope.j = true;
                    LookaheadCapablePlaceable lookaheadCapablePlaceable = LookaheadCapablePlaceable.this;
                    LayoutCoordinates F0 = lookaheadCapablePlaceable.F0();
                    if (IntOffset.a(resettableRulerScope.k, 9223372034707292159L)) {
                        resettableRulerScope.k = IntOffsetKt.b(F0.u(0L));
                        resettableRulerScope.l = F0.f();
                    }
                    lookaheadCapablePlaceable.J0().P.b();
                    long f = F0.f();
                    MutableScatterMap mutableScatterMap = androidComposeView.getInsetsListener().o;
                    int i3 = (int) (f >> 32);
                    int i4 = (int) (f & 4294967295L);
                    for (WindowInsetsRulers windowInsetsRulers : WindowInsetsRulers_androidKt.b) {
                        Object e = mutableScatterMap.e(windowInsetsRulers);
                        e.getClass();
                        WindowWindowInsetsAnimationValues windowWindowInsetsAnimationValues = (WindowWindowInsetsAnimationValues) e;
                        WindowInsetsRulers_androidKt.a(rulerScope, windowInsetsRulers.a(), windowWindowInsetsAnimationValues.h, i3, i4);
                        if (((Boolean) ((SnapshotMutableStateImpl) windowWindowInsetsAnimationValues.b).getValue()).booleanValue()) {
                            WindowInsetsRulers_androidKt.a(rulerScope, windowWindowInsetsAnimationValues.f, windowWindowInsetsAnimationValues.j, i3, i4);
                            WindowInsetsRulers_androidKt.a(rulerScope, windowWindowInsetsAnimationValues.g, windowWindowInsetsAnimationValues.k, i3, i4);
                        }
                        WindowInsetsRulers_androidKt.a(rulerScope, windowInsetsRulers.b(), windowWindowInsetsAnimationValues.i, i3, i4);
                    }
                    MutableObjectList mutableObjectList = androidComposeView.getInsetsListener().q;
                    if (mutableObjectList.e()) {
                        SnapshotStateList snapshotStateList = androidComposeView.getInsetsListener().r;
                        Object[] objArr = mutableObjectList.a;
                        int i5 = mutableObjectList.b;
                        while (i2 < i5) {
                            MutableState mutableState = (MutableState) objArr[i2];
                            RectRulers rectRulers = (RectRulers) snapshotStateList.get(i2);
                            Rect rect = (Rect) mutableState.getValue();
                            LookaheadCapablePlaceable.ResettableRulerScope resettableRulerScope2 = (LookaheadCapablePlaceable.ResettableRulerScope) rulerScope;
                            resettableRulerScope2.a(rectRulers.b(), rect.left);
                            resettableRulerScope2.a(rectRulers.c(), rect.top);
                            resettableRulerScope2.a(rectRulers.d(), rect.right);
                            resettableRulerScope2.a(rectRulers.a(), rect.bottom);
                            i2++;
                        }
                    }
                }
                return unit;
            default:
                InputMethodSession inputMethodSession = (InputMethodSession) obj2;
                NullableInputConnectionWrapper nullableInputConnectionWrapper = (NullableInputConnectionWrapper) obj;
                nullableInputConnectionWrapper.a();
                MutableVector mutableVector = inputMethodSession.d;
                Object[] objArr2 = mutableVector.j;
                int i6 = mutableVector.l;
                while (true) {
                    if (i2 < i6) {
                        if (!Intrinsics.a((WeakReference) objArr2[i2], nullableInputConnectionWrapper)) {
                            i2++;
                        }
                    } else {
                        i2 = -1;
                    }
                }
                if (i2 >= 0) {
                    mutableVector.k(i2);
                }
                if (mutableVector.l == 0) {
                    inputMethodSession.b.a();
                }
                return unit;
        }
    }
}
