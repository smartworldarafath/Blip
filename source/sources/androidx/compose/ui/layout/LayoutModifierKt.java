package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LayoutModifierKt {
    public static final Modifier a(Modifier modifier, Function3 function3) {
        return modifier.l(new LayoutElement(function3));
    }
}
