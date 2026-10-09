package androidx.media3.common.util;

import android.R;
import android.annotation.SuppressLint;
import android.util.Pair;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import com.google.common.base.Preconditions;
import defpackage.q;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public abstract class CodecSpecificDataUtil {
    public static final byte[] a = {0, 0, 0, 1};
    public static final String[] b = {"", "A", "B", "C"};
    public static final Pattern c = Pattern.compile("^\\D?(\\d+)$");

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaCodecProfileAndLevel {
        public static final MediaCodecProfileAndLevel d = new MediaCodecProfileAndLevel(0, 0, false);
        public final int a;
        public final int b;
        public final boolean c;

        public MediaCodecProfileAndLevel(int i, int i2, boolean z) {
            this.c = z;
            this.a = i;
            this.b = i2;
        }
    }

    public static String a(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        char c2;
        String str = b[i];
        Integer valueOf = Integer.valueOf(i2);
        Integer valueOf2 = Integer.valueOf(i3);
        if (z) {
            c2 = 'H';
        } else {
            c2 = 'L';
        }
        Object[] objArr = {str, valueOf, valueOf2, Character.valueOf(c2), Integer.valueOf(i4)};
        String str2 = Util.a;
        StringBuilder sb = new StringBuilder(String.format(Locale.US, "hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i5 = 0; i5 < length; i5++) {
            sb.append(String.format(".%02X", Integer.valueOf(iArr[i5])));
        }
        return sb.toString();
    }

    public static Pair b(Format format) {
        boolean z;
        MediaCodecProfileAndLevel d = d(format);
        if (d != null && (z = d.c)) {
            Preconditions.n(z);
            Integer valueOf = Integer.valueOf(d.a);
            Preconditions.n(z);
            return new Pair(valueOf, Integer.valueOf(d.b));
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x015d, code lost:
    
        if (r13.equals("L60") == false) goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MediaCodecProfileAndLevel c(String str, String[] strArr, ColorInfo colorInfo) {
        int i;
        Integer num = null;
        if (strArr.length < 4) {
            q.y("Ignoring malformed HEVC codec string: ", str, "CodecSpecificDataUtil");
            return null;
        }
        Matcher matcher = c.matcher(strArr[1]);
        if (!matcher.matches()) {
            q.y("Ignoring malformed HEVC codec string: ", str, "CodecSpecificDataUtil");
            return null;
        }
        String group = matcher.group(1);
        boolean equals = "1".equals(group);
        char c2 = 6;
        MediaCodecProfileAndLevel mediaCodecProfileAndLevel = MediaCodecProfileAndLevel.d;
        if (equals) {
            i = 1;
        } else if ("2".equals(group)) {
            if (colorInfo != null && colorInfo.c == 6) {
                i = 4096;
            } else {
                i = 2;
            }
        } else {
            q.y("Unknown HEVC profile string: ", group, "CodecSpecificDataUtil");
            return mediaCodecProfileAndLevel;
        }
        String str2 = strArr[3];
        str2.getClass();
        switch (str2.hashCode()) {
            case 70821:
                if (str2.equals("H30")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 70914:
                if (str2.equals("H60")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 70917:
                if (str2.equals("H63")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 71007:
                if (str2.equals("H90")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 71010:
                if (str2.equals("H93")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 74665:
                if (str2.equals("L30")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 74758:
                break;
            case 74761:
                if (str2.equals("L63")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 74851:
                if (str2.equals("L90")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 74854:
                if (str2.equals("L93")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 2193639:
                if (str2.equals("H120")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 2193642:
                if (str2.equals("H123")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 2193732:
                if (str2.equals("H150")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 2193735:
                if (str2.equals("H153")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 2193738:
                if (str2.equals("H156")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case 2193825:
                if (str2.equals("H180")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case 2193828:
                if (str2.equals("H183")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 2193831:
                if (str2.equals("H186")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case 2312803:
                if (str2.equals("L120")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case 2312806:
                if (str2.equals("L123")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case 2312896:
                if (str2.equals("L150")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 2312899:
                if (str2.equals("L153")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 2312902:
                if (str2.equals("L156")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case 2312989:
                if (str2.equals("L180")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case 2312992:
                if (str2.equals("L183")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case 2312995:
                if (str2.equals("L186")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                num = 2;
                break;
            case 1:
                num = 8;
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                num = 32;
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                num = 128;
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                num = 512;
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                num = 1;
                break;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                num = 4;
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                num = 16;
                break;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                num = 64;
                break;
            case KeyModifiers.a /* 9 */:
                num = 256;
                break;
            case KeyModifiers.b /* 10 */:
                num = 2048;
                break;
            case 11:
                num = 8192;
                break;
            case KeyModifiers.c /* 12 */:
                num = 32768;
                break;
            case '\r':
                num = 131072;
                break;
            case 14:
                num = 524288;
                break;
            case 15:
                num = 2097152;
                break;
            case 16:
                num = 8388608;
                break;
            case 17:
                num = 33554432;
                break;
            case 18:
                num = 1024;
                break;
            case 19:
                num = 4096;
                break;
            case 20:
                num = 16384;
                break;
            case 21:
                num = 65536;
                break;
            case 22:
                num = 262144;
                break;
            case 23:
                num = 1048576;
                break;
            case 24:
                num = 4194304;
                break;
            case 25:
                num = 16777216;
                break;
        }
        if (num == null) {
            Log.f("CodecSpecificDataUtil", "Unknown HEVC level string: ".concat(str2));
            return mediaCodecProfileAndLevel;
        }
        return new MediaCodecProfileAndLevel(i, num.intValue(), true);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:236:0x0435, code lost:
    
        if (r1.equals("H83") == false) goto L230;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x06b9, code lost:
    
        if (r1.equals("mp4a") == false) goto L509;
     */
    /* JADX WARN: Removed duplicated region for block: B:297:0x0585  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x058b  */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0679 A[Catch: NumberFormatException -> 0x0691, TryCatch #2 {NumberFormatException -> 0x0691, blocks: (B:380:0x062c, B:382:0x0640, B:393:0x065e, B:396:0x0679, B:398:0x0689), top: B:379:0x062c }] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0689 A[Catch: NumberFormatException -> 0x0691, TRY_LEAVE, TryCatch #2 {NumberFormatException -> 0x0691, blocks: (B:380:0x062c, B:382:0x0640, B:393:0x065e, B:396:0x0679, B:398:0x0689), top: B:379:0x062c }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MediaCodecProfileAndLevel d(Format format) {
        char c2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int parseInt;
        int parseInt2;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        char c3;
        char c4;
        Integer num;
        char c5;
        Integer num2 = 1024;
        String str = format.l;
        String str2 = format.l;
        if (str == null) {
            return null;
        }
        String[] split = str.split("\\.");
        boolean equals = "video/dolby-vision".equals(format.p);
        MediaCodecProfileAndLevel mediaCodecProfileAndLevel = MediaCodecProfileAndLevel.d;
        char c6 = 3;
        if (equals) {
            if (split.length < 3) {
                q.y("Ignoring malformed Dolby Vision codec string: ", str2, "CodecSpecificDataUtil");
                return null;
            }
            Matcher matcher = c.matcher(split[1]);
            if (!matcher.matches()) {
                q.y("Ignoring malformed Dolby Vision codec string: ", str2, "CodecSpecificDataUtil");
                return null;
            }
            String group = matcher.group(1);
            group.getClass();
            switch (group.hashCode()) {
                case 1536:
                    if (group.equals("00")) {
                        c4 = 0;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1537:
                    if (group.equals("01")) {
                        c4 = 1;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1538:
                    if (group.equals("02")) {
                        c4 = 2;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1539:
                    if (group.equals("03")) {
                        c4 = 3;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1540:
                    if (group.equals("04")) {
                        c4 = 4;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1541:
                    if (group.equals("05")) {
                        c4 = 5;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1542:
                    if (group.equals("06")) {
                        c4 = 6;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1543:
                    if (group.equals("07")) {
                        c4 = 7;
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1544:
                    if (group.equals("08")) {
                        c4 = '\b';
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1545:
                    if (group.equals("09")) {
                        c4 = '\t';
                        break;
                    }
                    c4 = 65535;
                    break;
                case 1567:
                    if (group.equals("10")) {
                        c4 = '\n';
                        break;
                    }
                    c4 = 65535;
                    break;
                default:
                    c4 = 65535;
                    break;
            }
            switch (c4) {
                case 0:
                    num = 1;
                    break;
                case 1:
                    num = 2;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    num = 4;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    num = 8;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    num = 16;
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    num = 32;
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    num = 64;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    num = 128;
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    num = 256;
                    break;
                case KeyModifiers.a /* 9 */:
                    num = 512;
                    break;
                case KeyModifiers.b /* 10 */:
                    num = num2;
                    break;
                default:
                    num = null;
                    break;
            }
            if (num == null) {
                Log.f("CodecSpecificDataUtil", "Unknown Dolby Vision profile string: ".concat(group));
                return mediaCodecProfileAndLevel;
            }
            String str3 = split[2];
            str3.getClass();
            switch (str3.hashCode()) {
                case 1537:
                    if (str3.equals("01")) {
                        c5 = 0;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1538:
                    if (str3.equals("02")) {
                        c5 = 1;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1539:
                    if (str3.equals("03")) {
                        c5 = 2;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1540:
                    if (str3.equals("04")) {
                        c5 = 3;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1541:
                    if (str3.equals("05")) {
                        c5 = 4;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1542:
                    if (str3.equals("06")) {
                        c5 = 5;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1543:
                    if (str3.equals("07")) {
                        c5 = 6;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1544:
                    if (str3.equals("08")) {
                        c5 = 7;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1545:
                    if (str3.equals("09")) {
                        c5 = '\b';
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1567:
                    if (str3.equals("10")) {
                        c5 = '\t';
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1568:
                    if (str3.equals("11")) {
                        c5 = '\n';
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1569:
                    if (str3.equals("12")) {
                        c5 = 11;
                        break;
                    }
                    c5 = 65535;
                    break;
                case 1570:
                    if (str3.equals("13")) {
                        c5 = '\f';
                        break;
                    }
                    c5 = 65535;
                    break;
                default:
                    c5 = 65535;
                    break;
            }
            switch (c5) {
                case 0:
                    num2 = 1;
                    break;
                case 1:
                    num2 = 2;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    num2 = 4;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    num2 = 8;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    num2 = 16;
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    num2 = 32;
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    num2 = 64;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    num2 = 128;
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    num2 = 256;
                    break;
                case KeyModifiers.a /* 9 */:
                    num2 = 512;
                    break;
                case KeyModifiers.b /* 10 */:
                    break;
                case 11:
                    num2 = 2048;
                    break;
                case KeyModifiers.c /* 12 */:
                    num2 = 4096;
                    break;
                default:
                    num2 = null;
                    break;
            }
            if (num2 == null) {
                Log.f("CodecSpecificDataUtil", "Unknown Dolby Vision level string: ".concat(str3));
                return null;
            }
            return new MediaCodecProfileAndLevel(num.intValue(), num2.intValue(), true);
        }
        String str4 = split[0];
        str4.getClass();
        switch (str4.hashCode()) {
            case 2986313:
                if (str4.equals("ac-4")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 3001066:
                if (str4.equals("apv1")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 3004662:
                if (str4.equals("av01")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 3006243:
                if (str4.equals("avc1")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 3006244:
                if (str4.equals("avc2")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 3199032:
                if (str4.equals("hev1")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 3214780:
                if (str4.equals("hvc1")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 3224753:
                if (str4.equals("iamf")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 3356560:
                if (str4.equals("mp4a")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 3475740:
                if (str4.equals("s263")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case 3624515:
                if (str4.equals("vp09")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 3631854:
                if (str4.equals("vvc1")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 3632040:
                if (str4.equals("vvi1")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                int i18 = 8;
                if (split.length != 4) {
                    q.y("Ignoring malformed AC-4 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    int parseInt3 = Integer.parseInt(split[1]);
                    int parseInt4 = Integer.parseInt(split[2]);
                    int parseInt5 = Integer.parseInt(split[3]);
                    if (parseInt3 != 0) {
                        if (parseInt3 != 1) {
                            if (parseInt3 == 2) {
                                if (parseInt4 == 1) {
                                    i = 1026;
                                } else if (parseInt4 == 2) {
                                    i = 1028;
                                }
                            }
                            i = -1;
                        } else if (parseInt4 == 0) {
                            i = 513;
                        } else {
                            if (parseInt4 == 1) {
                                i = 514;
                            }
                            i = -1;
                        }
                    } else {
                        if (parseInt4 == 0) {
                            i = 257;
                        }
                        i = -1;
                    }
                    if (i == -1) {
                        Log.f("CodecSpecificDataUtil", "Unknown AC-4 profile: " + parseInt3 + "." + parseInt4);
                        return mediaCodecProfileAndLevel;
                    }
                    if (parseInt5 != 0) {
                        if (parseInt5 != 1) {
                            if (parseInt5 != 2) {
                                if (parseInt5 != 3) {
                                    if (parseInt5 != 4) {
                                        i18 = -1;
                                    } else {
                                        i18 = 16;
                                    }
                                }
                            } else {
                                i18 = 4;
                            }
                        } else {
                            i18 = 2;
                        }
                    } else {
                        i18 = 1;
                    }
                    if (i18 == -1) {
                        q.x("Unknown AC-4 level: ", parseInt5, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    return new MediaCodecProfileAndLevel(i, i18, true);
                } catch (NumberFormatException unused) {
                    q.y("Ignoring malformed AC-4 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
            case 1:
                if (split.length < 4) {
                    q.y("Ignoring malformed APV codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    int parseInt6 = Integer.parseInt(split[1].substring(4));
                    int parseInt7 = Integer.parseInt(split[2].substring(4));
                    int parseInt8 = Integer.parseInt(split[3].substring(4));
                    if (parseInt6 == 33) {
                        i2 = 1;
                    } else if (parseInt6 == 44) {
                        i2 = 8192;
                    } else {
                        q.x("Unrecognized APV profile: ", parseInt6, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    switch (parseInt7) {
                        case 30:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 264;
                                            break;
                                        }
                                    } else {
                                        i3 = 260;
                                        break;
                                    }
                                } else {
                                    i3 = 258;
                                    break;
                                }
                            } else {
                                i3 = 257;
                                break;
                            }
                        case 33:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 520;
                                            break;
                                        }
                                    } else {
                                        i3 = 516;
                                        break;
                                    }
                                } else {
                                    i3 = 514;
                                    break;
                                }
                            } else {
                                i3 = 513;
                                break;
                            }
                        case 60:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 1032;
                                            break;
                                        }
                                    } else {
                                        i3 = 1028;
                                        break;
                                    }
                                } else {
                                    i3 = 1026;
                                    break;
                                }
                            } else {
                                i3 = 1025;
                                break;
                            }
                        case 63:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 2056;
                                            break;
                                        }
                                    } else {
                                        i3 = 2052;
                                        break;
                                    }
                                } else {
                                    i3 = 2050;
                                    break;
                                }
                            } else {
                                i3 = 2049;
                                break;
                            }
                        case 90:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 4104;
                                            break;
                                        }
                                    } else {
                                        i3 = 4100;
                                        break;
                                    }
                                } else {
                                    i3 = 4098;
                                    break;
                                }
                            } else {
                                i3 = 4097;
                                break;
                            }
                        case 93:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 8200;
                                            break;
                                        }
                                    } else {
                                        i3 = 8196;
                                        break;
                                    }
                                } else {
                                    i3 = 8194;
                                    break;
                                }
                            } else {
                                i3 = 8193;
                                break;
                            }
                        case 120:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 16392;
                                            break;
                                        }
                                    } else {
                                        i3 = 16388;
                                        break;
                                    }
                                } else {
                                    i3 = 16386;
                                    break;
                                }
                            } else {
                                i3 = 16385;
                                break;
                            }
                        case 123:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 32776;
                                            break;
                                        }
                                    } else {
                                        i3 = 32772;
                                        break;
                                    }
                                } else {
                                    i3 = 32770;
                                    break;
                                }
                            } else {
                                i3 = 32769;
                                break;
                            }
                        case 150:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 65544;
                                            break;
                                        }
                                    } else {
                                        i3 = 65540;
                                        break;
                                    }
                                } else {
                                    i3 = 65538;
                                    break;
                                }
                            } else {
                                i3 = 65537;
                                break;
                            }
                        case 153:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 131080;
                                            break;
                                        }
                                    } else {
                                        i3 = 131076;
                                        break;
                                    }
                                } else {
                                    i3 = 131074;
                                    break;
                                }
                            } else {
                                i3 = 131073;
                                break;
                            }
                        case 180:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 262152;
                                            break;
                                        }
                                    } else {
                                        i3 = 262148;
                                        break;
                                    }
                                } else {
                                    i3 = 262146;
                                    break;
                                }
                            } else {
                                i3 = 262145;
                                break;
                            }
                        case 183:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 524296;
                                            break;
                                        }
                                    } else {
                                        i3 = 524292;
                                        break;
                                    }
                                } else {
                                    i3 = 524290;
                                    break;
                                }
                            } else {
                                i3 = 524289;
                                break;
                            }
                        case 210:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 1048584;
                                            break;
                                        }
                                    } else {
                                        i3 = 1048580;
                                        break;
                                    }
                                } else {
                                    i3 = 1048578;
                                    break;
                                }
                            } else {
                                i3 = 1048577;
                                break;
                            }
                        case 213:
                            if (parseInt8 != 0) {
                                if (parseInt8 != 1) {
                                    if (parseInt8 != 2) {
                                        if (parseInt8 != 3) {
                                            q.x("Unrecognized APV band: ", parseInt8, "CodecSpecificDataUtil");
                                            i3 = -1;
                                            break;
                                        } else {
                                            i3 = 2097160;
                                            break;
                                        }
                                    } else {
                                        i3 = 2097156;
                                        break;
                                    }
                                } else {
                                    i3 = 2097154;
                                    break;
                                }
                            } else {
                                i3 = 2097153;
                                break;
                            }
                        default:
                            q.x("Unrecognized APV level index: ", parseInt7, "CodecSpecificDataUtil");
                            i3 = -1;
                            break;
                    }
                    if (i3 == -1) {
                        return mediaCodecProfileAndLevel;
                    }
                    return new MediaCodecProfileAndLevel(i2, i3, true);
                } catch (NumberFormatException e) {
                    Log.g("CodecSpecificDataUtil", "Ignoring malformed APV codec string: " + str2, e);
                    return null;
                }
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                ColorInfo colorInfo = format.H;
                if (split.length < 4) {
                    q.y("Ignoring malformed AV1 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    int parseInt9 = Integer.parseInt(split[1]);
                    int parseInt10 = Integer.parseInt(split[2].substring(0, 2));
                    int parseInt11 = Integer.parseInt(split[3]);
                    if (parseInt9 != 0) {
                        q.x("Unknown AV1 profile: ", parseInt9, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    int i19 = 8;
                    if (parseInt11 != 8 && parseInt11 != 10) {
                        q.x("Unknown AV1 bit depth: ", parseInt11, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    if (parseInt11 == 8) {
                        i4 = 1;
                    } else if (colorInfo != null && (colorInfo.d != null || (i5 = colorInfo.c) == 7 || i5 == 6)) {
                        i4 = 4096;
                    } else {
                        i4 = 2;
                    }
                    switch (parseInt10) {
                        case 0:
                            i19 = 1;
                            break;
                        case 1:
                            i19 = 2;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            i19 = 4;
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            break;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            i19 = 16;
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            i19 = 32;
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            i19 = 64;
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            i19 = 128;
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            i19 = 256;
                            break;
                        case KeyModifiers.a /* 9 */:
                            i19 = 512;
                            break;
                        case KeyModifiers.b /* 10 */:
                            i19 = 1024;
                            break;
                        case 11:
                            i19 = 2048;
                            break;
                        case KeyModifiers.c /* 12 */:
                            i19 = 4096;
                            break;
                        case 13:
                            i19 = 8192;
                            break;
                        case 14:
                            i19 = 16384;
                            break;
                        case 15:
                            i19 = 32768;
                            break;
                        case 16:
                            i19 = 65536;
                            break;
                        case 17:
                            i19 = 131072;
                            break;
                        case 18:
                            i19 = 262144;
                            break;
                        case 19:
                            i19 = 524288;
                            break;
                        case 20:
                            i19 = 1048576;
                            break;
                        case 21:
                            i19 = 2097152;
                            break;
                        case 22:
                            i19 = 4194304;
                            break;
                        case 23:
                            i19 = 8388608;
                            break;
                        default:
                            i19 = -1;
                            break;
                    }
                    if (i19 == -1) {
                        q.x("Unknown AV1 level: ", parseInt10, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    return new MediaCodecProfileAndLevel(i4, i19, true);
                } catch (NumberFormatException unused2) {
                    q.y("Ignoring malformed AV1 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                if (split.length < 2) {
                    q.y("Ignoring malformed AVC codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    if (split[1].length() == 6) {
                        i6 = 16;
                        parseInt = Integer.parseInt(split[1].substring(0, 2), 16);
                        parseInt2 = Integer.parseInt(split[1].substring(4), 16);
                    } else {
                        i6 = 16;
                        if (split.length >= 3) {
                            parseInt = Integer.parseInt(split[1]);
                            parseInt2 = Integer.parseInt(split[2]);
                        } else {
                            Log.f("CodecSpecificDataUtil", "Ignoring malformed AVC codec string: " + str2);
                            return null;
                        }
                    }
                    if (parseInt != 66) {
                        if (parseInt != 77) {
                            if (parseInt != 88) {
                                if (parseInt != 100) {
                                    if (parseInt != 110) {
                                        if (parseInt != 122) {
                                            if (parseInt != 244) {
                                                i7 = -1;
                                            } else {
                                                i7 = 64;
                                            }
                                        } else {
                                            i7 = 32;
                                        }
                                    } else {
                                        i7 = i6;
                                    }
                                } else {
                                    i7 = 8;
                                }
                            } else {
                                i7 = 4;
                            }
                        } else {
                            i7 = 2;
                        }
                    } else {
                        i7 = 1;
                    }
                    if (i7 == -1) {
                        q.x("Unknown AVC profile: ", parseInt, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    switch (parseInt2) {
                        case KeyModifiers.b /* 10 */:
                            i6 = 1;
                            i8 = -1;
                            break;
                        case 11:
                            i8 = -1;
                            i6 = 4;
                            break;
                        case KeyModifiers.c /* 12 */:
                            i8 = -1;
                            i6 = 8;
                            break;
                        case 13:
                            i8 = -1;
                            break;
                        default:
                            switch (parseInt2) {
                                case 20:
                                    i8 = -1;
                                    i6 = 32;
                                    break;
                                case 21:
                                    i8 = -1;
                                    i6 = 64;
                                    break;
                                case 22:
                                    i8 = -1;
                                    i6 = 128;
                                    break;
                                default:
                                    switch (parseInt2) {
                                        case 30:
                                            i8 = -1;
                                            i6 = 256;
                                            break;
                                        case 31:
                                            i8 = -1;
                                            i6 = 512;
                                            break;
                                        case 32:
                                            i8 = -1;
                                            i6 = 1024;
                                            break;
                                        default:
                                            switch (parseInt2) {
                                                case 40:
                                                    i8 = -1;
                                                    i6 = 2048;
                                                    break;
                                                case 41:
                                                    i8 = -1;
                                                    i6 = 4096;
                                                    break;
                                                case 42:
                                                    i6 = 8192;
                                                    i8 = -1;
                                                    break;
                                                default:
                                                    switch (parseInt2) {
                                                        case 50:
                                                            i6 = 16384;
                                                            i8 = -1;
                                                            break;
                                                        case 51:
                                                            i6 = 32768;
                                                            i8 = -1;
                                                            break;
                                                        case 52:
                                                            i6 = 65536;
                                                            i8 = -1;
                                                            break;
                                                        default:
                                                            i8 = -1;
                                                            i6 = -1;
                                                            break;
                                                    }
                                            }
                                    }
                            }
                    }
                    if (i6 == i8) {
                        q.x("Unknown AVC level: ", parseInt2, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    return new MediaCodecProfileAndLevel(i7, i6, true);
                } catch (NumberFormatException unused3) {
                    q.y("Ignoring malformed AVC codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return c(str2, split, format.H);
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                if (split.length < 4) {
                    q.y("Ignoring malformed IAMF codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    int parseInt12 = Integer.parseInt(split[1]);
                    String str5 = split[3];
                    str5.getClass();
                    switch (str5.hashCode()) {
                        case 2464863:
                            if (str5.equals("Opus")) {
                                c6 = 0;
                                break;
                            }
                            c6 = 65535;
                            break;
                        case 3114792:
                            if (str5.equals("fLaC")) {
                                c6 = 1;
                                break;
                            }
                            c6 = 65535;
                            break;
                        case 3238865:
                            if (str5.equals("ipcm")) {
                                c6 = 2;
                                break;
                            }
                            c6 = 65535;
                            break;
                        case 3356560:
                            break;
                        default:
                            c6 = 65535;
                            break;
                    }
                    switch (c6) {
                        case 0:
                            if (parseInt12 != 0) {
                                if (parseInt12 != 1) {
                                    if (parseInt12 != 2) {
                                        q.x("Unrecognized IAMF Opus profile: ", parseInt12, "CodecSpecificDataUtil");
                                        i9 = -1;
                                        break;
                                    } else {
                                        i9 = R.string.copy;
                                        break;
                                    }
                                } else {
                                    i9 = R.id.checkbox;
                                    break;
                                }
                            } else {
                                i9 = R.attr.label;
                                break;
                            }
                        case 1:
                            if (parseInt12 != 0) {
                                if (parseInt12 != 1) {
                                    if (parseInt12 != 2) {
                                        q.x("Unrecognized IAMF FLAC profile: ", parseInt12, "CodecSpecificDataUtil");
                                        i9 = -1;
                                        break;
                                    } else {
                                        i9 = R.string.defaultVoiceMailAlphaTag;
                                        break;
                                    }
                                } else {
                                    i9 = R.id.empty;
                                    break;
                                }
                            } else {
                                i9 = R.attr.manageSpaceActivity;
                                break;
                            }
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            if (parseInt12 != 0) {
                                if (parseInt12 != 1) {
                                    if (parseInt12 != 2) {
                                        q.x("Unrecognized IAMF PCM profile: ", parseInt12, "CodecSpecificDataUtil");
                                        i9 = -1;
                                        break;
                                    } else {
                                        i9 = R.string.httpErrorUnsupportedScheme;
                                        break;
                                    }
                                } else {
                                    i9 = R.id.icon2;
                                    break;
                                }
                            } else {
                                i9 = R.attr.writePermission;
                                break;
                            }
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            if (parseInt12 != 0) {
                                if (parseInt12 != 1) {
                                    if (parseInt12 != 2) {
                                        q.x("Unrecognized IAMF AAC profile: ", parseInt12, "CodecSpecificDataUtil");
                                        i9 = -1;
                                        break;
                                    } else {
                                        i9 = R.string.copyUrl;
                                        break;
                                    }
                                } else {
                                    i9 = R.id.content;
                                    break;
                                }
                            } else {
                                i9 = R.attr.icon;
                                break;
                            }
                        default:
                            Log.f("CodecSpecificDataUtil", "Unrecognized codec identifier for IAMF auxiliary profile: ".concat(str5));
                            i9 = -1;
                            break;
                    }
                    if (i9 == -1) {
                        return mediaCodecProfileAndLevel;
                    }
                    return new MediaCodecProfileAndLevel(i9, 0, true);
                } catch (NumberFormatException e2) {
                    Log.g("CodecSpecificDataUtil", "Ignoring malformed primary profile in IAMF codec string: " + split[1], e2);
                    return null;
                }
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                if (split.length != 3) {
                    q.y("Ignoring malformed MP4A codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    if ("audio/mp4a-latm".equals(MimeTypes.d(Integer.parseInt(split[1], 16)))) {
                        int parseInt13 = Integer.parseInt(split[2]);
                        int i20 = 17;
                        if (parseInt13 != 17) {
                            if (parseInt13 != 20) {
                                i20 = 23;
                                if (parseInt13 != 23) {
                                    i20 = 29;
                                    if (parseInt13 != 29) {
                                        i20 = 39;
                                        if (parseInt13 != 39) {
                                            i20 = 42;
                                            if (parseInt13 != 42) {
                                                switch (parseInt13) {
                                                    case 1:
                                                        i20 = 1;
                                                        break;
                                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                        i10 = -1;
                                                        i20 = 2;
                                                        break;
                                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                        i20 = 3;
                                                        break;
                                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                        i10 = -1;
                                                        i20 = 4;
                                                        break;
                                                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                        i20 = 5;
                                                        break;
                                                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                        i10 = -1;
                                                        i20 = 6;
                                                        break;
                                                    default:
                                                        i10 = -1;
                                                        i20 = -1;
                                                        break;
                                                }
                                                if (i20 != i10) {
                                                    Log.f("CodecSpecificDataUtil", "Unrecognized MP4A profile: " + i20);
                                                    return mediaCodecProfileAndLevel;
                                                }
                                                return new MediaCodecProfileAndLevel(i20, 0, true);
                                            }
                                        }
                                    }
                                }
                            } else {
                                i20 = 20;
                            }
                        }
                        i10 = -1;
                        if (i20 != i10) {
                        }
                    }
                } catch (NumberFormatException unused4) {
                    q.y("Ignoring malformed MP4A codec string: ", str2, "CodecSpecificDataUtil");
                }
                return null;
            case KeyModifiers.a /* 9 */:
                if (split.length < 3) {
                    q.y("Ignoring malformed H263 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    int parseInt14 = Integer.parseInt(split[1]);
                    int parseInt15 = Integer.parseInt(split[2]);
                    switch (parseInt14) {
                        case 0:
                            i11 = 1;
                            break;
                        case 1:
                            i11 = 2;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            i11 = 4;
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            i11 = 8;
                            break;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            i11 = 16;
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            i11 = 32;
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            i11 = 64;
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            i11 = 128;
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            i11 = 256;
                            break;
                        default:
                            i11 = -1;
                            break;
                    }
                    if (i11 == -1) {
                        q.x("Unknown H263 profile: ", parseInt14, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    if (parseInt15 != 10) {
                        if (parseInt15 != 20) {
                            if (parseInt15 != 30) {
                                if (parseInt15 != 40) {
                                    if (parseInt15 != 45) {
                                        if (parseInt15 != 50) {
                                            if (parseInt15 != 60) {
                                                if (parseInt15 != 70) {
                                                    i13 = -1;
                                                    i12 = -1;
                                                } else {
                                                    i13 = -1;
                                                    i12 = 128;
                                                }
                                            } else {
                                                i13 = -1;
                                                i12 = 64;
                                            }
                                        } else {
                                            i13 = -1;
                                            i12 = 32;
                                        }
                                    } else {
                                        i13 = -1;
                                        i12 = 16;
                                    }
                                } else {
                                    i13 = -1;
                                    i12 = 8;
                                }
                            } else {
                                i13 = -1;
                                i12 = 4;
                            }
                        } else {
                            i13 = -1;
                            i12 = 2;
                        }
                    } else {
                        i12 = 1;
                        i13 = -1;
                    }
                    if (i12 == i13) {
                        q.x("Unknown H263 level: ", parseInt15, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    return new MediaCodecProfileAndLevel(i11, i12, true);
                } catch (NumberFormatException unused5) {
                    q.y("Ignoring malformed H263 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
            case KeyModifiers.b /* 10 */:
                if (split.length < 3) {
                    q.y("Ignoring malformed VP9 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    int parseInt16 = Integer.parseInt(split[1]);
                    int parseInt17 = Integer.parseInt(split[2]);
                    if (parseInt16 != 0) {
                        if (parseInt16 != 1) {
                            if (parseInt16 != 2) {
                                if (parseInt16 != 3) {
                                    i14 = -1;
                                } else {
                                    i14 = 8;
                                }
                            } else {
                                i14 = 4;
                            }
                        } else {
                            i14 = 2;
                        }
                    } else {
                        i14 = 1;
                    }
                    if (i14 == -1) {
                        q.x("Unknown VP9 profile: ", parseInt16, "CodecSpecificDataUtil");
                        return mediaCodecProfileAndLevel;
                    }
                    if (parseInt17 != 10) {
                        if (parseInt17 != 11) {
                            if (parseInt17 != 20) {
                                if (parseInt17 != 21) {
                                    if (parseInt17 != 30) {
                                        if (parseInt17 != 31) {
                                            if (parseInt17 != 40) {
                                                if (parseInt17 != 41) {
                                                    if (parseInt17 != 50) {
                                                        if (parseInt17 != 51) {
                                                            switch (parseInt17) {
                                                                case 60:
                                                                    i16 = -1;
                                                                    i15 = 2048;
                                                                    break;
                                                                case 61:
                                                                    i16 = -1;
                                                                    i15 = 4096;
                                                                    break;
                                                                case 62:
                                                                    i15 = 8192;
                                                                    break;
                                                                default:
                                                                    i16 = -1;
                                                                    i15 = -1;
                                                                    break;
                                                            }
                                                        } else {
                                                            i16 = -1;
                                                            i15 = 512;
                                                        }
                                                    } else {
                                                        i16 = -1;
                                                        i15 = 256;
                                                    }
                                                } else {
                                                    i16 = -1;
                                                    i15 = 128;
                                                }
                                            } else {
                                                i16 = -1;
                                                i15 = 64;
                                            }
                                        } else {
                                            i16 = -1;
                                            i15 = 32;
                                        }
                                    } else {
                                        i16 = -1;
                                        i15 = 16;
                                    }
                                } else {
                                    i16 = -1;
                                    i15 = 8;
                                }
                            } else {
                                i16 = -1;
                                i15 = 4;
                            }
                        } else {
                            i16 = -1;
                            i15 = 2;
                        }
                        if (i15 != i16) {
                            q.x("Unknown VP9 level: ", parseInt17, "CodecSpecificDataUtil");
                            return mediaCodecProfileAndLevel;
                        }
                        return new MediaCodecProfileAndLevel(i14, i15, true);
                    }
                    i15 = 1;
                    i16 = -1;
                    if (i15 != i16) {
                    }
                } catch (NumberFormatException unused6) {
                    q.y("Ignoring malformed VP9 codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
            case 11:
            case KeyModifiers.c /* 12 */:
                ColorInfo colorInfo2 = format.H;
                if (split.length < 3) {
                    q.y("Ignoring malformed VVC codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
                try {
                    int parseInt18 = Integer.parseInt(split[1]);
                    if (parseInt18 == 1) {
                        if (colorInfo2 != null && colorInfo2.c == 6) {
                            i17 = 4096;
                        } else if (colorInfo2 != null && colorInfo2.e == 8) {
                            i17 = 1;
                        } else {
                            i17 = 2;
                        }
                    } else if (parseInt18 == 65) {
                        i17 = 4;
                    } else {
                        Log.f("CodecSpecificDataUtil", "Unknown VVC profile IDC: " + split[1]);
                        return mediaCodecProfileAndLevel;
                    }
                    String str6 = split[2];
                    str6.getClass();
                    switch (str6.hashCode()) {
                        case 70918:
                            if (str6.equals("H64")) {
                                c3 = 0;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 70921:
                            if (str6.equals("H67")) {
                                c3 = 1;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 70976:
                            if (str6.equals("H80")) {
                                c3 = 2;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 70979:
                            break;
                        case 70982:
                            if (str6.equals("H86")) {
                                c3 = 4;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 71013:
                            if (str6.equals("H96")) {
                                c3 = 5;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74609:
                            if (str6.equals("L16")) {
                                c3 = 6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74667:
                            if (str6.equals("L32")) {
                                c3 = 7;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74670:
                            if (str6.equals("L35")) {
                                c3 = '\b';
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74704:
                            if (str6.equals("L48")) {
                                c3 = '\t';
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74728:
                            if (str6.equals("L51")) {
                                c3 = '\n';
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74762:
                            if (str6.equals("L64")) {
                                c3 = 11;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74765:
                            if (str6.equals("L67")) {
                                c3 = '\f';
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74820:
                            if (str6.equals("L80")) {
                                c6 = '\r';
                                c3 = c6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74823:
                            if (str6.equals("L83")) {
                                c6 = 14;
                                c3 = c6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74826:
                            if (str6.equals("L86")) {
                                c6 = 15;
                                c3 = c6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 74857:
                            if (str6.equals("L96")) {
                                c3 = 16;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 2193610:
                            if (str6.equals("H112")) {
                                c6 = 17;
                                c3 = c6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 2193647:
                            if (str6.equals("H128")) {
                                c6 = 18;
                                c3 = c6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 2193705:
                            if (str6.equals("H144")) {
                                c6 = 19;
                                c3 = c6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 2312774:
                            if (str6.equals("L112")) {
                                c3 = 20;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 2312811:
                            if (str6.equals("L128")) {
                                c6 = 21;
                                c3 = c6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        case 2312869:
                            if (str6.equals("L144")) {
                                c6 = 22;
                                c3 = c6;
                                break;
                            }
                            c3 = 65535;
                            break;
                        default:
                            c3 = 65535;
                            break;
                    }
                    switch (c3) {
                        case 0:
                            num2 = 64;
                            break;
                        case 1:
                            num2 = 256;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            num2 = 4096;
                            break;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            num2 = 16384;
                            break;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            num2 = 65536;
                            break;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            num2 = 1;
                            break;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            num2 = 2;
                            break;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            num2 = 4;
                            break;
                        case KeyModifiers.a /* 9 */:
                            num2 = 8;
                            break;
                        case KeyModifiers.b /* 10 */:
                            num2 = 16;
                            break;
                        case 11:
                            num2 = 32;
                            break;
                        case KeyModifiers.c /* 12 */:
                            num2 = 128;
                            break;
                        case '\r':
                            num2 = 512;
                            break;
                        case 14:
                            num2 = 2048;
                            break;
                        case 15:
                            num2 = 8192;
                            break;
                        case 16:
                            num2 = 32768;
                            break;
                        case 17:
                            num2 = 262144;
                            break;
                        case 18:
                            num2 = 1048576;
                            break;
                        case 19:
                            num2 = 4194304;
                            break;
                        case 20:
                            num2 = 131072;
                            break;
                        case 21:
                            num2 = 524288;
                            break;
                        case 22:
                            num2 = 2097152;
                            break;
                        default:
                            num2 = null;
                            break;
                    }
                    if (num2 == null) {
                        Log.f("CodecSpecificDataUtil", "Unknown VVC level string: ".concat(str6));
                        return mediaCodecProfileAndLevel;
                    }
                    return new MediaCodecProfileAndLevel(i17, num2.intValue(), true);
                } catch (NumberFormatException unused7) {
                    q.y("Ignoring malformed VVC codec string: ", str2, "CodecSpecificDataUtil");
                    return null;
                }
            default:
                return null;
        }
    }
}
