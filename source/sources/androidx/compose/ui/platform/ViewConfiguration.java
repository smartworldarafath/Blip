package androidx.compose.ui.platform;

import androidx.compose.ui.unit.DpKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ViewConfiguration {
    long a();

    long b();

    default float c() {
        return 2.0f;
    }

    default long d() {
        return DpKt.a(48.0f, 48.0f);
    }

    default float e() {
        return Float.MAX_VALUE;
    }

    float f();

    default float g() {
        return 16.0f;
    }
}
