package io.sentry.android.replay.util;

import android.graphics.Bitmap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MaskRenderer$lazySinglePixelBitmap$1 extends Lambda implements Function0<Bitmap> {
    public static final MaskRenderer$lazySinglePixelBitmap$1 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        return Bitmap.createBitmap(1, 1, Bitmap.Config.ARGB_8888);
    }
}
