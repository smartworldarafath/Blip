package androidx.media3.container;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import java.nio.charset.StandardCharsets;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VorbisUtil {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CommentHeader {
        public final String[] a;

        public CommentHeader(String[] strArr) {
            this.a = strArr;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Mode {
        public final boolean a;

        public Mode(boolean z) {
            this.a = z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VorbisIdHeader {
        public final int a;
        public final int b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final byte[] g;

        public VorbisIdHeader(int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = i4;
            this.e = i5;
            this.f = i6;
            this.g = bArr;
        }
    }

    public static int a(int i) {
        int i2 = 0;
        while (i > 0) {
            i2++;
            i >>>= 1;
        }
        return i2;
    }

    public static CommentHeader b(ParsableByteArray parsableByteArray, boolean z, boolean z2) {
        if (z) {
            c(3, parsableByteArray, false);
        }
        parsableByteArray.x((int) parsableByteArray.q(), StandardCharsets.UTF_8);
        long q = parsableByteArray.q();
        String[] strArr = new String[(int) q];
        for (int i = 0; i < q; i++) {
            strArr[i] = parsableByteArray.x((int) parsableByteArray.q(), StandardCharsets.UTF_8);
        }
        if (z2 && (parsableByteArray.z() & 1) == 0) {
            throw ParserException.a(null, "framing bit expected to be set");
        }
        return new CommentHeader(strArr);
    }

    public static boolean c(int i, ParsableByteArray parsableByteArray, boolean z) {
        if (parsableByteArray.a() < 7) {
            if (!z) {
                throw ParserException.a(null, "too short header: " + parsableByteArray.a());
            }
            return false;
        }
        if (parsableByteArray.z() != i) {
            if (!z) {
                throw ParserException.a(null, "expected header type " + Integer.toHexString(i));
            }
            return false;
        }
        if (parsableByteArray.z() == 118 && parsableByteArray.z() == 111 && parsableByteArray.z() == 114 && parsableByteArray.z() == 98 && parsableByteArray.z() == 105 && parsableByteArray.z() == 115) {
            return true;
        }
        if (z) {
            return false;
        }
        throw ParserException.a(null, "expected characters 'vorbis'");
    }
}
