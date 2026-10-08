package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ButtonDefaults {
    public static final PaddingValuesImpl a = new PaddingValuesImpl(16.0f, 8.0f, 16.0f, 8.0f);
    public static final float b = 64.0f;
    public static final float c = 36.0f;
    public static final PaddingValuesImpl d = new PaddingValuesImpl(8.0f, 8.0f, 8.0f, 8.0f);

    public static ButtonColors a(long j, Composer composer, int i) {
        long j2 = Color.g;
        if ((i & 2) != 0) {
            j = MaterialTheme.a(composer).e();
        }
        return new DefaultButtonColors(j2, j, j2, Color.b(MaterialTheme.a(composer).d(), ContentAlpha.a(0.38f, 0.38f, composer)));
    }
}
