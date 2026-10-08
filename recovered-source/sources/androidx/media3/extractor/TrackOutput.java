package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.Format;
import androidx.media3.common.util.ParsableByteArray;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface TrackOutput {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CryptoData {
        public final int a;
        public final byte[] b;
        public final int c;
        public final int d;

        public CryptoData(int i, int i2, int i3, byte[] bArr) {
            this.a = i;
            this.b = bArr;
            this.c = i2;
            this.d = i3;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && CryptoData.class == obj.getClass()) {
                    CryptoData cryptoData = (CryptoData) obj;
                    if (this.a == cryptoData.a && this.c == cryptoData.c && this.d == cryptoData.d && Arrays.equals(this.b, cryptoData.b)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return ((((Arrays.hashCode(this.b) + (this.a * 31)) * 31) + this.c) * 31) + this.d;
        }
    }

    int a(DataReader dataReader, int i, boolean z);

    void b(ParsableByteArray parsableByteArray, int i, int i2);

    default int c(DataReader dataReader, int i, boolean z) {
        return a(dataReader, i, z);
    }

    void e(Format format);

    default void f(int i, ParsableByteArray parsableByteArray) {
        b(parsableByteArray, i, 0);
    }

    void g(long j, int i, int i2, int i3, CryptoData cryptoData);

    default void d(long j) {
    }
}
