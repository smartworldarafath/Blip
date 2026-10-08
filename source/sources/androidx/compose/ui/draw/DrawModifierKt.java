package androidx.compose.ui.draw;

import androidx.compose.foundation.b;
import androidx.compose.ui.Modifier;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DrawModifierKt {
    public static final CacheDrawModifierNode a(b bVar) {
        return new CacheDrawModifierNodeImpl(new CacheDrawScope(), bVar);
    }

    public static final Modifier b(Modifier modifier, Function1 function1) {
        return modifier.l(new DrawBehindElement(function1));
    }

    public static final Modifier c(Modifier modifier, Function1 function1) {
        return modifier.l(new DrawWithCacheElement(function1));
    }

    public static final Modifier d(Modifier modifier, Function1 function1) {
        return modifier.l(new DrawWithContentElement(function1));
    }
}
