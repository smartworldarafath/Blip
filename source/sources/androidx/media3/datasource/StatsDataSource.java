package androidx.media3.datasource;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StatsDataSource implements DataSource {
    public final DataSource a;
    public long b;
    public Uri c;
    public Map d;

    public StatsDataSource(DataSource dataSource) {
        dataSource.getClass();
        this.a = dataSource;
        this.c = Uri.EMPTY;
        this.d = Collections.EMPTY_MAP;
    }

    @Override // androidx.media3.datasource.DataSource
    public final void b(TransferListener transferListener) {
        transferListener.getClass();
        this.a.b(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        this.a.close();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map i() {
        return this.a.i();
    }

    @Override // androidx.media3.datasource.DataSource
    public final long l(DataSpec dataSpec) {
        DataSource dataSource = this.a;
        this.c = dataSpec.a;
        this.d = Collections.EMPTY_MAP;
        try {
            return dataSource.l(dataSpec);
        } finally {
            Uri m = dataSource.m();
            if (m != null) {
                this.c = m;
            }
            this.d = dataSource.i();
        }
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri m() {
        return this.a.m();
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i, int i2) {
        int read = this.a.read(bArr, i, i2);
        if (read != -1) {
            this.b += read;
        }
        return read;
    }
}
