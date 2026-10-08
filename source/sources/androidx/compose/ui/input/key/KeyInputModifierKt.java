package androidx.compose.ui.input.key;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class KeyInputModifierKt {
    public static final Modifier a(Modifier modifier, Function1 function1) {
        return modifier.l(new KeyInputElement(function1, null));
    }

    public static final Modifier b(Modifier modifier, Function1 function1) {
        return modifier.l(new KeyInputElement(null, function1));
    }
}
