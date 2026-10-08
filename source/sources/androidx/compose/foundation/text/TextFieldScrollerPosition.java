package androidx.compose.foundation.text;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.saveable.ListSaverKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.text.TextRange;
import defpackage.cf;
import defpackage.qg;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldScrollerPosition {
    public static final SaverKt$Saver$1 g = ListSaverKt.a(new cf(22, 0), new qg(8));
    public final MutableFloatState a;
    public final MutableFloatState b = PrimitiveSnapshotStateKt.a(0.0f);
    public final MutableIntState c = SnapshotIntStateKt.a(0);
    public Rect d = Rect.e;
    public long e = TextRange.b;
    public final MutableState f;

    public TextFieldScrollerPosition(Orientation orientation, float f) {
        this.a = PrimitiveSnapshotStateKt.a(f);
        this.f = SnapshotStateKt.f(orientation, SnapshotStateKt.m());
    }

    public final float a() {
        return ((SnapshotMutableFloatStateImpl) this.a).j();
    }

    public final void b(Orientation orientation, Rect rect, int i, int i2) {
        boolean z;
        float f;
        float f2;
        float f3 = i2 - i;
        ((SnapshotMutableFloatStateImpl) this.b).k(f3);
        float f4 = rect.a;
        float f5 = rect.b;
        Rect rect2 = this.d;
        float f6 = rect2.a;
        MutableFloatState mutableFloatState = this.a;
        if (f4 != f6 || f5 != rect2.b) {
            if (orientation == Orientation.j) {
                z = true;
            } else {
                z = false;
            }
            if (z) {
                f4 = f5;
            }
            if (z) {
                f = rect.d;
            } else {
                f = rect.c;
            }
            float a = a();
            float f7 = i;
            float f8 = a + f7;
            if (f > f8 || (f4 < a && f - f4 > f7)) {
                f2 = f - f8;
            } else if (f4 < a && f - f4 <= f7) {
                f2 = f4 - a;
            } else {
                f2 = 0.0f;
            }
            ((SnapshotMutableFloatStateImpl) mutableFloatState).k(a() + f2);
            this.d = rect;
        }
        ((SnapshotMutableFloatStateImpl) mutableFloatState).k(RangesKt.c(a(), 0.0f, f3));
        ((SnapshotMutableIntStateImpl) this.c).k(i);
    }
}
