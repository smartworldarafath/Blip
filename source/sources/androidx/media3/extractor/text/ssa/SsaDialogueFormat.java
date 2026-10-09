package androidx.media3.extractor.text.ssa;

import android.text.TextUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SsaDialogueFormat {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;

    public SsaDialogueFormat(int i, int i2, int i3, int i4, int i5, int i6) {
        this.a = i;
        this.b = i2;
        this.c = i3;
        this.d = i4;
        this.e = i5;
        this.f = i6;
    }

    public static SsaDialogueFormat a(String str) {
        char c;
        Preconditions.e(str.startsWith("Format:"));
        String[] split = TextUtils.split(str.substring(7), ",");
        int i = -1;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        for (int i6 = 0; i6 < split.length; i6++) {
            String c2 = Ascii.c(split[i6].trim());
            c2.getClass();
            switch (c2.hashCode()) {
                case 100571:
                    if (c2.equals("end")) {
                        c = 0;
                        break;
                    }
                    break;
                case 3556653:
                    if (c2.equals("text")) {
                        c = 1;
                        break;
                    }
                    break;
                case 102749521:
                    if (c2.equals("layer")) {
                        c = 2;
                        break;
                    }
                    break;
                case 109757538:
                    if (c2.equals("start")) {
                        c = 3;
                        break;
                    }
                    break;
                case 109780401:
                    if (c2.equals("style")) {
                        c = 4;
                        break;
                    }
                    break;
            }
            c = 65535;
            switch (c) {
                case 0:
                    i3 = i6;
                    break;
                case 1:
                    i5 = i6;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    i = i6;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    i2 = i6;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    i4 = i6;
                    break;
            }
        }
        if (i2 != -1 && i3 != -1 && i5 != -1) {
            return new SsaDialogueFormat(i, i2, i3, i4, i5, split.length);
        }
        return null;
    }
}
