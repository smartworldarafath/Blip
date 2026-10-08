package androidx.media3.exoplayer.source;

import android.net.Uri;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.datasource.DataSource;
import androidx.media3.datasource.DataSpec;
import androidx.media3.datasource.TransferListener;
import androidx.media3.exoplayer.source.ProgressiveMediaPeriod;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class IcyDataSource implements DataSource {
    public final DataSource a;
    public final int b;
    public final Listener c;
    public final byte[] d;
    public int e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
    }

    public IcyDataSource(DataSource dataSource, int i, Listener listener) {
        boolean z;
        if (i > 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.a = dataSource;
        this.b = i;
        this.c = listener;
        this.d = new byte[1];
        this.e = i;
    }

    @Override // androidx.media3.datasource.DataSource
    public final void b(TransferListener transferListener) {
        transferListener.getClass();
        this.a.b(transferListener);
    }

    @Override // androidx.media3.datasource.DataSource
    public final void close() {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Map i() {
        return this.a.i();
    }

    @Override // androidx.media3.datasource.DataSource
    public final long l(DataSpec dataSpec) {
        throw new UnsupportedOperationException();
    }

    @Override // androidx.media3.datasource.DataSource
    public final Uri m() {
        return this.a.m();
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i, int i2) {
        long max;
        int i3 = this.e;
        DataSource dataSource = this.a;
        if (i3 == 0) {
            byte[] bArr2 = this.d;
            int i4 = 0;
            if (dataSource.read(bArr2, 0, 1) != -1) {
                int i5 = (bArr2[0] & 255) << 4;
                if (i5 != 0) {
                    byte[] bArr3 = new byte[i5];
                    int i6 = i5;
                    while (i6 > 0) {
                        int read = dataSource.read(bArr3, i4, i6);
                        if (read != -1) {
                            i4 += read;
                            i6 -= read;
                        }
                    }
                    while (i5 > 0 && bArr3[i5 - 1] == 0) {
                        i5--;
                    }
                    if (i5 > 0) {
                        ParsableByteArray parsableByteArray = new ParsableByteArray(i5, bArr3);
                        ProgressiveMediaPeriod.ExtractingLoadable extractingLoadable = (ProgressiveMediaPeriod.ExtractingLoadable) this.c;
                        if (!extractingLoadable.m) {
                            max = extractingLoadable.j;
                        } else {
                            ProgressiveMediaPeriod progressiveMediaPeriod = ProgressiveMediaPeriod.this;
                            Map map = ProgressiveMediaPeriod.b0;
                            max = Math.max(progressiveMediaPeriod.y(true), extractingLoadable.j);
                        }
                        long j = max;
                        int a = parsableByteArray.a();
                        TrackOutput trackOutput = extractingLoadable.l;
                        trackOutput.getClass();
                        trackOutput.f(a, parsableByteArray);
                        trackOutput.g(j, 1, a, 0, null);
                        extractingLoadable.m = true;
                    }
                }
                this.e = this.b;
            }
            return -1;
        }
        int read2 = dataSource.read(bArr, i, Math.min(this.e, i2));
        if (read2 != -1) {
            this.e -= read2;
        }
        return read2;
    }
}
