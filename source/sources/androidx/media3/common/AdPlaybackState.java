package androidx.media3.common;

import android.net.Uri;
import androidx.media3.common.MediaItem;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.jb;
import defpackage.q;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AdPlaybackState {
    public static final AdPlaybackState c = new AdPlaybackState(new AdGroup[0]);
    public static final AdGroup d;
    public final int a;
    public final AdGroup[] b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class AdGroup {
        public final int a;
        public final int b;
        public final Uri[] c;
        public final MediaItem[] d;
        public final int[] e;
        public final long[] f;
        public final String[] g;
        public final SkipInfo[] h;

        static {
            q.q(0, 1, 2, 3, 4);
            q.q(5, 6, 7, 8, 9);
            Util.z(10);
            Util.z(11);
        }

        public AdGroup(int i, int i2, int[] iArr, MediaItem[] mediaItemArr, long[] jArr, String[] strArr, SkipInfo[] skipInfoArr) {
            boolean z;
            Uri uri;
            int i3 = 0;
            if (iArr.length == mediaItemArr.length) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.e(z);
            Preconditions.e(iArr.length == skipInfoArr.length);
            this.a = i;
            this.b = i2;
            this.e = iArr;
            this.d = mediaItemArr;
            this.f = jArr;
            this.c = new Uri[mediaItemArr.length];
            while (true) {
                Uri[] uriArr = this.c;
                if (i3 < uriArr.length) {
                    MediaItem mediaItem = mediaItemArr[i3];
                    if (mediaItem == null) {
                        uri = null;
                    } else {
                        MediaItem.LocalConfiguration localConfiguration = mediaItem.b;
                        localConfiguration.getClass();
                        uri = localConfiguration.a;
                    }
                    uriArr[i3] = uri;
                    i3++;
                } else {
                    this.g = strArr;
                    this.h = skipInfoArr;
                    return;
                }
            }
        }

        public final int a(int i) {
            int i2;
            int i3 = i + 1;
            while (true) {
                int[] iArr = this.e;
                if (i3 >= iArr.length || (i2 = iArr[i3]) == 0 || i2 == 1) {
                    break;
                }
                i3++;
            }
            return i3;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj != null && AdGroup.class == obj.getClass()) {
                AdGroup adGroup = (AdGroup) obj;
                if (this.a == adGroup.a && this.b == adGroup.b && Arrays.equals(this.d, adGroup.d) && Arrays.equals(this.e, adGroup.e) && Arrays.equals(this.f, adGroup.f) && Arrays.equals(this.g, adGroup.g) && Arrays.equals(this.h, adGroup.h)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return (Arrays.hashCode(this.h) + ((((Arrays.hashCode(this.f) + ((Arrays.hashCode(this.e) + ((Arrays.hashCode(this.d) + (((this.a * 31) + this.b) * 961)) * 31)) * 31)) * 29791) + Arrays.hashCode(this.g)) * 31)) * 31;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SkipInfo {
    }

    static {
        AdGroup adGroup = new AdGroup(-1, -1, new int[0], new MediaItem[0], new long[0], new String[0], new SkipInfo[0]);
        int[] iArr = adGroup.e;
        int length = iArr.length;
        int max = Math.max(0, length);
        int[] copyOf = Arrays.copyOf(iArr, max);
        Arrays.fill(copyOf, length, max, 0);
        long[] jArr = adGroup.f;
        int length2 = jArr.length;
        int max2 = Math.max(0, length2);
        long[] copyOf2 = Arrays.copyOf(jArr, max2);
        Arrays.fill(copyOf2, length2, max2, -9223372036854775807L);
        MediaItem[] mediaItemArr = (MediaItem[]) Arrays.copyOf(adGroup.d, 0);
        String[] strArr = (String[]) Arrays.copyOf(adGroup.g, 0);
        SkipInfo[] skipInfoArr = adGroup.h;
        d = new AdGroup(0, adGroup.b, copyOf, mediaItemArr, copyOf2, strArr, (SkipInfo[]) Arrays.copyOf(skipInfoArr, Math.max(0, skipInfoArr.length)));
        Util.z(1);
        Util.z(2);
        Util.z(3);
        Util.z(4);
    }

    public AdPlaybackState(AdGroup[] adGroupArr) {
        this.a = adGroupArr.length;
        this.b = adGroupArr;
    }

    public final AdGroup a(int i) {
        if (i < 0) {
            return d;
        }
        return this.b[i];
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && AdPlaybackState.class == obj.getClass()) {
                AdPlaybackState adPlaybackState = (AdPlaybackState) obj;
                if (this.a == adPlaybackState.a && Arrays.equals(this.b, adPlaybackState.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (((this.a * 29791) + 1) * 961);
    }

    public final String toString() {
        return jb.f("AdPlaybackState(adsId=null, adResumePositionUs=0, adGroups=[", "])");
    }
}
