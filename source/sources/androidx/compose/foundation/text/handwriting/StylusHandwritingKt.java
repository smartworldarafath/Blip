package androidx.compose.foundation.text.handwriting;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.input.pointer.StylusHoverIconModifierElement;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StylusHandwritingKt {
    public static final DpTouchBoundsExpansion a = new Object();

    public static final Modifier a(boolean z, boolean z2, Function0 function0) {
        Modifier modifier = Modifier.Companion.b;
        if (z && StylusHandwriting_androidKt.a) {
            if (z2) {
                modifier = new StylusHoverIconModifierElement(a);
            }
            return modifier.l(new StylusHandwritingElement(function0));
        }
        return modifier;
    }
}
