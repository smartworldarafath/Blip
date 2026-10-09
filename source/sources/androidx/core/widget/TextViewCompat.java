package androidx.core.widget;

import android.os.Build;
import android.util.TypedValue;
import android.widget.TextView;
import androidx.core.util.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextViewCompat {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api34Impl {
        public static void a(TextView textView, int i, float f) {
            textView.setLineHeight(i, f);
        }
    }

    public static void a(TextView textView, int i) {
        Preconditions.b(i);
        if (i != textView.getPaint().getFontMetricsInt(null)) {
            textView.setLineSpacing(i - r0, 1.0f);
        }
    }

    public static void b(TextView textView, int i, float f) {
        if (Build.VERSION.SDK_INT >= 34) {
            Api34Impl.a(textView, i, f);
        } else {
            a(textView, Math.round(TypedValue.applyDimension(i, f, textView.getResources().getDisplayMetrics())));
        }
    }
}
