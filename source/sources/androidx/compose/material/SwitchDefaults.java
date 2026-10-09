package androidx.compose.material;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SwitchDefaults {
    public static SwitchColors a(Composer composer) {
        long j = ((Color) ((SnapshotMutableStateImpl) MaterialTheme.a(composer).d).getValue()).a;
        long f = MaterialTheme.a(composer).f();
        long d = MaterialTheme.a(composer).d();
        long d2 = ColorKt.d(Color.b(j, ContentAlpha.a(0.38f, 0.38f, composer)), MaterialTheme.a(composer).f());
        long d3 = ColorKt.d(Color.b(j, ContentAlpha.a(0.38f, 0.38f, composer)), MaterialTheme.a(composer).f());
        return new DefaultSwitchColors(j, Color.b(j, 0.54f), f, Color.b(d, 0.38f), d2, Color.b(d3, 0.54f), ColorKt.d(Color.b(f, ContentAlpha.a(0.38f, 0.38f, composer)), MaterialTheme.a(composer).f()), Color.b(ColorKt.d(Color.b(d, ContentAlpha.a(0.38f, 0.38f, composer)), MaterialTheme.a(composer).f()), 0.38f));
    }
}
