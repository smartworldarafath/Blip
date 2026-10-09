package androidx.compose.ui.focus;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FocusRequesterModifierKt {
    public static final Modifier a(Modifier modifier, FocusRequester focusRequester) {
        return modifier.l(new FocusRequesterElement(focusRequester));
    }
}
