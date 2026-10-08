package androidx.media3.extractor;

import androidx.media3.common.DataReader;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.util.Util;
import java.io.EOFException;
import java.io.InterruptedIOException;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultExtractorInput implements ExtractorInput {
    public final DataReader b;
    public final long c;
    public long d;
    public int f;
    public int g;
    public byte[] e = new byte[65536];
    public final byte[] a = new byte[4096];

    static {
        MediaLibraryInfo.a("media3.extractor");
    }

    public DefaultExtractorInput(DataReader dataReader, long j, long j2) {
        this.b = dataReader;
        this.d = j;
        this.c = j2;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean a(byte[] bArr, int i, int i2, boolean z) {
        int min;
        int i3 = this.g;
        if (i3 == 0) {
            min = 0;
        } else {
            min = Math.min(i3, i2);
            System.arraycopy(this.e, 0, bArr, i, min);
            s(min);
        }
        int i4 = min;
        while (i4 < i2 && i4 != -1) {
            i4 = r(bArr, i, i2, i4, z);
        }
        if (i4 != -1) {
            this.d += i4;
        }
        if (i4 == -1) {
            return false;
        }
        return true;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean c(int i, boolean z) {
        int min = Math.min(this.g, i);
        s(min);
        int i2 = min;
        while (i2 < i && i2 != -1) {
            byte[] bArr = this.a;
            i2 = r(bArr, -i2, Math.min(i, bArr.length + i2), i2, z);
        }
        if (i2 != -1) {
            this.d += i2;
        }
        if (i2 != -1) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final boolean d(byte[] bArr, int i, int i2, boolean z) {
        if (!p(i2, z)) {
            return false;
        }
        System.arraycopy(this.e, this.f - i2, bArr, i, i2);
        return true;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long e() {
        return this.d + this.f;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void f(int i) {
        p(i, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long g() {
        return this.c;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final long getPosition() {
        return this.d;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final int h(byte[] bArr, int i, int i2) {
        DefaultExtractorInput defaultExtractorInput;
        int min;
        q(i2);
        int i3 = this.g;
        int i4 = this.f;
        int i5 = i3 - i4;
        if (i5 == 0) {
            defaultExtractorInput = this;
            min = defaultExtractorInput.r(this.e, i4, i2, 0, true);
            if (min == -1) {
                return -1;
            }
            defaultExtractorInput.g += min;
        } else {
            defaultExtractorInput = this;
            min = Math.min(i2, i5);
        }
        System.arraycopy(defaultExtractorInput.e, defaultExtractorInput.f, bArr, i, min);
        defaultExtractorInput.f += min;
        return min;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void j() {
        this.f = 0;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void k(int i) {
        c(i, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void n(byte[] bArr, int i, int i2) {
        d(bArr, i, i2, false);
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final int o() {
        DefaultExtractorInput defaultExtractorInput;
        int min = Math.min(this.g, 1);
        s(min);
        if (min == 0) {
            byte[] bArr = this.a;
            defaultExtractorInput = this;
            min = defaultExtractorInput.r(bArr, 0, Math.min(1, bArr.length), 0, true);
        } else {
            defaultExtractorInput = this;
        }
        if (min != -1) {
            defaultExtractorInput.d += min;
        }
        return min;
    }

    public final boolean p(int i, boolean z) {
        q(i);
        int i2 = this.g - this.f;
        while (i2 < i) {
            DefaultExtractorInput defaultExtractorInput = this;
            int i3 = i;
            boolean z2 = z;
            i2 = defaultExtractorInput.r(this.e, this.f, i3, i2, z2);
            if (i2 == -1) {
                return false;
            }
            defaultExtractorInput.g = defaultExtractorInput.f + i2;
            this = defaultExtractorInput;
            i = i3;
            z = z2;
        }
        this.f += i;
        return true;
    }

    public final void q(int i) {
        int i2 = this.f + i;
        byte[] bArr = this.e;
        if (i2 > bArr.length) {
            this.e = Arrays.copyOf(this.e, Util.g(bArr.length * 2, 65536 + i2, i2 + 524288));
        }
    }

    public final int r(byte[] bArr, int i, int i2, int i3, boolean z) {
        if (!Thread.interrupted()) {
            int read = this.b.read(bArr, i + i3, i2 - i3);
            if (read == -1) {
                if (i3 == 0 && z) {
                    return -1;
                }
                throw new EOFException();
            }
            return i3 + read;
        }
        throw new InterruptedIOException();
    }

    @Override // androidx.media3.common.DataReader
    public final int read(byte[] bArr, int i, int i2) {
        DefaultExtractorInput defaultExtractorInput;
        int i3 = this.g;
        int i4 = 0;
        if (i3 != 0) {
            int min = Math.min(i3, i2);
            System.arraycopy(this.e, 0, bArr, i, min);
            s(min);
            i4 = min;
        }
        if (i4 == 0) {
            defaultExtractorInput = this;
            i4 = defaultExtractorInput.r(bArr, i, i2, 0, true);
        } else {
            defaultExtractorInput = this;
        }
        if (i4 != -1) {
            defaultExtractorInput.d += i4;
        }
        return i4;
    }

    @Override // androidx.media3.extractor.ExtractorInput
    public final void readFully(byte[] bArr, int i, int i2) {
        a(bArr, i, i2, false);
    }

    public final void s(int i) {
        byte[] bArr;
        int i2 = this.g - i;
        this.g = i2;
        this.f = 0;
        byte[] bArr2 = this.e;
        if (i2 < bArr2.length - 524288) {
            bArr = new byte[65536 + i2];
        } else {
            bArr = bArr2;
        }
        System.arraycopy(bArr2, i, bArr, 0, i2);
        this.e = bArr;
    }
}
