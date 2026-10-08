package androidx.compose.ui.graphics;

import defpackage.db;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RenderEffect {
    public android.graphics.RenderEffect a;

    public final android.graphics.RenderEffect a() {
        android.graphics.RenderEffect renderEffect = this.a;
        if (renderEffect == null) {
            BlurEffect blurEffect = (BlurEffect) this;
            float f = blurEffect.b;
            float f2 = blurEffect.c;
            if (f == 0.0f && f2 == 0.0f) {
                renderEffect = db.c();
            } else {
                renderEffect = db.d(f, f2, AndroidTileMode_androidKt.a(blurEffect.d));
            }
            this.a = renderEffect;
        }
        return renderEffect;
    }
}
