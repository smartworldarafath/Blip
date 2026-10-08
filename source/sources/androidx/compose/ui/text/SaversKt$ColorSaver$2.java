package androidx.compose.ui.text;

import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SaversKt$ColorSaver$2 implements Function1<Object, Color> {
    public static final SaversKt$ColorSaver$2 j = new Object();

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        if (Intrinsics.a(obj, Boolean.FALSE)) {
            return new Color(Color.h);
        }
        obj.getClass();
        return new Color(ColorKt.b(((Integer) obj).intValue()));
    }
}
