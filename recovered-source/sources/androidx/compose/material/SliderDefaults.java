package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SliderDefaults {
    public static SliderColors a(long j, long j2, long j3, Composer composer, int i, int i2) {
        long j4;
        long j5;
        long j6;
        if ((i2 & 1) != 0) {
            j4 = MaterialTheme.a(composer).e();
        } else {
            j4 = j;
        }
        long d = ColorKt.d(Color.b(MaterialTheme.a(composer).d(), ContentAlpha.a(0.38f, 0.38f, composer)), MaterialTheme.a(composer).f());
        if ((i2 & 4) != 0) {
            j5 = MaterialTheme.a(composer).e();
        } else {
            j5 = j2;
        }
        if ((i2 & 8) != 0) {
            j6 = Color.b(j5, 0.24f);
        } else {
            j6 = j3;
        }
        long b = Color.b(MaterialTheme.a(composer).d(), 0.32f);
        long b2 = Color.b(b, 0.12f);
        long b3 = Color.b(ColorsKt.b(j5, composer), 0.54f);
        return new DefaultSliderColors(j4, d, j5, j6, b, b2, b3, Color.b(j5, 0.54f), Color.b(b3, 0.12f), Color.b(b2, 0.12f));
    }
}
