package androidx.media3.common;

import android.text.TextUtils;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.common.base.Ascii;
import io.sentry.d;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MimeTypes {
    public static final ArrayList a = new ArrayList();
    public static final Pattern b = Pattern.compile("^mp4a\\.([a-zA-Z0-9]{2})(?:\\.([0-9]{1,2}))?$");

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Mp4aObjectType {
        public final int a;
        public final int b;

        public Mp4aObjectType(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public final int a() {
            int i = this.b;
            if (i != 2) {
                if (i != 5) {
                    if (i != 29) {
                        if (i != 42) {
                            if (i != 22) {
                                if (i != 23) {
                                    return 0;
                                }
                                return 15;
                            }
                            return 1073741824;
                        }
                        return 16;
                    }
                    return 12;
                }
                return 11;
            }
            return 10;
        }
    }

    public static boolean a(String str, String str2) {
        Mp4aObjectType e;
        int a2;
        if (str == null) {
            return false;
        }
        char c = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c = 0;
                    break;
                }
                break;
            case -1354451219:
                if (str.equals("application/vnd.dvb.ait")) {
                    c = 1;
                    break;
                }
                break;
            case -1348231605:
                if (str.equals("application/x-icy")) {
                    c = 2;
                    break;
                }
                break;
            case -1265048566:
                if (str.equals("application/x-camera-motion")) {
                    c = 3;
                    break;
                }
                break;
            case -1248341703:
                if (str.equals("application/id3")) {
                    c = 4;
                    break;
                }
                break;
            case -432837260:
                if (str.equals("audio/mpeg-L1")) {
                    c = 5;
                    break;
                }
                break;
            case -432837259:
                if (str.equals("audio/mpeg-L2")) {
                    c = 6;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = 7;
                    break;
                }
                break;
            case -43764892:
                if (str.equals("application/meta")) {
                    c = '\b';
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = '\t';
                    break;
                }
                break;
            case 187094639:
                if (str.equals("audio/raw")) {
                    c = '\n';
                    break;
                }
                break;
            case 469933706:
                if (str.equals("application/x-media3-cues")) {
                    c = 11;
                    break;
                }
                break;
            case 1054472807:
                if (str.equals("application/x-itut-t35")) {
                    c = '\f';
                    break;
                }
                break;
            case 1154383568:
                if (str.equals("application/x-emsg")) {
                    c = '\r';
                    break;
                }
                break;
            case 1331836563:
                if (str.equals("video/apv")) {
                    c = 14;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = 15;
                    break;
                }
                break;
            case 1504619009:
                if (str.equals("audio/flac")) {
                    c = 16;
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c = 17;
                    break;
                }
                break;
            case 1652648887:
                if (str.equals("application/x-scte35")) {
                    c = 18;
                    break;
                }
                break;
            case 1903231877:
                if (str.equals("audio/g711-alaw")) {
                    c = 19;
                    break;
                }
                break;
            case 1903589369:
                if (str.equals("audio/g711-mlaw")) {
                    c = 20;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
            case KeyModifiers.a /* 9 */:
            case KeyModifiers.b /* 10 */:
            case 11:
            case KeyModifiers.c /* 12 */:
            case '\r':
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
                return true;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                if (str2 == null || (e = e(str2)) == null || (a2 = e.a()) == 0 || a2 == 16) {
                    return false;
                }
                return true;
            default:
                return false;
        }
    }

    public static int b(String str, String str2) {
        Mp4aObjectType e;
        str.getClass();
        char c = 65535;
        switch (str.hashCode()) {
            case -2123537834:
                if (str.equals("audio/eac3-joc")) {
                    c = 0;
                    break;
                }
                break;
            case -1365340241:
                if (str.equals("audio/vnd.dts.hd;profile=lbr")) {
                    c = 1;
                    break;
                }
                break;
            case -1095064472:
                if (str.equals("audio/vnd.dts")) {
                    c = 2;
                    break;
                }
                break;
            case -53558318:
                if (str.equals("audio/mp4a-latm")) {
                    c = 3;
                    break;
                }
                break;
            case 187078296:
                if (str.equals("audio/ac3")) {
                    c = 4;
                    break;
                }
                break;
            case 187078297:
                if (str.equals("audio/ac4")) {
                    c = 5;
                    break;
                }
                break;
            case 187081724:
                if (str.equals("audio/dsd")) {
                    c = 6;
                    break;
                }
                break;
            case 550520934:
                if (str.equals("audio/vnd.dts.uhd;profile=p2")) {
                    c = 7;
                    break;
                }
                break;
            case 1504578661:
                if (str.equals("audio/eac3")) {
                    c = '\b';
                    break;
                }
                break;
            case 1504831518:
                if (str.equals("audio/mpeg")) {
                    c = '\t';
                    break;
                }
                break;
            case 1504891608:
                if (str.equals("audio/opus")) {
                    c = '\n';
                    break;
                }
                break;
            case 1505942594:
                if (str.equals("audio/vnd.dts.hd")) {
                    c = 11;
                    break;
                }
                break;
            case 1556697186:
                if (str.equals("audio/true-hd")) {
                    c = '\f';
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return 18;
            case 1:
                return 8;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return 7;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                if (str2 == null || (e = e(str2)) == null) {
                    return 0;
                }
                return e.a();
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return 5;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return 17;
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return 31;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                return 30;
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return 6;
            case KeyModifiers.a /* 9 */:
                return 9;
            case KeyModifiers.b /* 10 */:
                return 20;
            case 11:
                return 8;
            case KeyModifiers.c /* 12 */:
                return 14;
            default:
                return 0;
        }
    }

    public static String c(String str) {
        Mp4aObjectType e;
        String str2 = null;
        if (str != null) {
            String c = Ascii.c(str.trim());
            if (!c.startsWith("avc1") && !c.startsWith("avc3")) {
                if (!c.startsWith("hev1") && !c.startsWith("hvc1")) {
                    if (!c.startsWith("vvc1") && !c.startsWith("vvi1")) {
                        if (!c.startsWith("dvav") && !c.startsWith("dva1") && !c.startsWith("dvhe") && !c.startsWith("dvh1") && !c.startsWith("dav1")) {
                            if (c.startsWith("av01")) {
                                return "video/av01";
                            }
                            if (!c.startsWith("vp9") && !c.startsWith("vp09")) {
                                if (!c.startsWith("vp8") && !c.startsWith("vp08")) {
                                    if (c.startsWith("mp4a")) {
                                        if (c.startsWith("mp4a.") && (e = e(c)) != null) {
                                            str2 = d(e.a);
                                        }
                                        if (str2 == null) {
                                            return "audio/mp4a-latm";
                                        }
                                        return str2;
                                    }
                                    if (c.startsWith("mha1")) {
                                        return "audio/mha1";
                                    }
                                    if (c.startsWith("mhm1")) {
                                        return "audio/mhm1";
                                    }
                                    if (!c.startsWith("ac-3") && !c.startsWith("dac3")) {
                                        if (!c.startsWith("ec-3") && !c.startsWith("dec3")) {
                                            if (c.startsWith("ec+3")) {
                                                return "audio/eac3-joc";
                                            }
                                            if (!c.startsWith("ac-4") && !c.startsWith("dac4")) {
                                                if (c.startsWith("dtsc")) {
                                                    return "audio/vnd.dts";
                                                }
                                                if (c.startsWith("dtse")) {
                                                    return "audio/vnd.dts.hd;profile=lbr";
                                                }
                                                if (!c.startsWith("dtsh") && !c.startsWith("dtsl")) {
                                                    if (c.startsWith("dtsx")) {
                                                        return "audio/vnd.dts.uhd;profile=p2";
                                                    }
                                                    if (c.startsWith("opus")) {
                                                        return "audio/opus";
                                                    }
                                                    if (c.startsWith("vorbis")) {
                                                        return "audio/vorbis";
                                                    }
                                                    if (c.startsWith("flac")) {
                                                        return "audio/flac";
                                                    }
                                                    if (c.startsWith("stpp")) {
                                                        return "application/ttml+xml";
                                                    }
                                                    if (c.startsWith("wvtt")) {
                                                        return "text/vtt";
                                                    }
                                                    if (c.contains("cea708")) {
                                                        return "application/cea-708";
                                                    }
                                                    if (!c.contains("eia608") && !c.contains("cea608")) {
                                                        ArrayList arrayList = a;
                                                        if (arrayList.size() > 0) {
                                                            arrayList.get(0).getClass();
                                                            d.i();
                                                            return null;
                                                        }
                                                    } else {
                                                        return "application/cea-608";
                                                    }
                                                } else {
                                                    return "audio/vnd.dts.hd";
                                                }
                                            } else {
                                                return "audio/ac4";
                                            }
                                        } else {
                                            return "audio/eac3";
                                        }
                                    } else {
                                        return "audio/ac3";
                                    }
                                } else {
                                    return "video/x-vnd.on2.vp8";
                                }
                            } else {
                                return "video/x-vnd.on2.vp9";
                            }
                        } else {
                            return "video/dolby-vision";
                        }
                    } else {
                        return "video/vvc";
                    }
                } else {
                    return "video/hevc";
                }
            } else {
                return "video/avc";
            }
        }
        return null;
    }

    public static String d(int i) {
        if (i != 32) {
            if (i != 33) {
                if (i != 35) {
                    if (i != 64) {
                        if (i != 163) {
                            if (i != 177) {
                                if (i != 221) {
                                    if (i != 165) {
                                        if (i != 166) {
                                            switch (i) {
                                                case 96:
                                                case 97:
                                                case 98:
                                                case 99:
                                                case 100:
                                                case 101:
                                                    return "video/mpeg2";
                                                case 102:
                                                case 103:
                                                case 104:
                                                    return "audio/mp4a-latm";
                                                case 105:
                                                case 107:
                                                    return "audio/mpeg";
                                                case 106:
                                                    return "video/mpeg";
                                                case 108:
                                                    return "image/jpeg";
                                                default:
                                                    switch (i) {
                                                        case 169:
                                                        case 172:
                                                            return "audio/vnd.dts";
                                                        case 170:
                                                        case 171:
                                                            return "audio/vnd.dts.hd";
                                                        case 173:
                                                            return "audio/opus";
                                                        case 174:
                                                            return "audio/ac4";
                                                        default:
                                                            return null;
                                                    }
                                            }
                                        }
                                        return "audio/eac3";
                                    }
                                    return "audio/ac3";
                                }
                                return "audio/vorbis";
                            }
                            return "video/x-vnd.on2.vp9";
                        }
                        return "video/wvc1";
                    }
                    return "audio/mp4a-latm";
                }
                return "video/hevc";
            }
            return "video/avc";
        }
        return "video/mp4v-es";
    }

    public static Mp4aObjectType e(String str) {
        int i;
        Matcher matcher = b.matcher(str);
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(2);
            try {
                int parseInt = Integer.parseInt(group, 16);
                if (group2 != null) {
                    i = Integer.parseInt(group2);
                } else {
                    i = 0;
                }
                return new Mp4aObjectType(parseInt, i);
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return null;
    }

    public static String f(String str) {
        int indexOf;
        if (str == null || (indexOf = str.indexOf(47)) == -1) {
            return null;
        }
        return str.substring(0, indexOf);
    }

    public static int g(String str) {
        if (!TextUtils.isEmpty(str)) {
            if (h(str)) {
                return 1;
            }
            if (k(str)) {
                return 2;
            }
            if (j(str)) {
                return 3;
            }
            if (i(str)) {
                return 4;
            }
            if (!"application/id3".equals(str) && !"application/x-emsg".equals(str) && !"application/x-scte35".equals(str) && !"application/x-icy".equals(str) && !"application/vnd.dvb.ait".equals(str) && !"application/meta".equals(str) && !"application/x-itut-t35".equals(str)) {
                if ("application/x-camera-motion".equals(str)) {
                    return 6;
                }
                ArrayList arrayList = a;
                if (arrayList.size() <= 0) {
                    return -1;
                }
                arrayList.get(0).getClass();
                d.i();
                return 0;
            }
            return 5;
        }
        return -1;
    }

    public static boolean h(String str) {
        return "audio".equals(f(str));
    }

    public static boolean i(String str) {
        if (!"image".equals(f(str)) && !"application/x-image-uri".equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean j(String str) {
        if (!"text".equals(f(str)) && !"application/x-media3-cues".equals(str) && !"application/cea-608".equals(str) && !"application/cea-708".equals(str) && !"application/x-mp4-cea-608".equals(str) && !"application/x-subrip".equals(str) && !"application/ttml+xml".equals(str) && !"application/x-quicktime-tx3g".equals(str) && !"application/x-mp4-vtt".equals(str) && !"application/x-rawcc".equals(str) && !"application/vobsub".equals(str) && !"application/pgs".equals(str) && !"application/dvbsubs".equals(str)) {
            return false;
        }
        return true;
    }

    public static boolean k(String str) {
        return "video".equals(f(str));
    }

    public static String l(String str) {
        if (str == null) {
            return null;
        }
        String c = Ascii.c(str);
        c.getClass();
        char c2 = 65535;
        switch (c.hashCode()) {
            case -1833600100:
                if (c.equals("video/x-mvhevc")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1007807498:
                if (c.equals("audio/x-flac")) {
                    c2 = 1;
                    break;
                }
                break;
            case -979095690:
                if (c.equals("application/x-mpegurl")) {
                    c2 = 2;
                    break;
                }
                break;
            case -586683234:
                if (c.equals("audio/x-wav")) {
                    c2 = 3;
                    break;
                }
                break;
            case -432836268:
                if (c.equals("audio/mpeg-l1")) {
                    c2 = 4;
                    break;
                }
                break;
            case -432836267:
                if (c.equals("audio/mpeg-l2")) {
                    c2 = 5;
                    break;
                }
                break;
            case 187090231:
                if (c.equals("audio/mp3")) {
                    c2 = 6;
                    break;
                }
                break;
        }
        switch (c2) {
            case 0:
                return "video/mv-hevc";
            case 1:
                return "audio/flac";
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return "application/x-mpegURL";
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return "audio/wav";
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return "audio/mpeg-L1";
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return "audio/mpeg-L2";
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return "audio/mpeg";
            default:
                return c;
        }
    }
}
