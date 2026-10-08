package androidx.media3.datasource;

import androidx.media3.common.util.SystemClock;
import androidx.media3.common.util.Util;
import androidx.media3.exoplayer.upstream.DefaultBandwidthMeter;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseDataSource implements DataSource {
    public final boolean a;
    public final ArrayList b = new ArrayList(1);
    public int c;
    public DataSpec d;

    public BaseDataSource(boolean z) {
        this.a = z;
    }

    @Override // androidx.media3.datasource.DataSource
    public final void b(TransferListener transferListener) {
        transferListener.getClass();
        ArrayList arrayList = this.b;
        if (!arrayList.contains(transferListener)) {
            arrayList.add(transferListener);
            this.c++;
        }
    }

    public final void p(int i) {
        boolean z;
        DataSpec dataSpec = this.d;
        String str = Util.a;
        for (int i2 = 0; i2 < this.c; i2++) {
            TransferListener transferListener = (TransferListener) this.b.get(i2);
            boolean z2 = this.a;
            DefaultBandwidthMeter defaultBandwidthMeter = (DefaultBandwidthMeter) transferListener;
            synchronized (defaultBandwidthMeter) {
                ImmutableList immutableList = DefaultBandwidthMeter.p;
                if (z2) {
                    int i3 = dataSpec.g;
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    defaultBandwidthMeter.i += i;
                }
            }
        }
    }

    public final void q() {
        boolean z;
        boolean z2;
        DataSpec dataSpec = this.d;
        String str = Util.a;
        for (int i = 0; i < this.c; i++) {
            TransferListener transferListener = (TransferListener) this.b.get(i);
            boolean z3 = this.a;
            DefaultBandwidthMeter defaultBandwidthMeter = (DefaultBandwidthMeter) transferListener;
            synchronized (defaultBandwidthMeter) {
                try {
                    ImmutableList immutableList = DefaultBandwidthMeter.p;
                    if (z3) {
                        int i2 = dataSpec.g;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        if (defaultBandwidthMeter.g > 0) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Preconditions.n(z2);
                        ((SystemClock) defaultBandwidthMeter.d).getClass();
                        long elapsedRealtime = android.os.SystemClock.elapsedRealtime();
                        int i3 = (int) (elapsedRealtime - defaultBandwidthMeter.h);
                        defaultBandwidthMeter.j += i3;
                        long j = defaultBandwidthMeter.k;
                        long j2 = defaultBandwidthMeter.i;
                        defaultBandwidthMeter.k = j + j2;
                        if (i3 > 0) {
                            defaultBandwidthMeter.f.a((int) Math.sqrt(j2), (((float) j2) * 8000.0f) / i3);
                            if (defaultBandwidthMeter.j < 2000) {
                                if (defaultBandwidthMeter.k >= 524288) {
                                }
                                defaultBandwidthMeter.e(i3, defaultBandwidthMeter.i, defaultBandwidthMeter.l);
                                defaultBandwidthMeter.h = elapsedRealtime;
                                defaultBandwidthMeter.i = 0L;
                            }
                            defaultBandwidthMeter.l = defaultBandwidthMeter.f.b();
                            defaultBandwidthMeter.e(i3, defaultBandwidthMeter.i, defaultBandwidthMeter.l);
                            defaultBandwidthMeter.h = elapsedRealtime;
                            defaultBandwidthMeter.i = 0L;
                        }
                        defaultBandwidthMeter.g--;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        this.d = null;
    }

    public final void r() {
        for (int i = 0; i < this.c; i++) {
            ((TransferListener) this.b.get(i)).getClass();
        }
    }

    public final void s(DataSpec dataSpec) {
        boolean z;
        this.d = dataSpec;
        for (int i = 0; i < this.c; i++) {
            TransferListener transferListener = (TransferListener) this.b.get(i);
            boolean z2 = this.a;
            DefaultBandwidthMeter defaultBandwidthMeter = (DefaultBandwidthMeter) transferListener;
            synchronized (defaultBandwidthMeter) {
                try {
                    ImmutableList immutableList = DefaultBandwidthMeter.p;
                    if (z2) {
                        int i2 = dataSpec.g;
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        if (defaultBandwidthMeter.g == 0) {
                            ((SystemClock) defaultBandwidthMeter.d).getClass();
                            defaultBandwidthMeter.h = android.os.SystemClock.elapsedRealtime();
                        }
                        defaultBandwidthMeter.g++;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
