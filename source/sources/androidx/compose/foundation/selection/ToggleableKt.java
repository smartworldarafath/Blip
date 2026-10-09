package androidx.compose.foundation.selection;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.semantics.Role;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ToggleableKt {
    public static final Modifier a(boolean z, MutableInteractionSource mutableInteractionSource, Role role, Function1 function1) {
        return new ToggleableElement(z, mutableInteractionSource, role, function1);
    }
}
