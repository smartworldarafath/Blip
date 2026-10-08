package io.sentry.android.replay.video;

import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SimpleVideoEncoder$hasExynosCodec$2 extends Lambda implements Function0<Boolean> {
    public static final SimpleVideoEncoder$hasExynosCodec$2 k = new Lambda(0);

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        boolean z = false;
        MediaCodecInfo[] codecInfos = new MediaCodecList(0).getCodecInfos();
        codecInfos.getClass();
        int length = codecInfos.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            String name = codecInfos[i].getName();
            name.getClass();
            if (StringsKt.i(name, "c2.exynos", false)) {
                z = true;
                break;
            }
            i++;
        }
        return Boolean.valueOf(z);
    }
}
