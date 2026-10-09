package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OffsetKt {
    public static final Modifier a(Modifier modifier, Function1 function1) {
        return modifier.l(new OffsetPxElement(function1));
    }

    public static final Modifier b(Modifier modifier, float f, float f2) {
        return modifier.l(new OffsetElement(f, f2));
    }

    public static Modifier c(Modifier modifier, float f, int i) {
        float f2;
        if ((i & 1) != 0) {
            f2 = 0.0f;
        } else {
            f2 = -6.0f;
        }
        if ((i & 2) != 0) {
            f = 0.0f;
        }
        return b(modifier, f2, f);
    }
}
