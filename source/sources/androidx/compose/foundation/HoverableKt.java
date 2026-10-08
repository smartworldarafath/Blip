package androidx.compose.foundation;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HoverableKt {
    public static Modifier a(Modifier modifier, MutableInteractionSource mutableInteractionSource) {
        return modifier.l(new HoverableElement(mutableInteractionSource));
    }
}
