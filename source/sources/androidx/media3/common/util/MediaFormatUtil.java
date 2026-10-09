package androidx.media3.common.util;

import android.media.MediaFormat;
import defpackage.q;
import java.nio.ByteBuffer;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MediaFormatUtil {
    public static void a(MediaFormat mediaFormat, String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    public static void b(MediaFormat mediaFormat, List list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(q.g(i, "csd-"), ByteBuffer.wrap((byte[]) list.get(i)));
        }
    }
}
