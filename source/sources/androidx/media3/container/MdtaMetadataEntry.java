package androidx.media3.container;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Metadata;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Joiner;
import com.google.common.base.Preconditions;
import com.google.common.io.BaseEncoding;
import com.google.common.primitives.Ints;
import defpackage.jb;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MdtaMetadataEntry implements Metadata.Entry {
    public final String a;
    public final byte[] b;
    public final int c;
    public final int d;

    public MdtaMetadataEntry(String str, byte[] bArr, int i, int i2) {
        byte b;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -1949883051:
                if (str.equals("com.android.capture.fps")) {
                    c = 0;
                    break;
                }
                break;
            case -269399509:
                if (str.equals("auxiliary.tracks.interleaved")) {
                    c = 1;
                    break;
                }
                break;
            case 1011693540:
                if (str.equals("auxiliary.tracks.length")) {
                    c = 2;
                    break;
                }
                break;
            case 1098277265:
                if (str.equals("auxiliary.tracks.offset")) {
                    c = 3;
                    break;
                }
                break;
            case 2002123038:
                if (str.equals("auxiliary.tracks.map")) {
                    c = 4;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                if (i2 == 23 && bArr.length == 4) {
                    r2 = true;
                }
                Preconditions.e(r2);
                break;
            case 1:
                if (i2 == 75 && bArr.length == 1 && ((b = bArr[0]) == 0 || b == 1)) {
                    r2 = true;
                }
                Preconditions.e(r2);
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                if (i2 == 78 && bArr.length == 8) {
                    r2 = true;
                }
                Preconditions.e(r2);
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                Preconditions.e(i2 == 0);
                break;
        }
        this.a = str;
        this.b = bArr;
        this.c = i;
        this.d = i2;
    }

    public final ArrayList d() {
        Preconditions.m("Metadata is not an auxiliary tracks map", this.a.equals("auxiliary.tracks.map"));
        byte[] bArr = this.b;
        byte b = bArr[1];
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < b; i++) {
            arrayList.add(Integer.valueOf(bArr[i + 2] & 255));
        }
        return arrayList;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MdtaMetadataEntry.class == obj.getClass()) {
            MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) obj;
            if (this.a.equals(mdtaMetadataEntry.a) && Arrays.equals(this.b, mdtaMetadataEntry.b) && this.c == mdtaMetadataEntry.c && this.d == mdtaMetadataEntry.d) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((Arrays.hashCode(this.b) + jb.c(this.a, 527, 31)) * 31) + this.c) * 31) + this.d;
    }

    public final String toString() {
        String sb;
        boolean z;
        boolean z2;
        String str = this.a;
        byte[] bArr = this.b;
        int i = this.d;
        if (i != 0) {
            if (i != 1) {
                if (i != 23) {
                    if (i != 67) {
                        if (i != 75) {
                            if (i == 78) {
                                sb = String.valueOf(new ParsableByteArray(bArr).F());
                            }
                            String str2 = Util.a;
                            sb = BaseEncoding.a.c().a(bArr.length, bArr);
                        } else {
                            sb = String.valueOf(Byte.toUnsignedInt(bArr[0]));
                        }
                    } else {
                        if (bArr.length >= 4) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        Preconditions.b(bArr.length, 4, "array too small: %s < %s", z2);
                        sb = String.valueOf(Ints.c(bArr[0], bArr[1], bArr[2], bArr[3]));
                    }
                } else {
                    if (bArr.length >= 4) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.b(bArr.length, 4, "array too small: %s < %s", z);
                    sb = String.valueOf(Float.intBitsToFloat(Ints.c(bArr[0], bArr[1], bArr[2], bArr[3])));
                }
            } else {
                String str3 = Util.a;
                sb = new String(bArr, StandardCharsets.UTF_8);
            }
        } else {
            if (str.equals("auxiliary.tracks.map")) {
                ArrayList d = d();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("track types = ");
                new Joiner(String.valueOf(',')).a(sb2, d.iterator());
                sb = sb2.toString();
            }
            String str22 = Util.a;
            sb = BaseEncoding.a.c().a(bArr.length, bArr);
        }
        return "mdta: key=" + str + ", value=" + sb;
    }
}
