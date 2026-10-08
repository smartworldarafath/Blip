package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import defpackage.ii;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WindowInsetsPadding_androidKt {
    public static final ii a = new ii(9);
    public static final ii b = new ii(10);
    public static final ii c = new ii(11);

    public static final Modifier a(Modifier modifier) {
        return modifier.l(new SystemInsetsPaddingModifierElement(c));
    }

    public static final Modifier b(Modifier modifier) {
        return modifier.l(new SystemInsetsPaddingModifierElement(b));
    }

    public static final Modifier c(Modifier modifier) {
        return modifier.l(new SystemInsetsPaddingModifierElement(a));
    }
}
