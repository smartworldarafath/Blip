package androidx.compose.ui.platform;

import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.ComputedProvidableCompositionLocal;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import defpackage.h;
import defpackage.n;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidCompositionLocals_androidKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new n(3));
    public static final StaticProvidableCompositionLocal b = new CompositionLocal(new n(4));
    public static final ComputedProvidableCompositionLocal c = new ComputedProvidableCompositionLocal(new h(6));
    public static final StaticProvidableCompositionLocal d = new CompositionLocal(new n(5));
    public static final StaticProvidableCompositionLocal e = new CompositionLocal(new n(6));
    public static final StaticProvidableCompositionLocal f = new CompositionLocal(new n(7));

    public static final void a(String str) {
        throw new IllegalStateException(("CompositionLocal " + str + " not present").toString());
    }
}
