package androidx.compose.ui.text.platform;

import android.text.TextPaint;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidTextPaint_androidKt {
    public static final void a(TextPaint textPaint, float f) {
        if (!Float.isNaN(f)) {
            if (f < 0.0f) {
                f = 0.0f;
            }
            if (f > 1.0f) {
                f = 1.0f;
            }
            textPaint.setAlpha(Math.round(f * 255.0f));
        }
    }
}
