package androidx.media3.exoplayer.source;

import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ ProgressiveMediaPeriod k;

    public /* synthetic */ b(ProgressiveMediaPeriod progressiveMediaPeriod, int i) {
        this.j = i;
        this.k = progressiveMediaPeriod;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i = this.j;
        ProgressiveMediaPeriod progressiveMediaPeriod = this.k;
        switch (i) {
            case 0:
                Map map = ProgressiveMediaPeriod.b0;
                progressiveMediaPeriod.A();
                return;
            case 1:
                if (!progressiveMediaPeriod.a0) {
                    MaskingMediaPeriod maskingMediaPeriod = progressiveMediaPeriod.A;
                    maskingMediaPeriod.getClass();
                    maskingMediaPeriod.l(progressiveMediaPeriod);
                    return;
                }
                return;
            default:
                progressiveMediaPeriod.U = true;
                return;
        }
    }
}
