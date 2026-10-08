package androidx.media3.extractor.ogg;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import com.google.common.base.Preconditions;
import java.io.EOFException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class OggPageHeader {
    public int a;
    public long b;
    public int c;
    public int d;
    public int e;
    public final int[] f = new int[255];
    public final ParsableByteArray g = new ParsableByteArray(255);

    public final boolean a(ExtractorInput extractorInput, boolean z) {
        boolean z2;
        boolean z3;
        this.a = 0;
        this.b = 0L;
        this.c = 0;
        this.d = 0;
        this.e = 0;
        ParsableByteArray parsableByteArray = this.g;
        parsableByteArray.J(27);
        try {
            z2 = extractorInput.d(parsableByteArray.a, 0, 27, z);
        } catch (EOFException e) {
            if (z) {
                z2 = false;
            } else {
                throw e;
            }
        }
        if (z2 && parsableByteArray.B() == 1332176723) {
            if (parsableByteArray.z() != 0) {
                if (!z) {
                    throw ParserException.b("unsupported bit stream revision");
                }
            } else {
                this.a = parsableByteArray.z();
                this.b = parsableByteArray.p();
                parsableByteArray.q();
                parsableByteArray.q();
                parsableByteArray.q();
                int z4 = parsableByteArray.z();
                this.c = z4;
                this.d = z4 + 27;
                parsableByteArray.J(z4);
                try {
                    z3 = extractorInput.d(parsableByteArray.a, 0, this.c, z);
                } catch (EOFException e2) {
                    if (z) {
                        z3 = false;
                    } else {
                        throw e2;
                    }
                }
                if (z3) {
                    for (int i = 0; i < this.c; i++) {
                        int z5 = parsableByteArray.z();
                        this.f[i] = z5;
                        this.e += z5;
                    }
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean b(ExtractorInput extractorInput, long j) {
        boolean z;
        boolean z2;
        if (extractorInput.getPosition() == extractorInput.e()) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        ParsableByteArray parsableByteArray = this.g;
        parsableByteArray.J(4);
        while (true) {
            if (j != -1 && extractorInput.getPosition() + 4 >= j) {
                break;
            }
            try {
                z2 = extractorInput.d(parsableByteArray.a, 0, 4, true);
            } catch (EOFException unused) {
                z2 = false;
            }
            if (!z2) {
                break;
            }
            parsableByteArray.M(0);
            if (parsableByteArray.B() == 1332176723) {
                extractorInput.j();
                return true;
            }
            extractorInput.k(1);
        }
        do {
            if (j != -1 && extractorInput.getPosition() >= j) {
                break;
            }
        } while (extractorInput.o() != -1);
        return false;
    }
}
