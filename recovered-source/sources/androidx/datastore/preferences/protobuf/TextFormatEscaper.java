package androidx.datastore.preferences.protobuf;

import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class TextFormatEscaper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.datastore.preferences.protobuf.TextFormatEscaper$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 {
        public final /* synthetic */ ByteString a;

        public AnonymousClass1(ByteString byteString) {
            this.a = byteString;
        }
    }

    public static String a(ByteString byteString) {
        AnonymousClass1 anonymousClass1 = new AnonymousClass1(byteString);
        StringBuilder sb = new StringBuilder(byteString.size());
        int i = 0;
        while (true) {
            ByteString byteString2 = anonymousClass1.a;
            if (i < byteString2.size()) {
                byte b = byteString2.b(i);
                if (b != 34) {
                    if (b != 39) {
                        if (b != 92) {
                            switch (b) {
                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                    sb.append("\\a");
                                    break;
                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                    sb.append("\\b");
                                    break;
                                case KeyModifiers.a /* 9 */:
                                    sb.append("\\t");
                                    break;
                                case KeyModifiers.b /* 10 */:
                                    sb.append("\\n");
                                    break;
                                case 11:
                                    sb.append("\\v");
                                    break;
                                case KeyModifiers.c /* 12 */:
                                    sb.append("\\f");
                                    break;
                                case 13:
                                    sb.append("\\r");
                                    break;
                                default:
                                    if (b >= 32 && b <= 126) {
                                        sb.append((char) b);
                                        break;
                                    } else {
                                        sb.append('\\');
                                        sb.append((char) (((b >>> 6) & 3) + 48));
                                        sb.append((char) (((b >>> 3) & 7) + 48));
                                        sb.append((char) ((b & 7) + 48));
                                        break;
                                    }
                            }
                        } else {
                            sb.append("\\\\");
                        }
                    } else {
                        sb.append("\\'");
                    }
                } else {
                    sb.append("\\\"");
                }
                i++;
            } else {
                return sb.toString();
            }
        }
    }
}
