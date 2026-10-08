package androidx.media3.extractor;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FlacFrameReader {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SampleNumberHolder {
        public long a;
    }

    public static boolean a(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, boolean z, SampleNumberHolder sampleNumberHolder) {
        try {
            long H = parsableByteArray.H();
            if (!z) {
                H *= flacStreamMetadata.b;
            }
            long j = flacStreamMetadata.j;
            if (j != 0 && H > j) {
                return false;
            }
            sampleNumberHolder.a = H;
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a0, code lost:
    
        if (r9 == r21.f) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ab, code lost:
    
        if ((r20.z() * 1000) == r2) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00ba, code lost:
    
        if (r6 == r2) goto L61;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean b(ParsableByteArray parsableByteArray, FlacStreamMetadata flacStreamMetadata, int i, SampleNumberHolder sampleNumberHolder) {
        boolean z;
        boolean z2;
        boolean z3;
        long B = parsableByteArray.B();
        long j = B >>> 16;
        if (j != i) {
            return false;
        }
        if ((j & 1) == 1) {
            z = true;
        } else {
            z = false;
        }
        int i2 = (int) ((B >> 12) & 15);
        int i3 = (int) ((B >> 8) & 15);
        int i4 = (int) ((B >> 4) & 15);
        int i5 = (int) ((B >> 1) & 7);
        if ((B & 1) == 1) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (i4 > 7 ? !(i4 > 10 || flacStreamMetadata.g != 2) : i4 == flacStreamMetadata.g - 1) {
            if ((i5 == 0 || i5 == flacStreamMetadata.i) && !z2 && a(parsableByteArray, flacStreamMetadata, z, sampleNumberHolder)) {
                long j2 = sampleNumberHolder.a;
                int c = c(i2, parsableByteArray);
                long j3 = flacStreamMetadata.j;
                if (j3 != 0 && j2 + c < j3) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (c != -1 && ((z3 || c >= flacStreamMetadata.a) && c <= flacStreamMetadata.b)) {
                    int i6 = flacStreamMetadata.e;
                    if (i3 != 0) {
                        if (i3 > 11) {
                            if (i3 != 12) {
                                if (i3 <= 14) {
                                    int G = parsableByteArray.G();
                                    if (i3 == 14) {
                                        G *= 10;
                                    }
                                }
                            }
                        }
                    }
                    int z4 = parsableByteArray.z();
                    int i7 = parsableByteArray.b;
                    byte[] bArr = parsableByteArray.a;
                    int i8 = i7 - 1;
                    int i9 = 0;
                    for (int i10 = parsableByteArray.b; i10 < i8; i10++) {
                        i9 = Util.i[i9 ^ (bArr[i10] & 255)];
                    }
                    String str = Util.a;
                    if (z4 == i9) {
                        if (parsableByteArray.a() != 0) {
                            int j4 = parsableByteArray.j();
                            if ((j4 & 128) == 0) {
                                int i11 = (j4 & 126) >> 1;
                                if ((i11 >= 2 && i11 <= 7) || (i11 >= 13 && i11 <= 31)) {
                                    Log.e("FlacFrameReader", "Ignoring frame where first subframe has a reserved type: " + i11);
                                }
                            }
                        }
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static int c(int i, ParsableByteArray parsableByteArray) {
        switch (i) {
            case 1:
                return 192;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return 576 << (i - 2);
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return parsableByteArray.z() + 1;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return parsableByteArray.G() + 1;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case KeyModifiers.a /* 9 */:
            case KeyModifiers.b /* 10 */:
            case 11:
            case KeyModifiers.c /* 12 */:
            case 13:
            case 14:
            case 15:
                return 256 << (i - 8);
            default:
                return -1;
        }
    }
}
