package androidx.media3.exoplayer.audio;

import android.os.Build;
import com.google.common.collect.ImmutableSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IamfUtil {
    public static final ImmutableSet a;

    static {
        ImmutableSet l;
        if (Build.VERSION.SDK_INT < 32) {
            l = ImmutableSet.l(4, 12, 252, 6396, 4);
        } else {
            int i = ImmutableSet.l;
            Object[] objArr = new Object[18];
            objArr[0] = 12;
            objArr[1] = 252;
            objArr[2] = 6396;
            objArr[3] = 4;
            objArr[4] = 3145980;
            objArr[5] = 82172;
            System.arraycopy(new Integer[]{737532, 9126140, 33904892, 202070268, 744444, 67108860, 743676, 3152124, 88316, 81980, 205215996, 3890172}, 0, objArr, 6, 12);
            l = ImmutableSet.l(18, objArr);
        }
        a = l;
    }
}
