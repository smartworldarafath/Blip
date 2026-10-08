package androidx.media3.exoplayer.trackselection;

import androidx.media3.common.Format;
import androidx.media3.common.TrackGroup;
import com.google.common.base.Preconditions;
import defpackage.v1;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseTrackSelection implements ExoTrackSelection {
    public static final v1 f = new v1(2);
    public final TrackGroup a;
    public final int b;
    public final int[] c;
    public final Format[] d;
    public int e;

    public BaseTrackSelection(TrackGroup trackGroup, int[] iArr) {
        boolean z;
        Format[] formatArr;
        if (iArr.length > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        trackGroup.getClass();
        Format[] formatArr2 = trackGroup.d;
        this.a = trackGroup;
        int length = iArr.length;
        this.b = length;
        this.d = new Format[length];
        int i = 0;
        while (true) {
            int length2 = iArr.length;
            formatArr = this.d;
            if (i >= length2) {
                break;
            }
            formatArr[i] = formatArr2[iArr[i]];
            i++;
        }
        Arrays.sort(formatArr, f);
        this.c = new int[this.b];
        int i2 = 0;
        while (true) {
            int i3 = this.b;
            if (i2 < i3) {
                int[] iArr2 = this.c;
                Format format = this.d[i2];
                int i4 = 0;
                while (true) {
                    if (i4 < formatArr2.length) {
                        if (format == formatArr2[i4]) {
                            break;
                        } else {
                            i4++;
                        }
                    } else {
                        i4 = -1;
                        break;
                    }
                }
                iArr2[i2] = i4;
                i2++;
            } else {
                long[] jArr = new long[i3];
                return;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            BaseTrackSelection baseTrackSelection = (BaseTrackSelection) obj;
            if (this.a.equals(baseTrackSelection.a) && Arrays.equals(this.c, baseTrackSelection.c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.e == 0) {
            this.e = Arrays.hashCode(this.c) + (System.identityHashCode(this.a) * 31);
        }
        return this.e;
    }
}
