package androidx.media3.common.util;

import android.app.UiModeManager;
import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.Display;
import android.view.WindowManager;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.BasePlayer;
import androidx.media3.common.Player;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.math.DoubleMath;
import com.google.common.math.LongMath;
import defpackage.fe;
import defpackage.jb;
import java.math.RoundingMode;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Formatter;
import java.util.HashMap;
import java.util.Locale;
import java.util.MissingResourceException;
import java.util.regex.Pattern;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Util {
    public static final String a;
    public static final byte[] b;
    public static final Pattern c;
    public static HashMap d;
    public static final String[] e;
    public static final String[] f;
    public static final int[] g;
    public static final int[] h;
    public static final int[] i;

    static {
        String str = Build.DEVICE;
        String str2 = Build.MANUFACTURER;
        a = str + ", " + Build.MODEL + ", " + str2 + ", " + Build.VERSION.SDK_INT;
        b = new byte[0];
        Pattern.compile("(\\d\\d\\d\\d)\\-(\\d\\d)\\-(\\d\\d)[Tt ](\\d\\d):(\\d\\d):(\\d\\d)([\\.,](\\d+))?([Zz]|((\\+|\\-)(\\d?\\d):?(\\d\\d)?))?");
        Pattern.compile("^(-)?P(([0-9]*)Y)?(([0-9]*)M)?(([0-9]*)D)?(T(([0-9]*)H)?(([0-9]*)M)?(([0-9.]*)S)?)?$");
        Pattern.compile("%([A-Fa-f0-9]{2})");
        c = Pattern.compile("(?:.*\\.)?isml?(?:/(manifest(.*))?)?", 2);
        e = new String[]{"alb", "sq", "arm", "hy", "baq", "eu", "bur", "my", "tib", "bo", "chi", "zh", "cze", "cs", "dut", "nl", "ger", "de", "gre", "el", "fre", "fr", "geo", "ka", "ice", "is", "mac", "mk", "mao", "mi", "may", "ms", "per", "fa", "rum", "ro", "scc", "hbs-srp", "slo", "sk", "wel", "cy", "id", "ms-ind", "iw", "he", "heb", "he", "ji", "yi", "arb", "ar-arb", "in", "ms-ind", "ind", "ms-ind", "nb", "no-nob", "nob", "no-nob", "nn", "no-nno", "nno", "no-nno", "tw", "ak-twi", "twi", "ak-twi", "bs", "hbs-bos", "bos", "hbs-bos", "hr", "hbs-hrv", "hrv", "hbs-hrv", "sr", "hbs-srp", "srp", "hbs-srp", "cmn", "zh-cmn", "hak", "zh-hak", "nan", "zh-nan", "hsn", "zh-hsn"};
        f = new String[]{"i-lux", "lb", "i-hak", "zh-hak", "i-navajo", "nv", "no-bok", "no-nob", "no-nyn", "no-nno", "zh-guoyu", "zh-cmn", "zh-hakka", "zh-hak", "zh-min-nan", "zh-nan", "zh-xiang", "zh-hsn"};
        g = new int[]{0, 79764919, 159529838, 222504665, 319059676, 398814059, 445009330, 507990021, 638119352, 583659535, 797628118, 726387553, 890018660, 835552979, 1015980042, 944750013, 1276238704, 1221641927, 1167319070, 1095957929, 1595256236, 1540665371, 1452775106, 1381403509, 1780037320, 1859660671, 1671105958, 1733955601, 2031960084, 2111593891, 1889500026, 1952343757, -1742489888, -1662866601, -1851683442, -1788833735, -1960329156, -1880695413, -2103051438, -2040207643, -1104454824, -1159051537, -1213636554, -1284997759, -1389417084, -1444007885, -1532160278, -1603531939, -734892656, -789352409, -575645954, -646886583, -952755380, -1007220997, -827056094, -898286187, -231047128, -151282273, -71779514, -8804623, -515967244, -436212925, -390279782, -327299027, 881225847, 809987520, 1023691545, 969234094, 662832811, 591600412, 771767749, 717299826, 311336399, 374308984, 453813921, 533576470, 25881363, 88864420, 134795389, 214552010, 2023205639, 2086057648, 1897238633, 1976864222, 1804852699, 1867694188, 1645340341, 1724971778, 1587496639, 1516133128, 1461550545, 1406951526, 1302016099, 1230646740, 1142491917, 1087903418, -1398421865, -1469785312, -1524105735, -1578704818, -1079922613, -1151291908, -1239184603, -1293773166, -1968362705, -1905510760, -2094067647, -2014441994, -1716953613, -1654112188, -1876203875, -1796572374, -525066777, -462094256, -382327159, -302564546, -206542021, -143559028, -97365931, -17609246, -960696225, -1031934488, -817968335, -872425850, -709327229, -780559564, -600130067, -654598054, 1762451694, 1842216281, 1619975040, 1682949687, 2047383090, 2127137669, 1938468188, 2001449195, 1325665622, 1271206113, 1183200824, 1111960463, 1543535498, 1489069629, 1434599652, 1363369299, 622672798, 568075817, 748617968, 677256519, 907627842, 853037301, 1067152940, 995781531, 51762726, 131386257, 177728840, 240578815, 269590778, 349224269, 429104020, 491947555, -248556018, -168932423, -122852000, -60002089, -500490030, -420856475, -341238852, -278395381, -685261898, -739858943, -559578920, -630940305, -1004286614, -1058877219, -845023740, -916395085, -1119974018, -1174433591, -1262701040, -1333941337, -1371866206, -1426332139, -1481064244, -1552294533, -1690935098, -1611170447, -1833673816, -1770699233, -2009983462, -1930228819, -2119160460, -2056179517, 1569362073, 1498123566, 1409854455, 1355396672, 1317987909, 1246755826, 1192025387, 1137557660, 2072149281, 2135122070, 1912620623, 1992383480, 1753615357, 1816598090, 1627664531, 1707420964, 295390185, 358241886, 404320391, 483945776, 43990325, 106832002, 186451547, 266083308, 932423249, 861060070, 1041341759, 986742920, 613929101, 542559546, 756411363, 701822548, -978770311, -1050133554, -869589737, -924188512, -693284699, -764654318, -550540341, -605129092, -475935807, -413084042, -366743377, -287118056, -257573603, -194731862, -114850189, -35218492, -1984365303, -1921392450, -2143631769, -2063868976, -1698919467, -1635936670, -1824608069, -1744851700, -1347415887, -1418654458, -1506661409, -1561119128, -1129027987, -1200260134, -1254728445, -1309196108};
        h = new int[]{0, 4129, 8258, 12387, 16516, 20645, 24774, 28903, 33032, 37161, 41290, 45419, 49548, 53677, 57806, 61935};
        i = new int[]{0, 7, 14, 9, 28, 27, 18, 21, 56, 63, 54, 49, 36, 35, 42, 45, 112, 119, 126, 121, 108, 107, 98, 101, 72, 79, 70, 65, 84, 83, 90, 93, 224, 231, 238, 233, 252, 251, 242, 245, 216, 223, 214, 209, 196, 195, 202, 205, 144, 151, 158, 153, 140, 139, 130, 133, 168, 175, 166, 161, 180, 179, 186, 189, 199, 192, 201, 206, 219, 220, 213, 210, 255, 248, 241, 246, 227, 228, 237, 234, 183, 176, 185, 190, 171, 172, 165, 162, 143, 136, 129, 134, 147, 148, 157, 154, 39, 32, 41, 46, 59, 60, 53, 50, 31, 24, 17, 22, 3, 4, 13, 10, 87, 80, 89, 94, 75, 76, 69, 66, 111, 104, 97, 102, 115, 116, 125, 122, 137, 142, 135, 128, 149, 146, 155, 156, 177, 182, 191, 184, 173, 170, 163, 164, 249, 254, 247, 240, 229, 226, 235, 236, 193, 198, 207, 200, 221, 218, 211, 212, 105, 110, 103, 96, 117, 114, 123, 124, 81, 86, 95, 88, 77, 74, 67, 68, 25, 30, 23, 16, 5, 2, 11, 12, 33, 38, 47, 40, 61, 58, 51, 52, 78, 73, 64, 71, 82, 85, 92, 91, 118, 113, 120, 127, 106, 109, 100, 99, 62, 57, 48, 55, 34, 37, 44, 43, 6, 1, 8, 15, 26, 29, 20, 19, 174, 169, 160, 167, 178, 181, 188, 187, 150, 145, 152, 159, 138, 141, 132, 131, 222, 217, 208, 215, 194, 197, 204, 203, 230, 225, 232, 239, 250, 253, 244, 243};
    }

    public static boolean A(int i2) {
        if (i2 != 3 && i2 != 2 && i2 != 268435456 && i2 != 21 && i2 != 1342177280 && i2 != 22 && i2 != 1610612736 && i2 != 4 && i2 != 1895825408 && i2 != 1879048192 && i2 != 1912602624) {
            return false;
        }
        return true;
    }

    public static boolean B(Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 29 && context.getApplicationInfo().targetSdkVersion >= 29) {
            if (i2 == 30) {
                String str = Build.MODEL;
                if (Ascii.a(str, "moto g(20)") || Ascii.a(str, "rmx3231")) {
                    return true;
                }
            }
            if (i2 != 34 || !Ascii.a(Build.MODEL, "sm-x200")) {
                return false;
            }
            return true;
        }
        return true;
    }

    public static boolean C(Context context) {
        UiModeManager uiModeManager = (UiModeManager) context.getApplicationContext().getSystemService("uimode");
        if (uiModeManager != null && uiModeManager.getCurrentModeType() == 4) {
            return true;
        }
        return false;
    }

    public static long D(long j) {
        if (j != -9223372036854775807L && j != Long.MIN_VALUE) {
            return j * 1000;
        }
        return j;
    }

    public static String E(String str) {
        if (str == null) {
            return null;
        }
        String replace = str.replace('_', '-');
        if (!replace.isEmpty() && !replace.equals("und")) {
            str = replace;
        }
        String c2 = Ascii.c(str);
        int i2 = 0;
        String str2 = c2.split("-", 2)[0];
        if (d == null) {
            String[] iSOLanguages = Locale.getISOLanguages();
            int length = iSOLanguages.length;
            String[] strArr = e;
            HashMap hashMap = new HashMap(length + strArr.length);
            for (String str3 : iSOLanguages) {
                try {
                    String iSO3Language = new Locale(str3).getISO3Language();
                    if (!TextUtils.isEmpty(iSO3Language)) {
                        hashMap.put(iSO3Language, str3);
                    }
                } catch (MissingResourceException unused) {
                }
            }
            for (int i3 = 0; i3 < strArr.length; i3 += 2) {
                hashMap.put(strArr[i3], strArr[i3 + 1]);
            }
            d = hashMap;
        }
        String str4 = (String) d.get(str2);
        if (str4 != null) {
            c2 = str4.concat(c2.substring(str2.length()));
            str2 = str4;
        }
        if (!"no".equals(str2) && !"i".equals(str2) && !"zh".equals(str2)) {
            return c2;
        }
        while (true) {
            String[] strArr2 = f;
            if (i2 < strArr2.length) {
                if (c2.startsWith(strArr2[i2])) {
                    return strArr2[i2 + 1] + c2.substring(strArr2[i2].length());
                }
                i2 += 2;
            } else {
                return c2;
            }
        }
    }

    public static Object[] F(int i2, Object[] objArr) {
        boolean z;
        if (i2 <= objArr.length) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        return Arrays.copyOf(objArr, i2);
    }

    public static void G(Handler handler, Runnable runnable) {
        Looper looper = handler.getLooper();
        if (!looper.getThread().isAlive()) {
            return;
        }
        if (looper == Looper.myLooper()) {
            runnable.run();
        } else {
            handler.post(runnable);
        }
    }

    public static long H(int i2, long j) {
        return J(j, 1000000L, i2, RoundingMode.DOWN);
    }

    public static void I(long[] jArr, long j) {
        long j2;
        RoundingMode roundingMode = RoundingMode.DOWN;
        int i2 = 0;
        if (j >= 1000000 && j % 1000000 == 0) {
            long b2 = LongMath.b(j, 1000000L, RoundingMode.UNNECESSARY);
            while (i2 < jArr.length) {
                jArr[i2] = LongMath.b(jArr[i2], b2, roundingMode);
                i2++;
            }
            return;
        }
        if (j < 1000000 && 1000000 % j == 0) {
            long b3 = LongMath.b(1000000L, j, RoundingMode.UNNECESSARY);
            while (i2 < jArr.length) {
                jArr[i2] = LongMath.d(jArr[i2], b3);
                i2++;
            }
            return;
        }
        int i3 = 0;
        while (i3 < jArr.length) {
            long j3 = jArr[i3];
            if (j3 != 0) {
                if (j >= j3 && j % j3 == 0) {
                    jArr[i3] = LongMath.b(1000000L, LongMath.b(j, j3, RoundingMode.UNNECESSARY), roundingMode);
                } else if (j < j3 && j3 % j == 0) {
                    jArr[i3] = LongMath.d(1000000L, LongMath.b(j3, j, RoundingMode.UNNECESSARY));
                } else {
                    j2 = j;
                    jArr[i3] = K(j3, 1000000L, j2, roundingMode);
                    i3++;
                    j = j2;
                }
            }
            j2 = j;
            i3++;
            j = j2;
        }
    }

    public static long J(long j, long j2, long j3, RoundingMode roundingMode) {
        if (j == 0 || j2 == 0) {
            return 0L;
        }
        if (j3 >= j2 && j3 % j2 == 0) {
            return LongMath.b(j, LongMath.b(j3, j2, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j3 < j2 && j2 % j3 == 0) {
            return LongMath.d(j, LongMath.b(j2, j3, RoundingMode.UNNECESSARY));
        }
        if (j3 >= j && j3 % j == 0) {
            return LongMath.b(j2, LongMath.b(j3, j, RoundingMode.UNNECESSARY), roundingMode);
        }
        if (j3 < j && j % j3 == 0) {
            return LongMath.d(j2, LongMath.b(j, j3, RoundingMode.UNNECESSARY));
        }
        return K(j, j2, j3, roundingMode);
    }

    public static long K(long j, long j2, long j3, RoundingMode roundingMode) {
        long d2 = LongMath.d(j, j2);
        if (d2 != Long.MAX_VALUE && d2 != Long.MIN_VALUE) {
            return LongMath.b(d2, j3, roundingMode);
        }
        long c2 = LongMath.c(Math.abs(j2), Math.abs(j3));
        RoundingMode roundingMode2 = RoundingMode.UNNECESSARY;
        long b2 = LongMath.b(j2, c2, roundingMode2);
        long b3 = LongMath.b(j3, c2, roundingMode2);
        long c3 = LongMath.c(Math.abs(j), Math.abs(b3));
        long b4 = LongMath.b(j, c3, roundingMode2);
        long b5 = LongMath.b(b3, c3, roundingMode2);
        long d3 = LongMath.d(b4, b2);
        if (d3 != Long.MAX_VALUE && d3 != Long.MIN_VALUE) {
            return LongMath.b(d3, b5, roundingMode);
        }
        double d4 = b4 * (b2 / b5);
        if (d4 > 9.223372036854776E18d) {
            return Long.MAX_VALUE;
        }
        if (d4 < -9.223372036854776E18d) {
            return Long.MIN_VALUE;
        }
        return DoubleMath.d(d4, roundingMode);
    }

    public static boolean L(Player player, boolean z) {
        if (player == null || !player.i() || player.y() == 1 || player.y() == 4 || (z && player.I() != 0 && player.I() != 4)) {
            return true;
        }
        return false;
    }

    public static String M(int i2) {
        return new String(new byte[]{(byte) (i2 >> 24), (byte) (i2 >> 16), (byte) (i2 >> 8), (byte) i2}, StandardCharsets.US_ASCII);
    }

    public static long N(long j) {
        if (j != -9223372036854775807L && j != Long.MIN_VALUE) {
            return j / 1000;
        }
        return j;
    }

    public static int a(long[] jArr, long j, boolean z) {
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            return ~binarySearch;
        }
        while (true) {
            i2 = binarySearch + 1;
            if (i2 >= jArr.length || jArr[i2] != j) {
                break;
            }
            binarySearch = i2;
        }
        if (z) {
            return binarySearch;
        }
        return i2;
    }

    public static int b(LongArray longArray, long j) {
        int i2 = longArray.a - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            if (longArray.c(i4) < j) {
                i3 = i4 + 1;
            } else {
                i2 = i4 - 1;
            }
        }
        int i5 = i2 + 1;
        if (i5 < longArray.a && longArray.c(i5) == j) {
            return i5;
        }
        if (i2 == -1) {
            return 0;
        }
        return i2;
    }

    public static int c(int[] iArr, int i2, boolean z, boolean z2) {
        int i3;
        int i4;
        int binarySearch = Arrays.binarySearch(iArr, i2);
        if (binarySearch < 0) {
            i4 = -(binarySearch + 2);
        } else {
            while (true) {
                i3 = binarySearch - 1;
                if (i3 < 0 || iArr[i3] != i2) {
                    break;
                }
                binarySearch = i3;
            }
            if (z) {
                i4 = binarySearch;
            } else {
                i4 = i3;
            }
        }
        if (z2) {
            return Math.max(0, i4);
        }
        return i4;
    }

    public static int d(long[] jArr, long j, boolean z) {
        int i2;
        int binarySearch = Arrays.binarySearch(jArr, j);
        if (binarySearch < 0) {
            i2 = -(binarySearch + 2);
        } else {
            while (true) {
                int i3 = binarySearch - 1;
                if (i3 < 0 || jArr[i3] != j) {
                    break;
                }
                binarySearch = i3;
            }
            i2 = binarySearch;
        }
        if (z) {
            return Math.max(0, i2);
        }
        return i2;
    }

    public static int e(int i2, int i3) {
        return ((i2 + i3) - 1) / i3;
    }

    public static float f(float f2, float f3, float f4) {
        return Math.max(f3, Math.min(f2, f4));
    }

    public static int g(int i2, int i3, int i4) {
        return Math.max(i3, Math.min(i2, i4));
    }

    public static long h(long j, long j2, long j3) {
        return Math.max(j2, Math.min(j, j3));
    }

    public static boolean i(SparseArray sparseArray, int i2) {
        if (sparseArray.indexOfKey(i2) >= 0) {
            return true;
        }
        return false;
    }

    public static int j(int i2, int i3, int i4, byte[] bArr) {
        while (i2 < i3) {
            i4 = g[((i4 >>> 24) ^ (bArr[i2] & 255)) & 255] ^ (i4 << 8);
            i2++;
        }
        return i4;
    }

    public static Handler k(Handler.Callback callback) {
        Looper myLooper = Looper.myLooper();
        myLooper.getClass();
        return new Handler(myLooper, callback);
    }

    public static int l(int i2) {
        switch (i2) {
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return 3;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return 21;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                return 23;
            case KeyModifiers.a /* 9 */:
            case KeyModifiers.b /* 10 */:
            case 11:
            case KeyModifiers.c /* 12 */:
            case 15:
            case 16:
            case 17:
            case 18:
                return 28;
            case 13:
            case 19:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
            case 28:
            case 29:
            default:
                return Integer.MAX_VALUE;
            case 14:
                return 25;
            case 20:
                return 30;
            case 21:
            case 22:
                return 31;
            case 30:
            case 31:
                return 34;
        }
    }

    public static int m(int i2) {
        if (i2 != 10) {
            if (i2 != 16) {
                if (i2 != 24) {
                    switch (i2) {
                        case 1:
                            return 4;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            return 12;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            return 28;
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            return 204;
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            return 220;
                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            return 252;
                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            return 1276;
                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            return 6396;
                        default:
                            switch (i2) {
                                case KeyModifiers.c /* 12 */:
                                    return 743676;
                                case 13:
                                    if (Build.VERSION.SDK_INT < 32) {
                                        return 0;
                                    }
                                    return 30136348;
                                case 14:
                                    if (Build.VERSION.SDK_INT < 32) {
                                        return 0;
                                    }
                                    return 202070268;
                                default:
                                    return 0;
                            }
                    }
                }
                if (Build.VERSION.SDK_INT < 32) {
                    return 0;
                }
                return 67108860;
            }
            if (Build.VERSION.SDK_INT < 32) {
                return 0;
            }
            return 205215996;
        }
        if (Build.VERSION.SDK_INT < 32) {
            return 6396;
        }
        return 737532;
    }

    public static int n(int i2) {
        if (i2 != 2) {
            if (i2 != 3) {
                if (i2 != 4) {
                    if (i2 != 21) {
                        if (i2 != 22) {
                            if (i2 != 268435456) {
                                if (i2 != 1342177280) {
                                    if (i2 != 1610612736) {
                                        if (i2 != 1879048192) {
                                            if (i2 != 1895825408) {
                                                if (i2 != 1912602624) {
                                                    fe.h();
                                                    return 0;
                                                }
                                                return 8;
                                            }
                                        } else {
                                            return 8;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    return 3;
                }
                return 4;
            }
            return 1;
        }
        return 2;
    }

    public static Point o(Context context) {
        Display display;
        DisplayManager displayManager = (DisplayManager) context.getSystemService("display");
        if (displayManager != null) {
            display = displayManager.getDisplay(0);
        } else {
            display = null;
        }
        if (display == null) {
            WindowManager windowManager = (WindowManager) context.getSystemService("window");
            windowManager.getClass();
            display = windowManager.getDefaultDisplay();
        }
        if (display.getDisplayId() == 0 && C(context)) {
            String v = v("vendor.display-size");
            if (!TextUtils.isEmpty(v)) {
                try {
                    String[] split = v.trim().split("x", -1);
                    if (split.length == 2) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        if (parseInt > 0 && parseInt2 > 0) {
                            return new Point(parseInt, parseInt2);
                        }
                    }
                } catch (NumberFormatException unused) {
                }
                Log.c("Util", "Invalid display size: " + v);
            }
            if ("Sony".equals(Build.MANUFACTURER) && Build.MODEL.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                return new Point(3840, 2160);
            }
        }
        Point point = new Point();
        Display.Mode mode = display.getMode();
        point.x = mode.getPhysicalWidth();
        point.y = mode.getPhysicalHeight();
        return point;
    }

    public static int p(int i2) {
        if (i2 != 2 && i2 != 4) {
            if (i2 != 10) {
                if (i2 != 7) {
                    if (i2 != 8) {
                        switch (i2) {
                            case 15:
                                return 6003;
                            case 16:
                            case 18:
                                return 6005;
                            case 17:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                                return 6004;
                            default:
                                switch (i2) {
                                    case 24:
                                    case 25:
                                    case 26:
                                    case 27:
                                    case 28:
                                        return 6002;
                                    default:
                                        return 6006;
                                }
                        }
                    }
                    return 6003;
                }
                return 6005;
            }
            return 6004;
        }
        return 6005;
    }

    public static int q(String str) {
        String[] split;
        int length;
        boolean z;
        int i2 = 0;
        if (str == null || (length = (split = str.split("_", -1)).length) < 2) {
            return 0;
        }
        String str2 = split[length - 1];
        if (length >= 3 && "neg".equals(split[length - 2])) {
            z = true;
        } else {
            z = false;
        }
        try {
            str2.getClass();
            i2 = Integer.parseInt(str2);
            if (z) {
                return -i2;
            }
        } catch (NumberFormatException unused) {
        }
        return i2;
    }

    public static int r(int i2, ByteOrder byteOrder) {
        if (i2 != 32) {
            if (i2 != 64) {
                return 0;
            }
            if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                return 1879048192;
            }
            return 1912602624;
        }
        if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
            return 4;
        }
        return 1895825408;
    }

    public static long s(long j, float f2) {
        if (f2 == 1.0f) {
            return j;
        }
        return Math.round(j * f2);
    }

    public static int t(int i2, ByteOrder byteOrder) {
        if (i2 != 8) {
            if (i2 != 16) {
                if (i2 != 24) {
                    if (i2 != 32) {
                        return 0;
                    }
                    if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                        return 22;
                    }
                    return 1610612736;
                }
                if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                    return 21;
                }
                return 1342177280;
            }
            if (byteOrder.equals(ByteOrder.LITTLE_ENDIAN)) {
                return 2;
            }
            return 268435456;
        }
        return 3;
    }

    public static String u(StringBuilder sb, Formatter formatter, long j) {
        String str;
        if (j == -9223372036854775807L) {
            j = 0;
        }
        if (j < 0) {
            str = "-";
        } else {
            str = "";
        }
        long abs = (Math.abs(j) + 500) / 1000;
        long j2 = abs % 60;
        long j3 = (abs / 60) % 60;
        long j4 = abs / 3600;
        sb.setLength(0);
        if (j4 > 0) {
            return formatter.format("%s%d:%02d:%02d", str, Long.valueOf(j4), Long.valueOf(j3), Long.valueOf(j2)).toString();
        }
        return formatter.format("%s%02d:%02d", str, Long.valueOf(j3), Long.valueOf(j2)).toString();
    }

    public static String v(String str) {
        try {
            Class<?> cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", String.class).invoke(cls, str);
        } catch (Exception e2) {
            Log.d("Util", "Failed to read system property ".concat(str), e2);
            return null;
        }
    }

    public static String w(int i2) {
        switch (i2) {
            case -2:
                return "none";
            case -1:
                return "unknown";
            case 0:
                return "default";
            case 1:
                return "audio";
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                return "video";
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                return "text";
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                return "image";
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                return "metadata";
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                return "camera motion";
            default:
                if (i2 >= 10000) {
                    return jb.d("custom (", i2, ")");
                }
                return "?";
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003f A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean x(Player player) {
        BasePlayer basePlayer;
        boolean z = false;
        if (player == null) {
            return false;
        }
        int y = player.y();
        if (y == 1 && ((BasePlayer) player).V(2)) {
            player.o();
        } else {
            if (y == 4) {
                BasePlayer basePlayer2 = (BasePlayer) player;
                if (basePlayer2.V(4)) {
                    basePlayer2.Y(basePlayer2.D(), -9223372036854775807L, false);
                }
            }
            basePlayer = (BasePlayer) player;
            if (!basePlayer.V(1)) {
                basePlayer.u(true);
                return true;
            }
            return z;
        }
        z = true;
        basePlayer = (BasePlayer) player;
        if (!basePlayer.V(1)) {
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0062, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean y(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, Inflater inflater) {
        if (parsableByteArray.a() == 0) {
            return false;
        }
        if (parsableByteArray2.a.length < parsableByteArray.a()) {
            parsableByteArray2.c(parsableByteArray.a() * 2);
        }
        if (inflater == null) {
            inflater = new Inflater();
        }
        inflater.setInput(parsableByteArray.a, parsableByteArray.b, parsableByteArray.a());
        int i2 = 0;
        while (true) {
            try {
                byte[] bArr = parsableByteArray2.a;
                i2 += inflater.inflate(bArr, i2, bArr.length - i2);
                if (inflater.finished()) {
                    parsableByteArray2.L(i2);
                    inflater.reset();
                    return true;
                }
                if (inflater.needsDictionary() || inflater.needsInput()) {
                    break;
                }
                byte[] bArr2 = parsableByteArray2.a;
                if (i2 == bArr2.length) {
                    parsableByteArray2.c(bArr2.length * 2);
                }
            } catch (DataFormatException unused) {
                return false;
            } finally {
                inflater.reset();
            }
        }
    }

    public static void z(int i2) {
        Integer.toString(i2, 36);
    }
}
