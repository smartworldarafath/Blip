package androidx.media3.common;

import android.text.TextUtils;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.jb;
import defpackage.q;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrackGroup {
    public final int a;
    public final String b;
    public final int c;
    public final Format[] d;
    public int e;

    static {
        Util.z(0);
        Util.z(1);
    }

    public TrackGroup(String str, Format... formatArr) {
        boolean z;
        int g;
        if (formatArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.b = str;
        this.d = formatArr;
        this.a = formatArr.length;
        String str2 = formatArr[0].p;
        if (TextUtils.isEmpty(str2)) {
            g = MimeTypes.g(formatArr[0].o);
        } else {
            g = MimeTypes.g(str2);
        }
        this.c = g;
        String str3 = formatArr[0].d;
        str3 = (str3 == null || str3.equals("und")) ? "" : str3;
        int i = formatArr[0].f | 16384;
        for (int i2 = 1; i2 < formatArr.length; i2++) {
            String str4 = formatArr[i2].d;
            if (!str3.equals((str4 == null || str4.equals("und")) ? "" : str4)) {
                a("languages", formatArr[0].d, formatArr[i2].d, i2);
                return;
            } else {
                if (i != (formatArr[i2].f | 16384)) {
                    a("role flags", Integer.toBinaryString(formatArr[0].f), Integer.toBinaryString(formatArr[i2].f), i2);
                    return;
                }
            }
        }
    }

    public static void a(String str, String str2, String str3, int i) {
        StringBuilder o = q.o("Different ", str, " combined in one TrackGroup: '", str2, "' (track 0) and '");
        o.append(str3);
        o.append("' (track ");
        o.append(i);
        o.append(")");
        Log.d("TrackGroup", "", new IllegalStateException(o.toString()));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackGroup.class == obj.getClass()) {
            TrackGroup trackGroup = (TrackGroup) obj;
            if (this.b.equals(trackGroup.b) && Arrays.equals(this.d, trackGroup.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.e == 0) {
            this.e = Arrays.hashCode(this.d) + jb.c(this.b, 527, 31);
        }
        return this.e;
    }

    public final String toString() {
        return this.b + ": " + Arrays.toString(this.d);
    }
}
