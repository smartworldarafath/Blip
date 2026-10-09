package androidx.compose.ui.text.font;

import android.content.Context;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FontWeightAdjustmentHelperApi31 {
    public static final FontWeightAdjustmentHelperApi31 a = new Object();

    public final int a(Context context) {
        int i;
        i = context.getResources().getConfiguration().fontWeightAdjustment;
        return i;
    }
}
