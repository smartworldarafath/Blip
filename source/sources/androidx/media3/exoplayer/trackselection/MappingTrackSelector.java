package androidx.media3.exoplayer.trackselection;

import androidx.media3.exoplayer.source.TrackGroupArray;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MappingTrackSelector extends TrackSelector {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MappedTrackInfo {
        public final int a;
        public final int[] b;
        public final TrackGroupArray[] c;
        public final int[] d;
        public final int[][][] e;
        public final TrackGroupArray f;

        public MappedTrackInfo(int[] iArr, TrackGroupArray[] trackGroupArrayArr, int[] iArr2, int[][][] iArr3, TrackGroupArray trackGroupArray) {
            this.b = iArr;
            this.c = trackGroupArrayArr;
            this.e = iArr3;
            this.d = iArr2;
            this.f = trackGroupArray;
            this.a = iArr.length;
        }
    }
}
