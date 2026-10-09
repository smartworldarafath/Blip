package androidx.compose.ui.text;

import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SaversKt$ColorSaver$1 implements Function2<SaverScope, Color, Object> {
    public static final SaversKt$ColorSaver$1 j = new Object();

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        long j2 = ((Color) obj2).a;
        if (j2 == 16) {
            return Boolean.FALSE;
        }
        return Integer.valueOf(ColorKt.f(j2));
    }
}
