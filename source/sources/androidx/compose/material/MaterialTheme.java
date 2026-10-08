package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MaterialTheme {
    public static Colors a(Composer composer) {
        return (Colors) ((GapComposer) composer).j(ColorsKt.a);
    }

    public static Shapes b(Composer composer) {
        return (Shapes) ((GapComposer) composer).j(ShapesKt.a);
    }

    public static Typography c(Composer composer) {
        return (Typography) ((GapComposer) composer).j(TypographyKt.b);
    }
}
