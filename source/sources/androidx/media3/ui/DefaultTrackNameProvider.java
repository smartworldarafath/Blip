package androidx.media3.ui;

import android.content.res.Resources;
import android.text.TextUtils;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Util;
import java.util.Locale;
import net.blip.android.R;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class DefaultTrackNameProvider implements TrackNameProvider {
    public final Resources a;

    public DefaultTrackNameProvider(Resources resources) {
        resources.getClass();
        this.a = resources;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:18:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String a(Format format) {
        String str;
        String d;
        String str2 = format.d;
        String str3 = format.b;
        if (!TextUtils.isEmpty(str2) && !"und".equals(str2)) {
            Locale forLanguageTag = Locale.forLanguageTag(str2);
            String str4 = Util.a;
            Locale locale = Locale.getDefault(Locale.Category.DISPLAY);
            str = forLanguageTag.getDisplayName(locale);
            if (!TextUtils.isEmpty(str)) {
                try {
                    int offsetByCodePoints = str.offsetByCodePoints(0, 1);
                    str = str.substring(0, offsetByCodePoints).toUpperCase(locale) + str.substring(offsetByCodePoints);
                } catch (IndexOutOfBoundsException unused) {
                }
                d = d(str, b(format));
                if (!TextUtils.isEmpty(d)) {
                    if (TextUtils.isEmpty(str3)) {
                        str3 = "";
                    }
                    return str3;
                }
                return d;
            }
        }
        str = "";
        d = d(str, b(format));
        if (!TextUtils.isEmpty(d)) {
        }
    }

    public final String b(Format format) {
        String str;
        int i = format.f;
        int i2 = format.f;
        int i3 = i & 2;
        Resources resources = this.a;
        if (i3 != 0) {
            str = resources.getString(R.string.exo_track_role_alternate);
        } else {
            str = "";
        }
        if ((i2 & 4) != 0) {
            str = d(str, resources.getString(R.string.exo_track_role_supplementary));
        }
        if ((i2 & 8) != 0) {
            str = d(str, resources.getString(R.string.exo_track_role_commentary));
        }
        if ((i2 & 1088) != 0) {
            return d(str, resources.getString(R.string.exo_track_role_closed_captions));
        }
        return str;
    }

    public final String c(Format format) {
        String a;
        String str;
        String str2;
        String[] split;
        String c;
        String[] split2;
        String str3 = format.p;
        int i = format.k;
        int i2 = format.J;
        int i3 = format.x;
        int i4 = format.w;
        String str4 = format.l;
        int g = MimeTypes.g(str3);
        if (g == -1) {
            int i5 = 0;
            String str5 = null;
            if (str4 != null) {
                if (TextUtils.isEmpty(str4)) {
                    split = new String[0];
                } else {
                    split = str4.trim().split("(\\s*,\\s*)", -1);
                }
                for (String str6 : split) {
                    c = MimeTypes.c(str6);
                    if (c != null && MimeTypes.k(c)) {
                        break;
                    }
                }
            }
            c = null;
            if (c == null) {
                if (str4 != null) {
                    if (TextUtils.isEmpty(str4)) {
                        split2 = new String[0];
                    } else {
                        split2 = str4.trim().split("(\\s*,\\s*)", -1);
                    }
                    int length = split2.length;
                    while (true) {
                        if (i5 >= length) {
                            break;
                        }
                        String c2 = MimeTypes.c(split2[i5]);
                        if (c2 != null && MimeTypes.h(c2)) {
                            str5 = c2;
                            break;
                        }
                        i5++;
                    }
                }
                if (str5 == null) {
                    if (i4 == -1 && i3 == -1) {
                        if (i2 == -1 && format.L == -1) {
                            g = -1;
                        }
                    }
                }
                g = 1;
            }
            g = 2;
        }
        String str7 = "";
        Resources resources = this.a;
        if (g == 2) {
            String b = b(format);
            if (i4 == -1 || i3 == -1) {
                str2 = "";
            } else {
                str2 = resources.getString(R.string.exo_track_resolution, Integer.valueOf(i4), Integer.valueOf(i3));
            }
            if (i != -1) {
                str7 = resources.getString(R.string.exo_track_bitrate, Float.valueOf(i / 1000000.0f));
            }
            a = d(b, str2, str7);
        } else if (g == 1) {
            String a2 = a(format);
            if (i2 == -1 || i2 < 1) {
                str = "";
            } else if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 6 && i2 != 7) {
                        if (i2 != 8) {
                            str = resources.getString(R.string.exo_track_surround);
                        } else {
                            str = resources.getString(R.string.exo_track_surround_7_point_1);
                        }
                    } else {
                        str = resources.getString(R.string.exo_track_surround_5_point_1);
                    }
                } else {
                    str = resources.getString(R.string.exo_track_stereo);
                }
            } else {
                str = resources.getString(R.string.exo_track_mono);
            }
            if (i != -1) {
                str7 = resources.getString(R.string.exo_track_bitrate, Float.valueOf(i / 1000000.0f));
            }
            a = d(a2, str, str7);
        } else {
            a = a(format);
        }
        if (!a.isEmpty()) {
            return a;
        }
        String str8 = format.d;
        if (str8 != null && !str8.trim().isEmpty()) {
            return resources.getString(R.string.exo_track_unknown_name, str8);
        }
        return resources.getString(R.string.exo_track_unknown);
    }

    public final String d(String... strArr) {
        String str = "";
        for (String str2 : strArr) {
            if (!str2.isEmpty()) {
                if (TextUtils.isEmpty(str)) {
                    str = str2;
                } else {
                    str = this.a.getString(R.string.exo_item_list, str, str2);
                }
            }
        }
        return str;
    }
}
