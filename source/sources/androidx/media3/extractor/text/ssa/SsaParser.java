package androidx.media3.extractor.text.ssa;

import android.graphics.PointF;
import android.text.Layout;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.ssa.SsaStyle;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Ints;
import defpackage.jb;
import defpackage.q;
import io.sentry.d;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SsaParser implements SubtitleParser {
    public static final Pattern g = Pattern.compile("(?:(\\d+):)?(\\d+):(\\d+)[:.](\\d+)");
    public final boolean a;
    public final SsaDialogueFormat b;
    public LinkedHashMap d;
    public float e = -3.4028235E38f;
    public float f = -3.4028235E38f;
    public final ParsableByteArray c = new ParsableByteArray();

    public SsaParser(List list) {
        if (list != null && !list.isEmpty()) {
            this.a = true;
            byte[] bArr = (byte[]) list.get(0);
            Charset charset = StandardCharsets.UTF_8;
            String str = new String(bArr, charset);
            Preconditions.e(str.startsWith("Format:"));
            SsaDialogueFormat a = SsaDialogueFormat.a(str);
            a.getClass();
            this.b = a;
            d(new ParsableByteArray((byte[]) list.get(1)), charset);
            return;
        }
        this.a = false;
        this.b = null;
    }

    public static int c(long j, ArrayList arrayList, ArrayList arrayList2) {
        int i;
        ArrayList arrayList3;
        int size = arrayList.size() - 1;
        while (true) {
            if (size >= 0) {
                if (((Long) arrayList.get(size)).longValue() == j) {
                    return size;
                }
                if (((Long) arrayList.get(size)).longValue() < j) {
                    i = size + 1;
                    break;
                }
                size--;
            } else {
                i = 0;
                break;
            }
        }
        arrayList.add(i, Long.valueOf(j));
        if (i == 0) {
            arrayList3 = new ArrayList();
        } else {
            arrayList3 = new ArrayList((Collection) arrayList2.get(i - 1));
        }
        arrayList2.add(i, arrayList3);
        return i;
    }

    public static long e(String str) {
        Matcher matcher = g.matcher(str.trim());
        if (!matcher.matches()) {
            return -9223372036854775807L;
        }
        String group = matcher.group(1);
        String str2 = Util.a;
        return (Long.parseLong(matcher.group(4)) * 10000) + (Long.parseLong(matcher.group(3)) * 1000000) + (Long.parseLong(matcher.group(2)) * 60000000) + (Long.parseLong(group) * 3600000000L);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:100:0x0266. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:28:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c1  */
    @Override // androidx.media3.extractor.text.SubtitleParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(byte[] bArr, int i, int i2, Consumer consumer) {
        SsaDialogueFormat ssaDialogueFormat;
        Charset charset;
        SsaDialogueFormat ssaDialogueFormat2;
        ParsableByteArray parsableByteArray;
        int parseInt;
        long e;
        SsaStyle ssaStyle;
        float f;
        float f2;
        Layout.Alignment alignment;
        int i3;
        int i4;
        int i5;
        float f3;
        float f4;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        SsaParser ssaParser = this;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ParsableByteArray parsableByteArray2 = ssaParser.c;
        parsableByteArray2.K(i + i2, bArr);
        parsableByteArray2.M(i);
        Charset I = parsableByteArray2.I();
        if (I == null) {
            I = StandardCharsets.UTF_8;
        }
        boolean z = ssaParser.a;
        if (!z) {
            ssaParser.d(parsableByteArray2, I);
        }
        if (z) {
            ssaDialogueFormat = ssaParser.b;
        } else {
            ssaDialogueFormat = null;
        }
        while (true) {
            String n = parsableByteArray2.n(I);
            if (n != null) {
                if (n.startsWith("Format:")) {
                    ssaDialogueFormat = SsaDialogueFormat.a(n);
                } else {
                    if (n.startsWith("Dialogue:")) {
                        if (ssaDialogueFormat == null) {
                            Log.f("SsaParser", "Skipping dialogue line before complete format: ".concat(n));
                        } else {
                            int i12 = ssaDialogueFormat.f;
                            Preconditions.e(n.startsWith("Dialogue:"));
                            String substring = n.substring(9);
                            int i13 = ssaDialogueFormat.a;
                            String[] split = substring.split(",", i12);
                            if (split.length != i12) {
                                Log.f("SsaParser", "Skipping dialogue line with fewer columns than format: ".concat(n));
                            } else {
                                if (i13 != -1) {
                                    try {
                                        parseInt = Integer.parseInt(split[i13].trim());
                                    } catch (RuntimeException unused) {
                                        Log.f("SsaParser", "Fail to parse layer: " + split[i13]);
                                    }
                                    e = e(split[ssaDialogueFormat.b]);
                                    if (e != -9223372036854775807L) {
                                        Log.f("SsaParser", "Skipping invalid timing: ".concat(n));
                                    } else {
                                        long e2 = e(split[ssaDialogueFormat.c]);
                                        if (e2 == -9223372036854775807L || e2 <= e) {
                                            charset = I;
                                            ssaDialogueFormat2 = ssaDialogueFormat;
                                            parsableByteArray = parsableByteArray2;
                                            Log.f("SsaParser", "Skipping invalid timing: ".concat(n));
                                        } else {
                                            LinkedHashMap linkedHashMap = ssaParser.d;
                                            if (linkedHashMap != null && (i11 = ssaDialogueFormat.d) != -1) {
                                                ssaStyle = (SsaStyle) linkedHashMap.get(split[i11].trim());
                                            } else {
                                                ssaStyle = null;
                                            }
                                            String str = split[ssaDialogueFormat.e];
                                            Matcher matcher = SsaStyle.Overrides.a.matcher(str);
                                            int i14 = -1;
                                            PointF pointF = null;
                                            while (matcher.find()) {
                                                Charset charset2 = I;
                                                String group = matcher.group(1);
                                                group.getClass();
                                                try {
                                                    PointF a = SsaStyle.Overrides.a(group);
                                                    if (a != null) {
                                                        pointF = a;
                                                    }
                                                } catch (RuntimeException unused2) {
                                                }
                                                try {
                                                    Matcher matcher2 = SsaStyle.Overrides.d.matcher(group);
                                                    if (matcher2.find()) {
                                                        String group2 = matcher2.group(1);
                                                        group2.getClass();
                                                        i10 = SsaStyle.a(group2);
                                                    } else {
                                                        i10 = -1;
                                                    }
                                                    if (i10 != -1) {
                                                        i14 = i10;
                                                    }
                                                } catch (RuntimeException unused3) {
                                                }
                                                I = charset2;
                                            }
                                            charset = I;
                                            String replace = SsaStyle.Overrides.a.matcher(str).replaceAll("").replace("\\N", "\n").replace("\\n", "\n").replace("\\h", " ");
                                            float f5 = ssaParser.e;
                                            float f6 = ssaParser.f;
                                            SpannableString spannableString = new SpannableString(replace);
                                            Cue.Builder builder = new Cue.Builder();
                                            builder.a = spannableString;
                                            builder.b = null;
                                            builder.r = parseInt;
                                            if (ssaStyle != null) {
                                                f2 = -3.4028235E38f;
                                                boolean z2 = ssaStyle.g;
                                                Integer num = ssaStyle.d;
                                                Integer num2 = ssaStyle.c;
                                                if (num2 != null) {
                                                    ssaDialogueFormat2 = ssaDialogueFormat;
                                                    parsableByteArray = parsableByteArray2;
                                                    f = f5;
                                                    i6 = 0;
                                                    i7 = 33;
                                                    spannableString.setSpan(new ForegroundColorSpan(num2.intValue()), 0, spannableString.length(), 33);
                                                } else {
                                                    ssaDialogueFormat2 = ssaDialogueFormat;
                                                    parsableByteArray = parsableByteArray2;
                                                    f = f5;
                                                    i6 = 0;
                                                    i7 = 33;
                                                }
                                                if (ssaStyle.j == 3 && num != null) {
                                                    spannableString.setSpan(new BackgroundColorSpan(num.intValue()), i6, spannableString.length(), i7);
                                                }
                                                float f7 = ssaStyle.e;
                                                if (f7 != -3.4028235E38f && f6 != -3.4028235E38f) {
                                                    builder.k = f7 / f6;
                                                    builder.j = 1;
                                                }
                                                boolean z3 = ssaStyle.f;
                                                if (z3 && z2) {
                                                    i8 = 0;
                                                    i9 = 33;
                                                    spannableString.setSpan(new StyleSpan(3), 0, spannableString.length(), 33);
                                                } else {
                                                    i8 = 0;
                                                    i9 = 33;
                                                    if (z3) {
                                                        spannableString.setSpan(new StyleSpan(1), 0, spannableString.length(), 33);
                                                    } else if (z2) {
                                                        spannableString.setSpan(new StyleSpan(2), 0, spannableString.length(), 33);
                                                    }
                                                }
                                                if (ssaStyle.h) {
                                                    spannableString.setSpan(new UnderlineSpan(), i8, spannableString.length(), i9);
                                                }
                                                if (ssaStyle.i) {
                                                    spannableString.setSpan(new StrikethroughSpan(), i8, spannableString.length(), i9);
                                                }
                                            } else {
                                                ssaDialogueFormat2 = ssaDialogueFormat;
                                                parsableByteArray = parsableByteArray2;
                                                f = f5;
                                                f2 = -3.4028235E38f;
                                            }
                                            int i15 = i14;
                                            if (i15 == -1) {
                                                if (ssaStyle != null) {
                                                    i15 = ssaStyle.b;
                                                } else {
                                                    i15 = -1;
                                                }
                                            }
                                            switch (i15) {
                                                case -1:
                                                    break;
                                                case 0:
                                                default:
                                                    q.x("Unknown alignment: ", i15, "SsaParser");
                                                    break;
                                                case 1:
                                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                                    alignment = Layout.Alignment.ALIGN_NORMAL;
                                                    break;
                                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                                    alignment = Layout.Alignment.ALIGN_CENTER;
                                                    break;
                                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                case KeyModifiers.a /* 9 */:
                                                    alignment = Layout.Alignment.ALIGN_OPPOSITE;
                                                    break;
                                            }
                                            alignment = null;
                                            builder.c = alignment;
                                            int i16 = Integer.MIN_VALUE;
                                            switch (i15) {
                                                case -1:
                                                    break;
                                                case 0:
                                                default:
                                                    q.x("Unknown alignment: ", i15, "SsaParser");
                                                    break;
                                                case 1:
                                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                                    i3 = 0;
                                                    break;
                                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                                    i3 = 1;
                                                    break;
                                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                case KeyModifiers.a /* 9 */:
                                                    i3 = 2;
                                                    break;
                                            }
                                            i3 = Integer.MIN_VALUE;
                                            builder.i = i3;
                                            switch (i15) {
                                                case -1:
                                                    break;
                                                case 0:
                                                default:
                                                    q.x("Unknown alignment: ", i15, "SsaParser");
                                                    break;
                                                case 1:
                                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                    i16 = 2;
                                                    break;
                                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                    i16 = 1;
                                                    break;
                                                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                                case KeyModifiers.a /* 9 */:
                                                    i16 = 0;
                                                    break;
                                            }
                                            builder.g = i16;
                                            PointF pointF2 = pointF;
                                            if (pointF2 != null && f6 != f2 && f != f2) {
                                                builder.h = pointF2.x / f;
                                                builder.e = pointF2.y / f6;
                                                builder.f = 0;
                                            } else {
                                                int i17 = builder.i;
                                                if (i17 != 0) {
                                                    i5 = 1;
                                                    if (i17 != 1) {
                                                        i4 = 2;
                                                        if (i17 != 2) {
                                                            f3 = f2;
                                                        } else {
                                                            f3 = 0.95f;
                                                        }
                                                    } else {
                                                        i4 = 2;
                                                        f3 = 0.5f;
                                                    }
                                                } else {
                                                    i4 = 2;
                                                    i5 = 1;
                                                    f3 = 0.05f;
                                                }
                                                builder.h = f3;
                                                if (i16 != 0) {
                                                    if (i16 != i5) {
                                                        if (i16 != i4) {
                                                            f4 = f2;
                                                        } else {
                                                            f4 = 0.95f;
                                                        }
                                                    } else {
                                                        f4 = 0.5f;
                                                    }
                                                } else {
                                                    f4 = 0.05f;
                                                }
                                                builder.e = f4;
                                                builder.f = 0;
                                            }
                                            Cue a2 = builder.a();
                                            int c = c(e2, arrayList2, arrayList);
                                            for (int c2 = c(e, arrayList2, arrayList); c2 < c; c2++) {
                                                ((List) arrayList.get(c2)).add(a2);
                                            }
                                        }
                                        ssaParser = this;
                                        I = charset;
                                        parsableByteArray2 = parsableByteArray;
                                        ssaDialogueFormat = ssaDialogueFormat2;
                                    }
                                }
                                parseInt = 0;
                                e = e(split[ssaDialogueFormat.b]);
                                if (e != -9223372036854775807L) {
                                }
                            }
                        }
                    }
                    charset = I;
                    ssaDialogueFormat2 = ssaDialogueFormat;
                    parsableByteArray = parsableByteArray2;
                    ssaParser = this;
                    I = charset;
                    parsableByteArray2 = parsableByteArray;
                    ssaDialogueFormat = ssaDialogueFormat2;
                }
            } else {
                for (int i18 = 0; i18 < arrayList.size(); i18++) {
                    List list = (List) arrayList.get(i18);
                    if (!list.isEmpty() || i18 == 0) {
                        if (i18 != arrayList.size() - 1) {
                            long longValue = ((Long) arrayList2.get(i18)).longValue();
                            consumer.accept(new CuesWithTiming(longValue, ((Long) arrayList2.get(i18 + 1)).longValue() - longValue, list));
                        } else {
                            d.d();
                            return;
                        }
                    }
                }
                return;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:185:0x001b  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(ParsableByteArray parsableByteArray, Charset charset) {
        int i;
        int i2;
        int i3;
        Integer num;
        Integer num2;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        SsaStyle ssaStyle;
        int i4;
        while (true) {
            String n = parsableByteArray.n(charset);
            if (n != null) {
                int i5 = 0;
                int i6 = 91;
                if ("[Script Info]".equalsIgnoreCase(n)) {
                    while (true) {
                        String n2 = parsableByteArray.n(charset);
                        if (n2 == null) {
                            break;
                        }
                        if (parsableByteArray.a() != 0) {
                            if (parsableByteArray.h(charset) != 0) {
                                i = Ints.b(r2 >>> 8);
                            } else {
                                i = 1114112;
                            }
                            if (i == 91) {
                                break;
                            }
                        }
                        String[] split = n2.split(":");
                        if (split.length == 2) {
                            String c = Ascii.c(split[0].trim());
                            c.getClass();
                            if (!c.equals("playresx")) {
                                if (c.equals("playresy")) {
                                    try {
                                        this.f = Float.parseFloat(split[1].trim());
                                    } catch (NumberFormatException unused) {
                                    }
                                }
                                String n22 = parsableByteArray.n(charset);
                                if (n22 == null) {
                                    break;
                                }
                            } else {
                                this.e = Float.parseFloat(split[1].trim());
                            }
                        }
                    }
                } else if ("[V4+ Styles]".equalsIgnoreCase(n)) {
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    SsaStyle.Format format = null;
                    while (true) {
                        String n3 = parsableByteArray.n(charset);
                        if (n3 != null) {
                            if (parsableByteArray.a() != 0) {
                                if (parsableByteArray.h(charset) != 0) {
                                    i4 = Ints.b(r0 >>> 8);
                                } else {
                                    i4 = 1114112;
                                }
                                if (i4 == i6) {
                                }
                            }
                            int i7 = -1;
                            if (n3.startsWith("Format:")) {
                                String[] split2 = TextUtils.split(n3.substring(7), ",");
                                int i8 = -1;
                                int i9 = -1;
                                int i10 = -1;
                                int i11 = -1;
                                int i12 = -1;
                                int i13 = -1;
                                int i14 = -1;
                                int i15 = -1;
                                int i16 = -1;
                                int i17 = -1;
                                for (int i18 = i5; i18 < split2.length; i18++) {
                                    String c2 = Ascii.c(split2[i18].trim());
                                    c2.getClass();
                                    switch (c2.hashCode()) {
                                        case -1178781136:
                                            if (c2.equals("italic")) {
                                                i2 = i5;
                                                break;
                                            }
                                            break;
                                        case -1026963764:
                                            if (c2.equals("underline")) {
                                                i2 = 1;
                                                break;
                                            }
                                            break;
                                        case -192095652:
                                            if (c2.equals("strikeout")) {
                                                i2 = 2;
                                                break;
                                            }
                                            break;
                                        case -70925746:
                                            if (c2.equals("primarycolour")) {
                                                i2 = 3;
                                                break;
                                            }
                                            break;
                                        case 3029637:
                                            if (c2.equals("bold")) {
                                                i2 = 4;
                                                break;
                                            }
                                            break;
                                        case 3373707:
                                            if (c2.equals("name")) {
                                                i2 = 5;
                                                break;
                                            }
                                            break;
                                        case 366554320:
                                            if (c2.equals("fontsize")) {
                                                i2 = 6;
                                                break;
                                            }
                                            break;
                                        case 767321349:
                                            if (c2.equals("borderstyle")) {
                                                i2 = 7;
                                                break;
                                            }
                                            break;
                                        case 1767875043:
                                            if (c2.equals("alignment")) {
                                                i2 = 8;
                                                break;
                                            }
                                            break;
                                        case 1988365454:
                                            if (c2.equals("outlinecolour")) {
                                                i2 = 9;
                                                break;
                                            }
                                            break;
                                    }
                                    i2 = -1;
                                    switch (i2) {
                                        case 0:
                                            i14 = i18;
                                            break;
                                        case 1:
                                            i15 = i18;
                                            break;
                                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                            i16 = i18;
                                            break;
                                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                            i10 = i18;
                                            break;
                                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                            i13 = i18;
                                            break;
                                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                            i8 = i18;
                                            break;
                                        case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                            i12 = i18;
                                            break;
                                        case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                            i17 = i18;
                                            break;
                                        case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                            i9 = i18;
                                            break;
                                        case KeyModifiers.a /* 9 */:
                                            i11 = i18;
                                            break;
                                    }
                                }
                                if (i8 != -1) {
                                    format = new SsaStyle.Format(i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, split2.length);
                                } else {
                                    format = null;
                                }
                            } else {
                                if (n3.startsWith("Style:")) {
                                    if (format == null) {
                                        Log.f("SsaParser", "Skipping 'Style:' line before 'Format:' line: ".concat(n3));
                                    } else {
                                        Preconditions.e(n3.startsWith("Style:"));
                                        String[] split3 = TextUtils.split(n3.substring(6), ",");
                                        int length = split3.length;
                                        int i19 = format.k;
                                        if (length != i19) {
                                            int length2 = split3.length;
                                            String str = Util.a;
                                            Locale locale = Locale.US;
                                            StringBuilder k = jb.k("Skipping malformed 'Style:' line (expected ", i19, " values, found ", length2, "): '");
                                            k.append(n3);
                                            k.append("'");
                                            Log.f("SsaStyle", k.toString());
                                        } else {
                                            try {
                                                String trim = split3[format.a].trim();
                                                int i20 = format.b;
                                                if (i20 != -1) {
                                                    i3 = SsaStyle.a(split3[i20].trim());
                                                } else {
                                                    i3 = -1;
                                                }
                                                int i21 = format.c;
                                                if (i21 != -1) {
                                                    num = SsaStyle.c(split3[i21].trim());
                                                } else {
                                                    num = null;
                                                }
                                                int i22 = format.d;
                                                if (i22 != -1) {
                                                    num2 = SsaStyle.c(split3[i22].trim());
                                                } else {
                                                    num2 = null;
                                                }
                                                int i23 = format.e;
                                                float f = -3.4028235E38f;
                                                if (i23 != -1) {
                                                    String trim2 = split3[i23].trim();
                                                    try {
                                                        f = Float.parseFloat(trim2);
                                                    } catch (NumberFormatException e) {
                                                        Log.g("SsaStyle", "Failed to parse font size: '" + trim2 + "'", e);
                                                    }
                                                }
                                                float f2 = f;
                                                int i24 = format.f;
                                                if (i24 != -1 && SsaStyle.b(split3[i24].trim())) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                int i25 = format.g;
                                                if (i25 != -1 && SsaStyle.b(split3[i25].trim())) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                int i26 = format.h;
                                                if (i26 != -1 && SsaStyle.b(split3[i26].trim())) {
                                                    z3 = true;
                                                } else {
                                                    z3 = false;
                                                }
                                                int i27 = format.i;
                                                if (i27 != -1 && SsaStyle.b(split3[i27].trim())) {
                                                    z4 = true;
                                                } else {
                                                    z4 = false;
                                                }
                                                int i28 = format.j;
                                                if (i28 != -1) {
                                                    String trim3 = split3[i28].trim();
                                                    try {
                                                        int parseInt = Integer.parseInt(trim3.trim());
                                                        if (parseInt == 1 || parseInt == 3) {
                                                            i7 = parseInt;
                                                        }
                                                    } catch (NumberFormatException unused2) {
                                                    }
                                                    Log.f("SsaStyle", "Ignoring unknown BorderStyle: " + trim3);
                                                }
                                                ssaStyle = new SsaStyle(trim, i3, num, num2, f2, z, z2, z3, z4, i7);
                                            } catch (RuntimeException e2) {
                                                Log.g("SsaStyle", "Skipping malformed 'Style:' line: '" + n3 + "'", e2);
                                            }
                                            if (ssaStyle != null) {
                                                linkedHashMap.put(ssaStyle.a, ssaStyle);
                                            }
                                        }
                                        ssaStyle = null;
                                        if (ssaStyle != null) {
                                        }
                                    }
                                }
                                i5 = 0;
                                i6 = 91;
                            }
                        }
                    }
                    this.d = linkedHashMap;
                } else if ("[V4 Styles]".equalsIgnoreCase(n)) {
                    Log.e("SsaParser", "[V4 Styles] are not supported");
                } else if ("[Events]".equalsIgnoreCase(n)) {
                    return;
                }
            } else {
                return;
            }
        }
    }
}
