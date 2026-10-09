package androidx.compose.foundation.relocation;

import androidx.compose.ui.Modifier;

/* loaded from: classes.dex */
public abstract class BringIntoViewRequesterKt {
    public static final BringIntoViewRequester a() {
        return new BringIntoViewRequesterImpl();
    }

    public static final Modifier b(Modifier modifier, BringIntoViewRequester bringIntoViewRequester) {
        return modifier.l(new BringIntoViewRequesterElement(bringIntoViewRequester));
    }
}
