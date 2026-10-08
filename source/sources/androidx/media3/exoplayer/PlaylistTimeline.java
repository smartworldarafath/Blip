package androidx.media3.exoplayer;

import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.source.ShuffleOrder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlaylistTimeline extends AbstractConcatenatedTimeline {
    public final int e;
    public final int f;
    public final int[] g;
    public final int[] h;
    public final Timeline[] i;
    public final Object[] j;
    public final HashMap k;

    public PlaylistTimeline(Timeline[] timelineArr, Object[] objArr, ShuffleOrder shuffleOrder) {
        super(shuffleOrder);
        int length = timelineArr.length;
        this.i = timelineArr;
        this.g = new int[length];
        this.h = new int[length];
        this.j = objArr;
        this.k = new HashMap();
        int length2 = timelineArr.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i < length2) {
            Timeline timeline = timelineArr[i];
            this.i[i4] = timeline;
            this.h[i4] = i2;
            this.g[i4] = i3;
            i2 += timeline.o();
            i3 += this.i[i4].h();
            this.k.put(objArr[i4], Integer.valueOf(i4));
            i++;
            i4++;
        }
        this.e = i2;
        this.f = i3;
    }

    @Override // androidx.media3.common.Timeline
    public final int h() {
        return this.f;
    }

    @Override // androidx.media3.common.Timeline
    public final int o() {
        return this.e;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public PlaylistTimeline(ArrayList arrayList, ShuffleOrder shuffleOrder) {
        this(r0, r1, shuffleOrder);
        Timeline[] timelineArr = new Timeline[arrayList.size()];
        Iterator it = arrayList.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            timelineArr[i2] = ((MediaSourceInfoHolder) it.next()).b();
            i2++;
        }
        Object[] objArr = new Object[arrayList.size()];
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            objArr[i] = ((MediaSourceInfoHolder) it2.next()).a();
            i++;
        }
    }
}
