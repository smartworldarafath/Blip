package androidx.compose.foundation.text.selection;

import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.ui.geometry.Offset;
import defpackage.le;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SelectionMagnifierKt {
    public static final AnimationVector2D a = new AnimationVector2D(Float.NaN, Float.NaN);
    public static final TwoWayConverter b = VectorConvertersKt.a(new le(15), new le(16));
    public static final long c;
    public static final SpringSpec d;

    static {
        long floatToRawIntBits = (Float.floatToRawIntBits(0.01f) << 32) | (Float.floatToRawIntBits(0.01f) & 4294967295L);
        c = floatToRawIntBits;
        d = new SpringSpec(new Offset(floatToRawIntBits));
    }
}
