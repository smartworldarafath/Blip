package androidx.media3.extractor.metadata.flac;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import defpackage.jb;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PictureFrame implements Metadata.Entry {
    public final int a;
    public final String b;
    public final String c;
    public final int d;
    public final int e;
    public final int f;
    public final int g;
    public final byte[] h;

    public PictureFrame(int i, String str, String str2, int i2, int i3, int i4, int i5, byte[] bArr) {
        this.a = i;
        this.b = str;
        this.c = str2;
        this.d = i2;
        this.e = i3;
        this.f = i4;
        this.g = i5;
        this.h = bArr;
    }

    public static PictureFrame d(ParsableByteArray parsableByteArray) {
        int m = parsableByteArray.m();
        String l = MimeTypes.l(parsableByteArray.x(parsableByteArray.m(), StandardCharsets.US_ASCII));
        String x = parsableByteArray.x(parsableByteArray.m(), StandardCharsets.UTF_8);
        int m2 = parsableByteArray.m();
        int m3 = parsableByteArray.m();
        int m4 = parsableByteArray.m();
        int m5 = parsableByteArray.m();
        int m6 = parsableByteArray.m();
        byte[] bArr = new byte[m6];
        parsableByteArray.k(bArr, 0, m6);
        return new PictureFrame(m, l, x, m2, m3, m4, m5, bArr);
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        builder.a(this.a, this.h);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && PictureFrame.class == obj.getClass()) {
                PictureFrame pictureFrame = (PictureFrame) obj;
                if (this.a == pictureFrame.a && this.b.equals(pictureFrame.b) && this.c.equals(pictureFrame.c) && this.d == pictureFrame.d && this.e == pictureFrame.e && this.f == pictureFrame.f && this.g == pictureFrame.g && Arrays.equals(this.h, pictureFrame.h)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.h) + ((((((((jb.c(this.c, jb.c(this.b, (527 + this.a) * 31, 31), 31) + this.d) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31);
    }

    public final String toString() {
        return "Picture: mimeType=" + this.b + ", description=" + this.c;
    }
}
