package androidx.compose.ui.input.nestedscroll;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NestedScrollModifierKt {
    public static final Modifier a(Modifier modifier, NestedScrollConnection nestedScrollConnection, NestedScrollDispatcher nestedScrollDispatcher) {
        return modifier.l(new NestedScrollElement(nestedScrollConnection, nestedScrollDispatcher));
    }
}
