package androidx.media3.extractor;

import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.metadata.id3.Id3Decoder;
import defpackage.k8;
import java.io.EOFException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Id3Peeker {
    public final ParsableByteArray a = new ParsableByteArray(10);

    public final Metadata a(ExtractorInput extractorInput, Id3Decoder.FramePredicate framePredicate, int i) {
        int i2;
        int i3 = 0;
        Metadata metadata = null;
        loop0: while (true) {
            int i4 = 0;
            do {
                int i5 = i4 % 10;
                int i6 = i5 + 10;
                ParsableByteArray parsableByteArray = this.a;
                if (i5 == 0 && i4 != 0) {
                    byte[] bArr = parsableByteArray.a;
                    System.arraycopy(bArr, 10, bArr, 0, 9);
                }
                if (i4 == 0) {
                    i2 = 10;
                } else {
                    i2 = 1;
                }
                try {
                    extractorInput.n(parsableByteArray.a, i6 - i2, i2);
                    parsableByteArray.M(i5);
                    parsableByteArray.L(i6);
                    if (parsableByteArray.a() >= 3) {
                        int C = parsableByteArray.C();
                        int i7 = parsableByteArray.b - 3;
                        parsableByteArray.b = i7;
                        if (C == 4801587) {
                            parsableByteArray.N(6);
                            int y = parsableByteArray.y();
                            int i8 = y + 10;
                            if (metadata == null) {
                                byte[] bArr2 = new byte[i8];
                                System.arraycopy(parsableByteArray.a, i7, bArr2, 0, 10);
                                extractorInput.n(bArr2, 10, y);
                                metadata = new Id3Decoder(framePredicate).c(i8, bArr2);
                            } else {
                                extractorInput.f(y);
                            }
                            i3 += i8;
                        } else {
                            if (MpegAudioUtil.a(parsableByteArray.i()) != -1) {
                                break loop0;
                            }
                            if (i4 == 0) {
                                parsableByteArray.c(20);
                            }
                            i4++;
                        }
                    } else {
                        k8.g(parsableByteArray.b, parsableByteArray.c);
                        return null;
                    }
                } catch (EOFException unused) {
                }
            } while (i4 <= i);
        }
        extractorInput.j();
        extractorInput.f(i3);
        return metadata;
    }
}
