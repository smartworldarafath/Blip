package androidx.media3.container;

import androidx.media3.common.util.ParsableByteArray;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DolbyVisionConfig {
    public final String a;

    public DolbyVisionConfig(String str) {
        this.a = str;
    }

    public static DolbyVisionConfig a(ParsableByteArray parsableByteArray) {
        String str;
        String str2;
        parsableByteArray.N(2);
        int z = parsableByteArray.z();
        int i = z >> 1;
        int z2 = ((parsableByteArray.z() >> 3) & 31) | ((z & 1) << 5);
        if (i != 4 && i != 5 && i != 7 && i != 8) {
            if (i == 9) {
                str = "dvav";
            } else if (i == 10) {
                str = "dav1";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        String str3 = ".";
        if (i >= 10) {
            str2 = ".";
        } else {
            str2 = ".0";
        }
        sb.append(str2);
        sb.append(i);
        if (z2 < 10) {
            str3 = ".0";
        }
        sb.append(str3);
        sb.append(z2);
        return new DolbyVisionConfig(sb.toString());
    }
}
