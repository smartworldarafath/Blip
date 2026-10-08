package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.TrackOutput;
import java.io.EOFException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DiscardingTrackOutput implements TrackOutput {
    public final byte[] a = new byte[4096];

    @Override // androidx.media3.extractor.TrackOutput
    public final int a(DataReader dataReader, int i, boolean z) {
        byte[] bArr = this.a;
        int read = dataReader.read(bArr, 0, Math.min(bArr.length, i));
        if (read == -1) {
            if (z) {
                return -1;
            }
            throw new EOFException();
        }
        return read;
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void b(ParsableByteArray parsableByteArray, int i, int i2) {
        parsableByteArray.N(i);
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void e(Format format) {
    }

    @Override // androidx.media3.extractor.TrackOutput
    public final void g(long j, int i, int i2, int i3, TrackOutput.CryptoData cryptoData) {
    }
}
