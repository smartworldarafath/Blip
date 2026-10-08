package androidx.media3.extractor.ogg;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import com.google.common.base.Preconditions;
import java.io.EOFException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class OggPacket {
    public final OggPageHeader a = new OggPageHeader();
    public final ParsableByteArray b = new ParsableByteArray(0, new byte[65025]);
    public int c = -1;
    public int d;
    public boolean e;

    public final int a(int i) {
        int i2;
        int i3 = 0;
        this.d = 0;
        do {
            int i4 = this.d;
            int i5 = i + i4;
            OggPageHeader oggPageHeader = this.a;
            if (i5 >= oggPageHeader.c) {
                break;
            }
            int[] iArr = oggPageHeader.f;
            this.d = i4 + 1;
            i2 = iArr[i5];
            i3 += i2;
        } while (i2 == 255);
        return i3;
    }

    public final boolean b(ExtractorInput extractorInput) {
        boolean z;
        boolean z2;
        int i;
        if (extractorInput != null) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        boolean z3 = this.e;
        ParsableByteArray parsableByteArray = this.b;
        if (z3) {
            this.e = false;
            parsableByteArray.J(0);
        }
        while (!this.e) {
            int i2 = this.c;
            OggPageHeader oggPageHeader = this.a;
            if (i2 < 0) {
                if (oggPageHeader.b(extractorInput, -1L) && oggPageHeader.a(extractorInput, true)) {
                    int i3 = oggPageHeader.d;
                    if ((oggPageHeader.a & 1) == 1 && parsableByteArray.c == 0) {
                        i3 += a(0);
                        i = this.d;
                    } else {
                        i = 0;
                    }
                    try {
                        extractorInput.k(i3);
                        this.c = i;
                    } catch (EOFException unused) {
                    }
                }
                return false;
            }
            int a = a(this.c);
            int i4 = this.c + this.d;
            if (a > 0) {
                parsableByteArray.c(parsableByteArray.c + a);
                try {
                    extractorInput.readFully(parsableByteArray.a, parsableByteArray.c, a);
                    parsableByteArray.L(parsableByteArray.c + a);
                    if (oggPageHeader.f[i4 - 1] != 255) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    this.e = z2;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i4 == oggPageHeader.c) {
                i4 = -1;
            }
            this.c = i4;
        }
        return true;
    }
}
