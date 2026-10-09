package androidx.profileinstaller;

import defpackage.q;
import defpackage.u2;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FileInputStream;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class ProfileTranscoder {
    public static final byte[] a = {112, 114, 111, 0};
    public static final byte[] b = {112, 114, 109, 0};

    public static byte[] a(DexProfileData[] dexProfileDataArr, byte[] bArr) {
        int i = 0;
        int i2 = 0;
        for (DexProfileData dexProfileData : dexProfileDataArr) {
            i2 += ((((dexProfileData.g * 2) + 7) & (-8)) / 8) + (dexProfileData.e * 2) + b(dexProfileData.a, dexProfileData.b, bArr).getBytes(StandardCharsets.UTF_8).length + 16 + dexProfileData.f;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(i2);
        if (Arrays.equals(bArr, ProfileVersion.c)) {
            int length = dexProfileDataArr.length;
            while (i < length) {
                DexProfileData dexProfileData2 = dexProfileDataArr[i];
                k(byteArrayOutputStream, dexProfileData2, b(dexProfileData2.a, dexProfileData2.b, bArr));
                j(byteArrayOutputStream, dexProfileData2);
                i++;
            }
        } else {
            for (DexProfileData dexProfileData3 : dexProfileDataArr) {
                k(byteArrayOutputStream, dexProfileData3, b(dexProfileData3.a, dexProfileData3.b, bArr));
            }
            int length2 = dexProfileDataArr.length;
            while (i < length2) {
                j(byteArrayOutputStream, dexProfileDataArr[i]);
                i++;
            }
        }
        if (byteArrayOutputStream.size() == i2) {
            return byteArrayOutputStream.toByteArray();
        }
        throw new IllegalStateException("The bytes saved do not match expectation. actual=" + byteArrayOutputStream.size() + " expected=" + i2);
    }

    public static String b(String str, String str2, byte[] bArr) {
        Object obj;
        byte[] bArr2 = ProfileVersion.e;
        boolean equals = Arrays.equals(bArr, bArr2);
        byte[] bArr3 = ProfileVersion.d;
        String str3 = "!";
        if (!equals && !Arrays.equals(bArr, bArr3)) {
            obj = "!";
        } else {
            obj = ":";
        }
        if (str.length() <= 0) {
            if ("!".equals(obj)) {
                return str2.replace(":", "!");
            }
            if (":".equals(obj)) {
                return str2.replace("!", ":");
            }
        } else {
            if (str2.equals("classes.dex")) {
                return str;
            }
            if (!str2.contains("!") && !str2.contains(":")) {
                if (!str2.endsWith(".apk")) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(str);
                    if (Arrays.equals(bArr, bArr2) || Arrays.equals(bArr, bArr3)) {
                        str3 = ":";
                    }
                    return q.l(sb, str3, str2);
                }
            } else {
                if ("!".equals(obj)) {
                    return str2.replace(":", "!");
                }
                if (":".equals(obj)) {
                    return str2.replace("!", ":");
                }
            }
        }
        return str2;
    }

    public static int[] c(ByteArrayInputStream byteArrayInputStream, int i) {
        int[] iArr = new int[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += (int) Encoding.d(byteArrayInputStream, 2);
            iArr[i3] = i2;
        }
        return iArr;
    }

    public static DexProfileData[] d(FileInputStream fileInputStream, byte[] bArr, byte[] bArr2, DexProfileData[] dexProfileDataArr) {
        byte[] bArr3 = ProfileVersion.f;
        if (Arrays.equals(bArr, bArr3)) {
            if (!Arrays.equals(ProfileVersion.a, bArr2)) {
                if (Arrays.equals(bArr, bArr3)) {
                    int d = (int) Encoding.d(fileInputStream, 1);
                    byte[] c = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
                    if (fileInputStream.read() <= 0) {
                        ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(c);
                        try {
                            DexProfileData[] e = e(byteArrayInputStream, d, dexProfileDataArr);
                            byteArrayInputStream.close();
                            return e;
                        } catch (Throwable th) {
                            try {
                                byteArrayInputStream.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                    u2.l("Content found after the end of file");
                    return null;
                }
                u2.l("Unsupported meta version");
                return null;
            }
            u2.l("Requires new Baseline Profile Metadata. Please rebuild the APK with Android Gradle Plugin 7.2 Canary 7 or higher");
            return null;
        }
        if (Arrays.equals(bArr, ProfileVersion.g)) {
            int d2 = (int) Encoding.d(fileInputStream, 2);
            byte[] c2 = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
            if (fileInputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream2 = new ByteArrayInputStream(c2);
                try {
                    DexProfileData[] f = f(byteArrayInputStream2, bArr2, d2, dexProfileDataArr);
                    byteArrayInputStream2.close();
                    return f;
                } catch (Throwable th3) {
                    try {
                        byteArrayInputStream2.close();
                    } catch (Throwable th4) {
                        th3.addSuppressed(th4);
                    }
                    throw th3;
                }
            }
            u2.l("Content found after the end of file");
            return null;
        }
        u2.l("Unsupported meta version");
        return null;
    }

    public static DexProfileData[] e(ByteArrayInputStream byteArrayInputStream, int i, DexProfileData[] dexProfileDataArr) {
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i == dexProfileDataArr.length) {
            String[] strArr = new String[i];
            int[] iArr = new int[i];
            for (int i2 = 0; i2 < i; i2++) {
                int d = (int) Encoding.d(byteArrayInputStream, 2);
                iArr[i2] = (int) Encoding.d(byteArrayInputStream, 2);
                strArr[i2] = new String(Encoding.b(byteArrayInputStream, d), StandardCharsets.UTF_8);
            }
            for (int i3 = 0; i3 < i; i3++) {
                DexProfileData dexProfileData = dexProfileDataArr[i3];
                if (dexProfileData.b.equals(strArr[i3])) {
                    int i4 = iArr[i3];
                    dexProfileData.e = i4;
                    dexProfileData.h = c(byteArrayInputStream, i4);
                } else {
                    u2.l("Order of dexfiles in metadata did not match baseline");
                    return null;
                }
            }
            return dexProfileDataArr;
        }
        u2.l("Mismatched number of dex files found in metadata");
        return null;
    }

    public static DexProfileData[] f(ByteArrayInputStream byteArrayInputStream, byte[] bArr, int i, DexProfileData[] dexProfileDataArr) {
        String str;
        DexProfileData dexProfileData;
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        if (i == dexProfileDataArr.length) {
            for (int i2 = 0; i2 < i; i2++) {
                Encoding.d(byteArrayInputStream, 2);
                String str2 = new String(Encoding.b(byteArrayInputStream, (int) Encoding.d(byteArrayInputStream, 2)), StandardCharsets.UTF_8);
                long d = Encoding.d(byteArrayInputStream, 4);
                int d2 = (int) Encoding.d(byteArrayInputStream, 2);
                if (dexProfileDataArr.length > 0) {
                    int indexOf = str2.indexOf("!");
                    if (indexOf < 0) {
                        indexOf = str2.indexOf(":");
                    }
                    if (indexOf > 0) {
                        str = str2.substring(indexOf + 1);
                    } else {
                        str = str2;
                    }
                    for (int i3 = 0; i3 < dexProfileDataArr.length; i3++) {
                        if (dexProfileDataArr[i3].b.equals(str)) {
                            dexProfileData = dexProfileDataArr[i3];
                            break;
                        }
                    }
                }
                dexProfileData = null;
                if (dexProfileData != null) {
                    dexProfileData.d = d;
                    int[] c = c(byteArrayInputStream, d2);
                    if (Arrays.equals(bArr, ProfileVersion.e)) {
                        dexProfileData.e = d2;
                        dexProfileData.h = c;
                    }
                } else {
                    u2.l("Missing profile key: ".concat(str2));
                    return null;
                }
            }
            return dexProfileDataArr;
        }
        u2.l("Mismatched number of dex files found in metadata");
        return null;
    }

    public static DexProfileData[] g(FileInputStream fileInputStream, byte[] bArr, String str) {
        if (Arrays.equals(bArr, ProfileVersion.b)) {
            int d = (int) Encoding.d(fileInputStream, 1);
            byte[] c = Encoding.c(fileInputStream, (int) Encoding.d(fileInputStream, 4), (int) Encoding.d(fileInputStream, 4));
            if (fileInputStream.read() <= 0) {
                ByteArrayInputStream byteArrayInputStream = new ByteArrayInputStream(c);
                try {
                    DexProfileData[] h = h(byteArrayInputStream, str, d);
                    byteArrayInputStream.close();
                    return h;
                } catch (Throwable th) {
                    try {
                        byteArrayInputStream.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                    throw th;
                }
            }
            u2.l("Content found after the end of file");
            return null;
        }
        u2.l("Unsupported version");
        return null;
    }

    public static DexProfileData[] h(ByteArrayInputStream byteArrayInputStream, String str, int i) {
        int i2;
        int i3 = 0;
        if (byteArrayInputStream.available() == 0) {
            return new DexProfileData[0];
        }
        DexProfileData[] dexProfileDataArr = new DexProfileData[i];
        for (int i4 = 0; i4 < i; i4++) {
            int d = (int) Encoding.d(byteArrayInputStream, 2);
            int d2 = (int) Encoding.d(byteArrayInputStream, 2);
            dexProfileDataArr[i4] = new DexProfileData(str, new String(Encoding.b(byteArrayInputStream, d), StandardCharsets.UTF_8), Encoding.d(byteArrayInputStream, 4), d2, (int) Encoding.d(byteArrayInputStream, 4), (int) Encoding.d(byteArrayInputStream, 4), new int[d2], new TreeMap());
        }
        int i5 = 0;
        while (i5 < i) {
            DexProfileData dexProfileData = dexProfileDataArr[i5];
            int available = byteArrayInputStream.available();
            int i6 = dexProfileData.f;
            int i7 = dexProfileData.g;
            TreeMap treeMap = dexProfileData.i;
            int i8 = available - i6;
            int i9 = i3;
            while (byteArrayInputStream.available() > i8) {
                i9 += (int) Encoding.d(byteArrayInputStream, 2);
                treeMap.put(Integer.valueOf(i9), 1);
                int d3 = (int) Encoding.d(byteArrayInputStream, 2);
                while (d3 > 0) {
                    Encoding.d(byteArrayInputStream, 2);
                    int d4 = (int) Encoding.d(byteArrayInputStream, 1);
                    if (d4 != 6 && d4 != 7) {
                        while (d4 > 0) {
                            Encoding.d(byteArrayInputStream, 1);
                            int i10 = i3;
                            int i11 = i5;
                            for (int d5 = (int) Encoding.d(byteArrayInputStream, 1); d5 > 0; d5--) {
                                Encoding.d(byteArrayInputStream, 2);
                            }
                            d4--;
                            i3 = i10;
                            i5 = i11;
                        }
                    }
                    d3--;
                    i3 = i3;
                    i5 = i5;
                }
            }
            int i12 = i3;
            int i13 = i5;
            if (byteArrayInputStream.available() == i8) {
                dexProfileData.h = c(byteArrayInputStream, dexProfileData.e);
                BitSet valueOf = BitSet.valueOf(Encoding.b(byteArrayInputStream, (((i7 * 2) + 7) & (-8)) / 8));
                for (int i14 = i12; i14 < i7; i14++) {
                    if (valueOf.get(i14)) {
                        i2 = 2;
                    } else {
                        i2 = i12;
                    }
                    if (valueOf.get(i14 + i7)) {
                        i2 |= 4;
                    }
                    if (i2 != 0) {
                        Integer num = (Integer) treeMap.get(Integer.valueOf(i14));
                        if (num == null) {
                            num = Integer.valueOf(i12);
                        }
                        treeMap.put(Integer.valueOf(i14), Integer.valueOf(i2 | num.intValue()));
                    }
                }
                i5 = i13 + 1;
                i3 = i12;
            } else {
                u2.l("Read too much data during profile line parse");
                return null;
            }
        }
        return dexProfileDataArr;
    }

    /* JADX WARN: Finally extract failed */
    public static boolean i(ByteArrayOutputStream byteArrayOutputStream, byte[] bArr, DexProfileData[] dexProfileDataArr) {
        ArrayList arrayList;
        int length;
        byte[] bArr2 = ProfileVersion.a;
        int i = 0;
        if (Arrays.equals(bArr, bArr2)) {
            ArrayList arrayList2 = new ArrayList(3);
            ArrayList arrayList3 = new ArrayList(3);
            ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
            try {
                Encoding.f(byteArrayOutputStream2, dexProfileDataArr.length);
                int i2 = 2;
                int i3 = 2;
                for (DexProfileData dexProfileData : dexProfileDataArr) {
                    Encoding.e(byteArrayOutputStream2, dexProfileData.c, 4);
                    Encoding.e(byteArrayOutputStream2, dexProfileData.d, 4);
                    Encoding.e(byteArrayOutputStream2, dexProfileData.g, 4);
                    String b2 = b(dexProfileData.a, dexProfileData.b, bArr2);
                    Charset charset = StandardCharsets.UTF_8;
                    int length2 = b2.getBytes(charset).length;
                    Encoding.f(byteArrayOutputStream2, length2);
                    i3 = i3 + 14 + length2;
                    byteArrayOutputStream2.write(b2.getBytes(charset));
                }
                byte[] byteArray = byteArrayOutputStream2.toByteArray();
                if (i3 == byteArray.length) {
                    WritableFileSection writableFileSection = new WritableFileSection(FileSectionType.k, byteArray, false);
                    byteArrayOutputStream2.close();
                    arrayList2.add(writableFileSection);
                    ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                    int i4 = 0;
                    for (int i5 = 0; i5 < dexProfileDataArr.length; i5++) {
                        try {
                            DexProfileData dexProfileData2 = dexProfileDataArr[i5];
                            Encoding.f(byteArrayOutputStream3, i5);
                            Encoding.f(byteArrayOutputStream3, dexProfileData2.e);
                            i4 = i4 + 4 + (dexProfileData2.e * i2);
                            int[] iArr = dexProfileData2.h;
                            int length3 = iArr.length;
                            int i6 = 0;
                            int i7 = 0;
                            while (i6 < length3) {
                                int i8 = iArr[i6];
                                Encoding.f(byteArrayOutputStream3, i8 - i7);
                                i6++;
                                i2 = i2;
                                i7 = i8;
                            }
                        } catch (Throwable th) {
                        }
                    }
                    byte[] byteArray2 = byteArrayOutputStream3.toByteArray();
                    if (i4 == byteArray2.length) {
                        WritableFileSection writableFileSection2 = new WritableFileSection(FileSectionType.l, byteArray2, true);
                        byteArrayOutputStream3.close();
                        arrayList2.add(writableFileSection2);
                        byteArrayOutputStream3 = new ByteArrayOutputStream();
                        int i9 = 0;
                        int i10 = 0;
                        while (i9 < dexProfileDataArr.length) {
                            try {
                                DexProfileData dexProfileData3 = dexProfileDataArr[i9];
                                Iterator it = dexProfileData3.i.entrySet().iterator();
                                int i11 = i;
                                while (it.hasNext()) {
                                    i11 |= ((Integer) ((Map.Entry) it.next()).getValue()).intValue();
                                }
                                ByteArrayOutputStream byteArrayOutputStream4 = new ByteArrayOutputStream();
                                try {
                                    l(byteArrayOutputStream4, i11, dexProfileData3);
                                    byte[] byteArray3 = byteArrayOutputStream4.toByteArray();
                                    byteArrayOutputStream4.close();
                                    byteArrayOutputStream4 = new ByteArrayOutputStream();
                                    try {
                                        m(byteArrayOutputStream4, dexProfileData3);
                                        byte[] byteArray4 = byteArrayOutputStream4.toByteArray();
                                        byteArrayOutputStream4.close();
                                        Encoding.f(byteArrayOutputStream3, i9);
                                        int length4 = byteArray3.length + 2 + byteArray4.length;
                                        int i12 = i10 + 6;
                                        ArrayList arrayList4 = arrayList3;
                                        Encoding.e(byteArrayOutputStream3, length4, 4);
                                        Encoding.f(byteArrayOutputStream3, i11);
                                        byteArrayOutputStream3.write(byteArray3);
                                        byteArrayOutputStream3.write(byteArray4);
                                        i10 = i12 + length4;
                                        i9++;
                                        arrayList3 = arrayList4;
                                        i = 0;
                                    } finally {
                                    }
                                } finally {
                                }
                            } finally {
                                try {
                                    byteArrayOutputStream3.close();
                                    throw th;
                                } catch (Throwable th2) {
                                    th.addSuppressed(th2);
                                }
                            }
                        }
                        ArrayList arrayList5 = arrayList3;
                        byte[] byteArray5 = byteArrayOutputStream3.toByteArray();
                        if (i10 == byteArray5.length) {
                            WritableFileSection writableFileSection3 = new WritableFileSection(FileSectionType.m, byteArray5, true);
                            byteArrayOutputStream3.close();
                            arrayList2.add(writableFileSection3);
                            long size = 12 + (arrayList2.size() * 16);
                            Encoding.e(byteArrayOutputStream, arrayList2.size(), 4);
                            int i13 = 0;
                            while (i13 < arrayList2.size()) {
                                WritableFileSection writableFileSection4 = (WritableFileSection) arrayList2.get(i13);
                                FileSectionType fileSectionType = writableFileSection4.a;
                                byte[] bArr3 = writableFileSection4.b;
                                Encoding.e(byteArrayOutputStream, fileSectionType.j, 4);
                                Encoding.e(byteArrayOutputStream, size, 4);
                                if (writableFileSection4.c) {
                                    long length5 = bArr3.length;
                                    byte[] a2 = Encoding.a(bArr3);
                                    arrayList = arrayList5;
                                    arrayList.add(a2);
                                    Encoding.e(byteArrayOutputStream, a2.length, 4);
                                    Encoding.e(byteArrayOutputStream, length5, 4);
                                    length = a2.length;
                                } else {
                                    arrayList = arrayList5;
                                    arrayList.add(bArr3);
                                    Encoding.e(byteArrayOutputStream, bArr3.length, 4);
                                    Encoding.e(byteArrayOutputStream, 0L, 4);
                                    length = bArr3.length;
                                }
                                size += length;
                                i13++;
                                arrayList5 = arrayList;
                            }
                            ArrayList arrayList6 = arrayList5;
                            for (int i14 = 0; i14 < arrayList6.size(); i14++) {
                                byteArrayOutputStream.write((byte[]) arrayList6.get(i14));
                            }
                            return true;
                        }
                        throw new IllegalStateException("Expected size " + i10 + ", does not match actual size " + byteArray5.length);
                    }
                    throw new IllegalStateException("Expected size " + i4 + ", does not match actual size " + byteArray2.length);
                }
                throw new IllegalStateException("Expected size " + i3 + ", does not match actual size " + byteArray.length);
            } catch (Throwable th3) {
                try {
                    byteArrayOutputStream2.close();
                    throw th3;
                } catch (Throwable th4) {
                    th3.addSuppressed(th4);
                    throw th3;
                }
            }
        }
        byte[] bArr4 = ProfileVersion.b;
        if (Arrays.equals(bArr, bArr4)) {
            byte[] a3 = a(dexProfileDataArr, bArr4);
            Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
            Encoding.e(byteArrayOutputStream, a3.length, 4);
            byte[] a4 = Encoding.a(a3);
            Encoding.e(byteArrayOutputStream, a4.length, 4);
            byteArrayOutputStream.write(a4);
            return true;
        }
        byte[] bArr5 = ProfileVersion.d;
        if (Arrays.equals(bArr, bArr5)) {
            Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
            for (DexProfileData dexProfileData4 : dexProfileDataArr) {
                int size2 = dexProfileData4.i.size() * 4;
                String b3 = b(dexProfileData4.a, dexProfileData4.b, bArr5);
                Charset charset2 = StandardCharsets.UTF_8;
                Encoding.f(byteArrayOutputStream, b3.getBytes(charset2).length);
                Encoding.f(byteArrayOutputStream, dexProfileData4.h.length);
                Encoding.e(byteArrayOutputStream, size2, 4);
                Encoding.e(byteArrayOutputStream, dexProfileData4.c, 4);
                byteArrayOutputStream.write(b3.getBytes(charset2));
                Iterator it2 = dexProfileData4.i.keySet().iterator();
                while (it2.hasNext()) {
                    Encoding.f(byteArrayOutputStream, ((Integer) it2.next()).intValue());
                    Encoding.f(byteArrayOutputStream, 0);
                }
                for (int i15 : dexProfileData4.h) {
                    Encoding.f(byteArrayOutputStream, i15);
                }
            }
            return true;
        }
        byte[] bArr6 = ProfileVersion.c;
        if (Arrays.equals(bArr, bArr6)) {
            byte[] a5 = a(dexProfileDataArr, bArr6);
            Encoding.e(byteArrayOutputStream, dexProfileDataArr.length, 1);
            Encoding.e(byteArrayOutputStream, a5.length, 4);
            byte[] a6 = Encoding.a(a5);
            Encoding.e(byteArrayOutputStream, a6.length, 4);
            byteArrayOutputStream.write(a6);
            return true;
        }
        byte[] bArr7 = ProfileVersion.e;
        if (Arrays.equals(bArr, bArr7)) {
            Encoding.f(byteArrayOutputStream, dexProfileDataArr.length);
            for (DexProfileData dexProfileData5 : dexProfileDataArr) {
                String str = dexProfileData5.a;
                TreeMap treeMap = dexProfileData5.i;
                String b4 = b(str, dexProfileData5.b, bArr7);
                Charset charset3 = StandardCharsets.UTF_8;
                Encoding.f(byteArrayOutputStream, b4.getBytes(charset3).length);
                Encoding.f(byteArrayOutputStream, treeMap.size());
                Encoding.f(byteArrayOutputStream, dexProfileData5.h.length);
                Encoding.e(byteArrayOutputStream, dexProfileData5.c, 4);
                byteArrayOutputStream.write(b4.getBytes(charset3));
                Iterator it3 = treeMap.keySet().iterator();
                while (it3.hasNext()) {
                    Encoding.f(byteArrayOutputStream, ((Integer) it3.next()).intValue());
                }
                for (int i16 : dexProfileData5.h) {
                    Encoding.f(byteArrayOutputStream, i16);
                }
            }
            return true;
        }
        return false;
    }

    public static void j(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData) {
        m(byteArrayOutputStream, dexProfileData);
        int i = dexProfileData.g;
        int[] iArr = dexProfileData.h;
        int length = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = iArr[i2];
            Encoding.f(byteArrayOutputStream, i4 - i3);
            i2++;
            i3 = i4;
        }
        byte[] bArr = new byte[(((i * 2) + 7) & (-8)) / 8];
        for (Map.Entry entry : dexProfileData.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            if ((intValue2 & 2) != 0) {
                int i5 = intValue / 8;
                bArr[i5] = (byte) (bArr[i5] | (1 << (intValue % 8)));
            }
            if ((intValue2 & 4) != 0) {
                int i6 = intValue + i;
                int i7 = i6 / 8;
                bArr[i7] = (byte) ((1 << (i6 % 8)) | bArr[i7]);
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void k(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData, String str) {
        Charset charset = StandardCharsets.UTF_8;
        Encoding.f(byteArrayOutputStream, str.getBytes(charset).length);
        Encoding.f(byteArrayOutputStream, dexProfileData.e);
        Encoding.e(byteArrayOutputStream, dexProfileData.f, 4);
        Encoding.e(byteArrayOutputStream, dexProfileData.c, 4);
        Encoding.e(byteArrayOutputStream, dexProfileData.g, 4);
        byteArrayOutputStream.write(str.getBytes(charset));
    }

    public static void l(ByteArrayOutputStream byteArrayOutputStream, int i, DexProfileData dexProfileData) {
        int i2 = dexProfileData.g;
        byte[] bArr = new byte[(((Integer.bitCount(i & (-2)) * i2) + 7) & (-8)) / 8];
        for (Map.Entry entry : dexProfileData.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            int intValue2 = ((Integer) entry.getValue()).intValue();
            int i3 = 0;
            for (int i4 = 1; i4 <= 4; i4 <<= 1) {
                if (i4 != 1 && (i4 & i) != 0) {
                    if ((i4 & intValue2) == i4) {
                        int i5 = (i3 * i2) + intValue;
                        int i6 = i5 / 8;
                        bArr[i6] = (byte) ((1 << (i5 % 8)) | bArr[i6]);
                    }
                    i3++;
                }
            }
        }
        byteArrayOutputStream.write(bArr);
    }

    public static void m(ByteArrayOutputStream byteArrayOutputStream, DexProfileData dexProfileData) {
        int i = 0;
        for (Map.Entry entry : dexProfileData.i.entrySet()) {
            int intValue = ((Integer) entry.getKey()).intValue();
            if ((((Integer) entry.getValue()).intValue() & 1) != 0) {
                Encoding.f(byteArrayOutputStream, intValue - i);
                Encoding.f(byteArrayOutputStream, 0);
                i = intValue;
            }
        }
    }
}
