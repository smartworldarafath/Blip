package androidx.compose.ui.semantics;

import androidx.compose.ui.Modifier;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SemanticsModifierKt {
    public static final AtomicInteger a = new AtomicInteger(0);

    public static final Modifier a(Modifier modifier, boolean z, Function1 function1) {
        return modifier.l(new AppendedSemanticsElement(function1, z));
    }
}
