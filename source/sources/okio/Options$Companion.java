package okio;

import defpackage.u2;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Options$Companion {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [okio.Buffer, okio.Source, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v9, types: [okio.Buffer, okio.Source, java.lang.Object] */
    public static void a(long j, Buffer buffer, int i, ArrayList arrayList, int i2, int i3, ArrayList arrayList2) {
        int i4;
        int i5;
        ArrayList arrayList3;
        long j2;
        int i6;
        int i7 = i;
        ArrayList arrayList4 = arrayList;
        ArrayList arrayList5 = arrayList2;
        if (i2 < i3) {
            for (int i8 = i2; i8 < i3; i8++) {
                if (((ByteString) arrayList4.get(i8)).e() < i7) {
                    u2.g("Failed requirement.");
                    return;
                }
            }
            ByteString byteString = (ByteString) arrayList.get(i2);
            ByteString byteString2 = (ByteString) arrayList4.get(i3 - 1);
            if (i7 == byteString.e()) {
                int intValue = ((Number) arrayList5.get(i2)).intValue();
                int i9 = i2 + 1;
                ByteString byteString3 = (ByteString) arrayList4.get(i9);
                i4 = i9;
                i5 = intValue;
                byteString = byteString3;
            } else {
                i4 = i2;
                i5 = -1;
            }
            if (byteString.j(i7) != byteString2.j(i7)) {
                int i10 = 1;
                for (int i11 = i4 + 1; i11 < i3; i11++) {
                    if (((ByteString) arrayList4.get(i11 - 1)).j(i7) != ((ByteString) arrayList4.get(i11)).j(i7)) {
                        i10++;
                    }
                }
                long j3 = (buffer.k / 4) + j + 2 + (i10 * 2);
                buffer.v0(i10);
                buffer.v0(i5);
                for (int i12 = i4; i12 < i3; i12++) {
                    byte j4 = ((ByteString) arrayList4.get(i12)).j(i7);
                    if (i12 == i4 || j4 != ((ByteString) arrayList4.get(i12 - 1)).j(i7)) {
                        buffer.v0(j4 & 255);
                    }
                }
                ?? obj = new Object();
                int i13 = i4;
                while (i13 < i3) {
                    byte j5 = ((ByteString) arrayList4.get(i13)).j(i7);
                    int i14 = i13 + 1;
                    int i15 = i14;
                    while (true) {
                        if (i15 < i3) {
                            if (j5 != ((ByteString) arrayList4.get(i15)).j(i7)) {
                                break;
                            } else {
                                i15++;
                            }
                        } else {
                            i15 = i3;
                            break;
                        }
                    }
                    if (i14 == i15 && i7 + 1 == ((ByteString) arrayList4.get(i13)).e()) {
                        buffer.v0(((Number) arrayList5.get(i13)).intValue());
                        arrayList3 = arrayList5;
                        j2 = j3;
                        i6 = i15;
                    } else {
                        buffer.v0(((int) ((obj.k / 4) + j3)) * (-1));
                        arrayList3 = arrayList5;
                        j2 = j3;
                        i6 = i15;
                        a(j2, obj, i7 + 1, arrayList, i13, i6, arrayList3);
                        arrayList4 = arrayList;
                    }
                    j3 = j2;
                    i13 = i6;
                    arrayList5 = arrayList3;
                }
                buffer.a0(obj);
                return;
            }
            int min = Math.min(byteString.e(), byteString2.e());
            int i16 = 0;
            for (int i17 = i7; i17 < min && byteString.j(i17) == byteString2.j(i17); i17++) {
                i16++;
            }
            long j6 = (buffer.k / 4) + j + 2 + i16 + 1;
            buffer.v0(-i16);
            buffer.v0(i5);
            int i18 = i7 + i16;
            while (i7 < i18) {
                buffer.v0(byteString.j(i7) & 255);
                i7++;
            }
            if (i4 + 1 == i3) {
                if (i18 == ((ByteString) arrayList4.get(i4)).e()) {
                    buffer.v0(((Number) arrayList5.get(i4)).intValue());
                    return;
                } else {
                    u2.l("Check failed.");
                    return;
                }
            }
            ?? obj2 = new Object();
            buffer.v0(((int) ((obj2.k / 4) + j6)) * (-1));
            a(j6, obj2, i18, arrayList4, i4, i3, arrayList5);
            buffer.a0(obj2);
            return;
        }
        u2.g("Failed requirement.");
    }
}
