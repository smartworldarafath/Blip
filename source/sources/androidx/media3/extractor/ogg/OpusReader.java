package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.container.OpusUtil;
import androidx.media3.extractor.VorbisUtil;
import androidx.media3.extractor.ogg.StreamReader;
import com.google.common.collect.ImmutableList;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class OpusReader extends StreamReader {
    public static final byte[] o = {79, 112, 117, 115, 72, 101, 97, 100};
    public static final byte[] p = {79, 112, 117, 115, 84, 97, 103, 115};
    public boolean n;

    public static boolean e(ParsableByteArray parsableByteArray, byte[] bArr) {
        if (parsableByteArray.a() < bArr.length) {
            return false;
        }
        int i = parsableByteArray.b;
        byte[] bArr2 = new byte[bArr.length];
        parsableByteArray.k(bArr2, 0, bArr.length);
        parsableByteArray.M(i);
        return Arrays.equals(bArr2, bArr);
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final long b(ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.a;
        byte b = 0;
        byte b2 = bArr[0];
        if (bArr.length > 1) {
            b = bArr[1];
        }
        return (this.i * OpusUtil.b(b2, b)) / 1000000;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final boolean c(ParsableByteArray parsableByteArray, long j, StreamReader.SetupData setupData) {
        if (e(parsableByteArray, o)) {
            byte[] copyOf = Arrays.copyOf(parsableByteArray.a, parsableByteArray.c);
            int i = copyOf[9] & 255;
            ArrayList a = OpusUtil.a(copyOf);
            if (setupData.a == null) {
                Format.Builder builder = new Format.Builder();
                builder.n = MimeTypes.l("audio/ogg");
                builder.o = MimeTypes.l("audio/opus");
                builder.I = i;
                builder.K = 48000;
                builder.r = a;
                setupData.a = new Format(builder);
                return true;
            }
        } else if (e(parsableByteArray, p)) {
            setupData.a.getClass();
            if (!this.n) {
                this.n = true;
                parsableByteArray.N(8);
                Metadata a2 = VorbisUtil.a(ImmutableList.o(androidx.media3.container.VorbisUtil.b(parsableByteArray, false, false).a));
                if (a2 != null) {
                    Format.Builder a3 = setupData.a.a();
                    a3.l = a2.b(setupData.a.m);
                    setupData.a = new Format(a3);
                    return true;
                }
            }
        } else {
            setupData.a.getClass();
            return false;
        }
        return true;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.n = false;
        }
    }
}
