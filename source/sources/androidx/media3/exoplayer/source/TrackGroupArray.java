package androidx.media3.exoplayer.source;

import androidx.media3.common.TrackGroup;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import com.google.common.collect.ImmutableList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrackGroupArray {
    public static final TrackGroupArray d = new TrackGroupArray(new TrackGroup[0]);
    public final int a;
    public final ImmutableList b;
    public int c;

    static {
        Util.z(0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TrackGroupArray(TrackGroup... trackGroupArr) {
        ImmutableList o = ImmutableList.o(trackGroupArr);
        this.b = o;
        this.a = trackGroupArr.length;
        int i = 0;
        while (i < o.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < o.size(); i3++) {
                if (((TrackGroup) o.get(i)).equals(o.get(i3))) {
                    Log.d("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final TrackGroup a(int i) {
        return (TrackGroup) this.b.get(i);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && TrackGroupArray.class == obj.getClass()) {
            TrackGroupArray trackGroupArray = (TrackGroupArray) obj;
            if (this.a == trackGroupArray.a && this.b.equals(trackGroupArray.b)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        if (this.c == 0) {
            this.c = this.b.hashCode();
        }
        return this.c;
    }

    public final String toString() {
        return this.b.toString();
    }
}
