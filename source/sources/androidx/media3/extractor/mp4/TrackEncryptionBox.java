package androidx.media3.extractor.mp4;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.util.Log;
import androidx.media3.extractor.TrackOutput;
import com.google.common.base.Preconditions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrackEncryptionBox {
    public final boolean a;
    public final String b;
    public final TrackOutput.CryptoData c;
    public final int d;
    public final byte[] e;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0052, code lost:
    
        if (r6.equals("cbc1") == false) goto L14;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TrackEncryptionBox(boolean z, String str, int i, byte[] bArr, int i2, int i3, byte[] bArr2) {
        boolean z2;
        boolean z3;
        char c = 0;
        int i4 = 1;
        if (i == 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (bArr2 == null) {
            z3 = true;
        } else {
            z3 = false;
        }
        Preconditions.e(z2 ^ z3);
        this.a = z;
        this.b = str;
        this.d = i;
        this.e = bArr2;
        if (str != null) {
            switch (str.hashCode()) {
                case 3046605:
                    break;
                case 3046671:
                    if (str.equals("cbcs")) {
                        c = 1;
                        break;
                    }
                    c = 65535;
                    break;
                case 3049879:
                    if (str.equals("cenc")) {
                        c = 2;
                        break;
                    }
                    c = 65535;
                    break;
                case 3049895:
                    if (str.equals("cens")) {
                        c = 3;
                        break;
                    }
                    c = 65535;
                    break;
                default:
                    c = 65535;
                    break;
            }
            switch (c) {
                case 0:
                case 1:
                    i4 = 2;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    break;
                default:
                    Log.f("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                    break;
            }
        }
        this.c = new TrackOutput.CryptoData(i4, i2, i3, bArr);
    }
}
