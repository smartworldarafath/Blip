package androidx.media3.extractor;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.ParserException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ExtractorUtil {
    public static void a(String str, boolean z) {
        if (z) {
        } else {
            throw ParserException.a(null, str);
        }
    }

    public static int b(int i) {
        if (i != 20) {
            if (i != 30) {
                switch (i) {
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        return 80000;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        return 768000;
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                        return 192000;
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        return 2250000;
                    case KeyModifiers.a /* 9 */:
                        return 40000;
                    case KeyModifiers.b /* 10 */:
                        return 100000;
                    case 11:
                        return 16000;
                    case KeyModifiers.c /* 12 */:
                        return 7000;
                    default:
                        switch (i) {
                            case 14:
                                return 3062500;
                            case 15:
                                return 8000;
                            case 16:
                                return 256000;
                            case 17:
                                return 336000;
                            case 18:
                                return 768000;
                            default:
                                return -2147483647;
                        }
                }
            }
            return 2250000;
        }
        return 63750;
    }
}
