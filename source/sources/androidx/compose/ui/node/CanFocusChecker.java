package androidx.compose.ui.node;

import androidx.compose.ui.focus.FocusProperties;
import defpackage.q;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CanFocusChecker implements FocusProperties {
    public static final CanFocusChecker a = new Object();
    public static Boolean b;

    @Override // androidx.compose.ui.focus.FocusProperties
    public final boolean a() {
        Boolean bool = b;
        if (bool != null) {
            return bool.booleanValue();
        }
        throw q.p("canFocus is read before it is written");
    }

    @Override // androidx.compose.ui.focus.FocusProperties
    public final void c(boolean z) {
        b = Boolean.valueOf(z);
    }
}
