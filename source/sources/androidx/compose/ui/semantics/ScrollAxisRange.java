package androidx.compose.ui.semantics;

import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollAxisRange {
    public final Function0 a;
    public final Function0 b;

    public ScrollAxisRange(Function0 function0, Function0 function02) {
        this.a = function0;
        this.b = function02;
    }

    public final String toString() {
        return "ScrollAxisRange(value=" + this.a.a() + ", maxValue=" + this.b.a() + ", reverseScrolling=false)";
    }
}
