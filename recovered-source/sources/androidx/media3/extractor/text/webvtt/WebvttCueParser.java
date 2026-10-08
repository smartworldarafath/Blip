package androidx.media3.extractor.text.webvtt;

import android.graphics.Color;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.SpannedString;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.text.VoiceSpan;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import com.google.common.base.Preconditions;
import defpackage.q;
import defpackage.u2;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WebvttCueParser {
    public static final Pattern a = Pattern.compile("^(\\S+)\\s+-->\\s+(\\S+)((?:.|\\f)*+)?$");
    public static final Pattern b = Pattern.compile("(\\S+?):(\\S+)");
    public static final Map c;
    public static final Map d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Element {
        public static final a c = new Object();
        public final StartTag a;
        public final int b;

        public Element(StartTag startTag, int i) {
            this.a = startTag;
            this.b = i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StartTag {
        public final String a;
        public final int b;
        public final String c;
        public final Set d;

        public StartTag(String str, int i, String str2, Set set) {
            this.b = i;
            this.a = str;
            this.c = str2;
            this.d = set;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StyleMatch implements Comparable<StyleMatch> {
        public final int j;
        public final WebvttCssStyle k;

        public StyleMatch(int i, WebvttCssStyle webvttCssStyle) {
            this.j = i;
            this.k = webvttCssStyle;
        }

        @Override // java.lang.Comparable
        public final int compareTo(StyleMatch styleMatch) {
            return Integer.compare(this.j, styleMatch.j);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class WebvttCueInfoBuilder {
        public CharSequence c;
        public long a = 0;
        public long b = 0;
        public int d = 2;
        public float e = -3.4028235E38f;
        public int f = 1;
        public int g = 0;
        public float h = -3.4028235E38f;
        public int i = Integer.MIN_VALUE;
        public float j = 1.0f;
        public int k = Integer.MIN_VALUE;

        /* JADX WARN: Code restructure failed: missing block: B:52:0x0072, code lost:
        
            if (r7 == 0) goto L39;
         */
        /* JADX WARN: Removed duplicated region for block: B:36:0x0085  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00ae  */
        /* JADX WARN: Removed duplicated region for block: B:49:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:51:0x0070  */
        /* JADX WARN: Removed duplicated region for block: B:52:0x0072  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Cue.Builder a() {
            Layout.Alignment alignment;
            float f;
            CharSequence charSequence;
            float f2 = this.h;
            float f3 = -3.4028235E38f;
            if (f2 == -3.4028235E38f) {
                int i = this.d;
                if (i != 4) {
                    if (i != 5) {
                        f2 = 0.5f;
                    } else {
                        f2 = 1.0f;
                    }
                } else {
                    f2 = 0.0f;
                }
            }
            int i2 = this.i;
            if (i2 == Integer.MIN_VALUE) {
                int i3 = this.d;
                if (i3 != 1) {
                    if (i3 != 3) {
                        if (i3 != 4) {
                            if (i3 != 5) {
                                i2 = 1;
                            }
                        }
                    }
                    i2 = 2;
                }
                i2 = 0;
            }
            Cue.Builder builder = new Cue.Builder();
            int i4 = this.d;
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 != 4) {
                            if (i4 != 5) {
                                q.x("Unknown textAlignment: ", i4, "WebvttCueParser");
                                alignment = null;
                            }
                        }
                    }
                    alignment = Layout.Alignment.ALIGN_OPPOSITE;
                } else {
                    alignment = Layout.Alignment.ALIGN_CENTER;
                }
                builder.c = alignment;
                f = this.e;
                int i5 = this.f;
                if (f != -3.4028235E38f || i5 != 0 || (f >= 0.0f && f <= 1.0f)) {
                    if (f == -3.4028235E38f) {
                        f3 = f;
                    }
                    builder.e = f3;
                    builder.f = i5;
                    builder.g = this.g;
                    builder.h = f2;
                    builder.i = i2;
                    float f4 = this.j;
                    if (i2 != 0) {
                        if (i2 != 1) {
                            if (i2 != 2) {
                                u2.l(String.valueOf(i2));
                                return null;
                            }
                        } else if (f2 <= 0.5f) {
                            f2 *= 2.0f;
                        } else {
                            f2 = (1.0f - f2) * 2.0f;
                        }
                    } else {
                        f2 = 1.0f - f2;
                    }
                    builder.l = Math.min(f4, f2);
                    builder.p = this.k;
                    charSequence = this.c;
                    if (charSequence != null) {
                        builder.b(charSequence);
                    }
                    return builder;
                }
                f3 = 1.0f;
                builder.e = f3;
                builder.f = i5;
                builder.g = this.g;
                builder.h = f2;
                builder.i = i2;
                float f42 = this.j;
                if (i2 != 0) {
                }
                builder.l = Math.min(f42, f2);
                builder.p = this.k;
                charSequence = this.c;
                if (charSequence != null) {
                }
                return builder;
            }
            alignment = Layout.Alignment.ALIGN_NORMAL;
            builder.c = alignment;
            f = this.e;
            int i52 = this.f;
            if (f != -3.4028235E38f) {
            }
            if (f == -3.4028235E38f) {
            }
            builder.e = f3;
            builder.f = i52;
            builder.g = this.g;
            builder.h = f2;
            builder.i = i2;
            float f422 = this.j;
            if (i2 != 0) {
            }
            builder.l = Math.min(f422, f2);
            builder.p = this.k;
            charSequence = this.c;
            if (charSequence != null) {
            }
            return builder;
        }
    }

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap.put("lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap.put("cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap.put("red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap.put("yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap.put("magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap.put("blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap.put("black", Integer.valueOf(Color.rgb(0, 0, 0)));
        c = Collections.unmodifiableMap(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put("bg_white", Integer.valueOf(Color.rgb(255, 255, 255)));
        hashMap2.put("bg_lime", Integer.valueOf(Color.rgb(0, 255, 0)));
        hashMap2.put("bg_cyan", Integer.valueOf(Color.rgb(0, 255, 255)));
        hashMap2.put("bg_red", Integer.valueOf(Color.rgb(255, 0, 0)));
        hashMap2.put("bg_yellow", Integer.valueOf(Color.rgb(255, 255, 0)));
        hashMap2.put("bg_magenta", Integer.valueOf(Color.rgb(255, 0, 255)));
        hashMap2.put("bg_blue", Integer.valueOf(Color.rgb(0, 0, 255)));
        hashMap2.put("bg_black", Integer.valueOf(Color.rgb(0, 0, 0)));
        d = Collections.unmodifiableMap(hashMap2);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static void a(String str, StartTag startTag, List list, SpannableStringBuilder spannableStringBuilder, List list2) {
        char c2;
        char c3;
        char c4;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = startTag.b;
        int length = spannableStringBuilder.length();
        String str2 = startTag.a;
        str2.getClass();
        int i7 = -1;
        switch (str2.hashCode()) {
            case 0:
                if (str2.equals("")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 98:
                if (str2.equals("b")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 99:
                if (str2.equals("c")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 105:
                if (str2.equals("i")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 117:
                if (str2.equals("u")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 118:
                if (str2.equals("v")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 3314158:
                if (str2.equals("lang")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 3511770:
                if (str2.equals("ruby")) {
                    c2 = 7;
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
            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                break;
            case 1:
                spannableStringBuilder.setSpan(new StyleSpan(1), i6, length, 33);
                break;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                for (String str3 : startTag.d) {
                    Map map = c;
                    if (map.containsKey(str3)) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(((Integer) map.get(str3)).intValue()), i6, length, 33);
                    } else {
                        Map map2 = d;
                        if (map2.containsKey(str3)) {
                            spannableStringBuilder.setSpan(new BackgroundColorSpan(((Integer) map2.get(str3)).intValue()), i6, length, 33);
                        }
                    }
                }
                break;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                spannableStringBuilder.setSpan(new StyleSpan(2), i6, length, 33);
                break;
            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                spannableStringBuilder.setSpan(new UnderlineSpan(), i6, length, 33);
                break;
            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                spannableStringBuilder.setSpan(new VoiceSpan(startTag.c), i6, length, 33);
                break;
            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                int c5 = c(list2, str, startTag);
                ArrayList arrayList = new ArrayList(list.size());
                arrayList.addAll(list);
                Collections.sort(arrayList, Element.c);
                int i8 = startTag.b;
                int i9 = 0;
                int i10 = 0;
                while (i9 < arrayList.size()) {
                    if ("rt".equals(((Element) arrayList.get(i9)).a.a)) {
                        Element element = (Element) arrayList.get(i9);
                        int c6 = c(list2, str, element.a);
                        if (c6 == i7) {
                            if (c5 != i7) {
                                c6 = c5;
                            } else {
                                c6 = 1;
                            }
                        }
                        int i11 = element.a.b - i10;
                        int i12 = element.b - i10;
                        CharSequence subSequence = spannableStringBuilder.subSequence(i11, i12);
                        spannableStringBuilder.delete(i11, i12);
                        spannableStringBuilder.setSpan(new RubySpan(subSequence.toString(), c6), i8, i11, 33);
                        i10 = subSequence.length() + i10;
                        i8 = i11;
                    }
                    i9++;
                    i7 = -1;
                }
                break;
            default:
                return;
        }
        ArrayList b2 = b(list2, str, startTag);
        for (int i13 = 0; i13 < b2.size(); i13++) {
            WebvttCssStyle webvttCssStyle = ((StyleMatch) b2.get(i13)).k;
            int i14 = webvttCssStyle.l;
            if (i14 == -1 && webvttCssStyle.m == -1) {
                i = -1;
            } else {
                if (i14 == 1) {
                    c3 = 1;
                } else {
                    c3 = 0;
                }
                if (webvttCssStyle.m == 1) {
                    c4 = 2;
                } else {
                    c4 = 0;
                }
                i = c4 | c3;
            }
            if (i != -1) {
                int i15 = webvttCssStyle.l;
                if (i15 == -1 && webvttCssStyle.m == -1) {
                    i5 = -1;
                    i2 = 1;
                } else {
                    i2 = 1;
                    if (i15 == 1) {
                        i3 = 1;
                    } else {
                        i3 = 0;
                    }
                    if (webvttCssStyle.m == 1) {
                        i4 = 2;
                    } else {
                        i4 = 0;
                    }
                    i5 = i3 | i4;
                }
                SpanUtil.a(spannableStringBuilder, new StyleSpan(i5), i6, length);
            } else {
                i2 = 1;
            }
            if (webvttCssStyle.j == i2) {
                spannableStringBuilder.setSpan(new StrikethroughSpan(), i6, length, 33);
            }
            if (webvttCssStyle.k == i2) {
                spannableStringBuilder.setSpan(new UnderlineSpan(), i6, length, 33);
            }
            if (webvttCssStyle.g) {
                if (webvttCssStyle.g) {
                    SpanUtil.a(spannableStringBuilder, new ForegroundColorSpan(webvttCssStyle.f), i6, length);
                } else {
                    u2.l("Font color not defined");
                    return;
                }
            }
            if (webvttCssStyle.i) {
                if (webvttCssStyle.i) {
                    SpanUtil.a(spannableStringBuilder, new BackgroundColorSpan(webvttCssStyle.h), i6, length);
                } else {
                    u2.l("Background color not defined.");
                    return;
                }
            }
            if (webvttCssStyle.e != null) {
                SpanUtil.a(spannableStringBuilder, new TypefaceSpan(webvttCssStyle.e), i6, length);
            }
            int i16 = webvttCssStyle.n;
            if (i16 != 1) {
                if (i16 != 2) {
                    if (i16 == 3) {
                        SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(webvttCssStyle.o / 100.0f), i6, length);
                    }
                } else {
                    SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(webvttCssStyle.o), i6, length);
                }
            } else {
                SpanUtil.a(spannableStringBuilder, new AbsoluteSizeSpan((int) webvttCssStyle.o, true), i6, length);
            }
            if (webvttCssStyle.q) {
                spannableStringBuilder.setSpan(new Object(), i6, length, 33);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ArrayList b(List list, String str, StartTag startTag) {
        int i;
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            WebvttCssStyle webvttCssStyle = (WebvttCssStyle) list.get(i2);
            String str2 = startTag.a;
            Set set = startTag.d;
            String str3 = startTag.c;
            if (webvttCssStyle.a.isEmpty() && webvttCssStyle.b.isEmpty() && webvttCssStyle.c.isEmpty() && webvttCssStyle.d.isEmpty()) {
                i = TextUtils.isEmpty(str2);
            } else {
                int a2 = WebvttCssStyle.a(WebvttCssStyle.a(WebvttCssStyle.a(0, 1073741824, webvttCssStyle.a, str), 2, webvttCssStyle.b, str2), 4, webvttCssStyle.d, str3);
                if (a2 != -1 && set.containsAll(webvttCssStyle.c)) {
                    i = a2 + (webvttCssStyle.c.size() * 4);
                } else {
                    i = 0;
                }
            }
            if (i > 0) {
                arrayList.add(new StyleMatch(i, webvttCssStyle));
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    public static int c(List list, String str, StartTag startTag) {
        ArrayList b2 = b(list, str, startTag);
        for (int i = 0; i < b2.size(); i++) {
            int i2 = ((StyleMatch) b2.get(i)).k.p;
            if (i2 != -1) {
                return i2;
            }
        }
        return -1;
    }

    public static WebvttCueInfo d(String str, Matcher matcher, ParsableByteArray parsableByteArray, ArrayList arrayList) {
        WebvttCueInfoBuilder webvttCueInfoBuilder = new WebvttCueInfoBuilder();
        try {
            String group = matcher.group(1);
            group.getClass();
            webvttCueInfoBuilder.a = WebvttParserUtil.b(group);
            String group2 = matcher.group(2);
            group2.getClass();
            webvttCueInfoBuilder.b = WebvttParserUtil.b(group2);
            String group3 = matcher.group(3);
            group3.getClass();
            e(group3, webvttCueInfoBuilder);
            StringBuilder sb = new StringBuilder();
            parsableByteArray.getClass();
            String n = parsableByteArray.n(StandardCharsets.UTF_8);
            while (!TextUtils.isEmpty(n)) {
                if (sb.length() > 0) {
                    sb.append("\n");
                }
                sb.append(n.trim());
                n = parsableByteArray.n(StandardCharsets.UTF_8);
            }
            webvttCueInfoBuilder.c = f(str, sb.toString(), arrayList);
            return new WebvttCueInfo(webvttCueInfoBuilder.a().a(), webvttCueInfoBuilder.a, webvttCueInfoBuilder.b);
        } catch (IllegalArgumentException unused) {
            Log.f("WebvttCueParser", "Skipping cue with bad header: " + matcher.group());
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:101:0x0081, code lost:
    
        if (r6.equals("center") == false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c2, code lost:
    
        if (r7.equals("start") == false) goto L53;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void e(String str, WebvttCueInfoBuilder webvttCueInfoBuilder) {
        int i;
        int i2;
        int i3;
        Matcher matcher = b.matcher(str);
        while (matcher.find()) {
            String group = matcher.group(1);
            group.getClass();
            String group2 = matcher.group(2);
            group2.getClass();
            try {
                if ("line".equals(group)) {
                    g(group2, webvttCueInfoBuilder);
                } else {
                    char c2 = 5;
                    boolean z = false;
                    if ("align".equals(group)) {
                        switch (group2.hashCode()) {
                            case -1364013995:
                                break;
                            case -1074341483:
                                if (group2.equals("middle")) {
                                    z = true;
                                    break;
                                }
                                break;
                            case 100571:
                                if (group2.equals("end")) {
                                    z = 2;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (group2.equals("left")) {
                                    z = 3;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (group2.equals("right")) {
                                    z = 4;
                                    break;
                                }
                                break;
                            case 109757538:
                                if (group2.equals("start")) {
                                    z = 5;
                                    break;
                                }
                                break;
                        }
                        z = -1;
                        switch (z) {
                            case false:
                            case true:
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                i = 3;
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                i = 4;
                                break;
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                i = 5;
                                break;
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                i = 1;
                                break;
                            default:
                                Log.f("WebvttCueParser", "Invalid alignment value: ".concat(group2));
                                break;
                        }
                        i = 2;
                        webvttCueInfoBuilder.d = i;
                    } else if ("position".equals(group)) {
                        int indexOf = group2.indexOf(44);
                        if (indexOf != -1) {
                            String substring = group2.substring(indexOf + 1);
                            switch (substring.hashCode()) {
                                case -1842484672:
                                    if (substring.equals("line-left")) {
                                        c2 = 0;
                                        break;
                                    }
                                    break;
                                case -1364013995:
                                    if (substring.equals("center")) {
                                        c2 = 1;
                                        break;
                                    }
                                    break;
                                case -1276788989:
                                    if (substring.equals("line-right")) {
                                        c2 = 2;
                                        break;
                                    }
                                    break;
                                case -1074341483:
                                    if (substring.equals("middle")) {
                                        c2 = 3;
                                        break;
                                    }
                                    break;
                                case 100571:
                                    if (substring.equals("end")) {
                                        c2 = 4;
                                        break;
                                    }
                                    break;
                                case 109757538:
                                    break;
                            }
                            c2 = 65535;
                            switch (c2) {
                                case 0:
                                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                    i2 = 0;
                                    break;
                                case 1:
                                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                    i2 = 1;
                                    break;
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                    i2 = 2;
                                    break;
                                default:
                                    Log.f("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                                    i2 = Integer.MIN_VALUE;
                                    break;
                            }
                            webvttCueInfoBuilder.i = i2;
                            group2 = group2.substring(0, indexOf);
                        }
                        webvttCueInfoBuilder.h = WebvttParserUtil.a(group2);
                    } else if ("size".equals(group)) {
                        webvttCueInfoBuilder.j = WebvttParserUtil.a(group2);
                    } else if ("vertical".equals(group)) {
                        if (!group2.equals("lr")) {
                            if (!group2.equals("rl")) {
                                Log.f("WebvttCueParser", "Invalid 'vertical' value: ".concat(group2));
                                i3 = Integer.MIN_VALUE;
                            } else {
                                i3 = 1;
                            }
                        } else {
                            i3 = 2;
                        }
                        webvttCueInfoBuilder.k = i3;
                    } else {
                        Log.f("WebvttCueParser", "Unknown cue setting " + group + ":" + group2);
                    }
                }
            } catch (NumberFormatException unused) {
                Log.f("WebvttCueParser", "Skipping bad cue setting: " + matcher.group());
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x01db, code lost:
    
        switch(r10) {
            case 0: goto L123;
            case 1: goto L122;
            case 2: goto L121;
            case 3: goto L120;
            default: goto L119;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x01de, code lost:
    
        androidx.media3.common.util.Log.f("WebvttCueParser", "ignoring unsupported entity: '&" + r7 + ";'");
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0206, code lost:
    
        if (r6 != r15) goto L126;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0208, code lost:
    
        r3.append((java.lang.CharSequence) " ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x020b, code lost:
    
        r7 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x01f7, code lost:
    
        r3.append(' ');
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x01fb, code lost:
    
        r3.append('&');
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x01ff, code lost:
    
        r3.append('<');
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0203, code lost:
    
        r3.append('>');
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:64:0x00a4. Please report as an issue. */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static SpannedString f(String str, String str2, List list) {
        boolean z;
        boolean z2;
        int i;
        char c2;
        char c3;
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        ArrayDeque arrayDeque = new ArrayDeque();
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (true) {
            String str3 = "";
            if (i2 < str2.length()) {
                char charAt = str2.charAt(i2);
                char c4 = 65535;
                if (charAt != '&') {
                    if (charAt != '<') {
                        spannableStringBuilder.append(charAt);
                        i2++;
                    } else {
                        int i3 = i2 + 1;
                        if (i3 < str2.length()) {
                            if (str2.charAt(i3) == '/') {
                                z = true;
                            } else {
                                z = false;
                            }
                            int indexOf = str2.indexOf(62, i3);
                            if (indexOf == -1) {
                                i3 = str2.length();
                            } else {
                                i3 = indexOf + 1;
                            }
                            int i4 = i3 - 2;
                            if (str2.charAt(i4) == '/') {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z) {
                                i = 2;
                            } else {
                                i = 1;
                            }
                            int i5 = i2 + i;
                            if (!z2) {
                                i4 = i3 - 1;
                            }
                            String substring = str2.substring(i5, i4);
                            if (!substring.trim().isEmpty()) {
                                String trim = substring.trim();
                                Preconditions.e(!trim.isEmpty());
                                String str4 = Util.a;
                                String str5 = trim.split("[ \\.]", 2)[0];
                                str5.getClass();
                                switch (str5.hashCode()) {
                                    case 98:
                                        if (str5.equals("b")) {
                                            c2 = 0;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 99:
                                        if (str5.equals("c")) {
                                            c2 = 1;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 105:
                                        if (str5.equals("i")) {
                                            c2 = 2;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 117:
                                        if (str5.equals("u")) {
                                            c2 = 3;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 118:
                                        if (str5.equals("v")) {
                                            c2 = 4;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 3650:
                                        if (str5.equals("rt")) {
                                            c2 = 5;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 3314158:
                                        if (str5.equals("lang")) {
                                            c2 = 6;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 3511770:
                                        if (str5.equals("ruby")) {
                                            c2 = 7;
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
                                    case 1:
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                        if (!z) {
                                            if (!z2) {
                                                int length = spannableStringBuilder.length();
                                                String trim2 = substring.trim();
                                                Preconditions.e(!trim2.isEmpty());
                                                int indexOf2 = trim2.indexOf(" ");
                                                if (indexOf2 == -1) {
                                                    c3 = 0;
                                                } else {
                                                    str3 = trim2.substring(indexOf2).trim();
                                                    c3 = 0;
                                                    trim2 = trim2.substring(0, indexOf2);
                                                }
                                                String[] split = trim2.split("\\.", -1);
                                                String str6 = split[c3];
                                                HashSet hashSet = new HashSet();
                                                for (int i6 = 1; i6 < split.length; i6++) {
                                                    hashSet.add(split[i6]);
                                                }
                                                arrayDeque.push(new StartTag(str6, length, str3, hashSet));
                                            }
                                        }
                                        while (!arrayDeque.isEmpty()) {
                                            StartTag startTag = (StartTag) arrayDeque.pop();
                                            a(str, startTag, arrayList, spannableStringBuilder, list);
                                            if (!arrayDeque.isEmpty()) {
                                                arrayList.add(new Element(startTag, spannableStringBuilder.length()));
                                            } else {
                                                arrayList.clear();
                                            }
                                            if (startTag.a.equals(str5)) {
                                            }
                                        }
                                    default:
                                        i2 = i3;
                                        break;
                                }
                            }
                        }
                        i2 = i3;
                    }
                } else {
                    i2++;
                    int indexOf3 = str2.indexOf(59, i2);
                    int indexOf4 = str2.indexOf(32, i2);
                    if (indexOf3 == -1) {
                        indexOf3 = indexOf4;
                    } else if (indexOf4 != -1) {
                        indexOf3 = Math.min(indexOf3, indexOf4);
                    }
                    if (indexOf3 != -1) {
                        String substring2 = str2.substring(i2, indexOf3);
                        switch (substring2.hashCode()) {
                            case 3309:
                                if (substring2.equals("gt")) {
                                    c4 = 0;
                                    break;
                                }
                                break;
                            case 3464:
                                if (substring2.equals("lt")) {
                                    c4 = 1;
                                    break;
                                }
                                break;
                            case 96708:
                                if (substring2.equals("amp")) {
                                    c4 = 2;
                                    break;
                                }
                                break;
                            case 3374865:
                                if (substring2.equals("nbsp")) {
                                    c4 = 3;
                                    break;
                                }
                                break;
                        }
                    } else {
                        spannableStringBuilder.append(charAt);
                    }
                }
            } else {
                while (!arrayDeque.isEmpty()) {
                    a(str, (StartTag) arrayDeque.pop(), arrayList, spannableStringBuilder, list);
                }
                a(str, new StartTag("", 0, "", Collections.EMPTY_SET), Collections.EMPTY_LIST, spannableStringBuilder, list);
                return SpannedString.valueOf(spannableStringBuilder);
            }
        }
    }

    public static void g(String str, WebvttCueInfoBuilder webvttCueInfoBuilder) {
        int indexOf = str.indexOf(44);
        char c2 = 65535;
        if (indexOf != -1) {
            String substring = str.substring(indexOf + 1);
            int i = 2;
            switch (substring.hashCode()) {
                case -1364013995:
                    if (substring.equals("center")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1074341483:
                    if (substring.equals("middle")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 100571:
                    if (substring.equals("end")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 109757538:
                    if (substring.equals("start")) {
                        c2 = 3;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                case 1:
                    i = 1;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    i = 0;
                    break;
                default:
                    Log.f("WebvttCueParser", "Invalid anchor value: ".concat(substring));
                    i = Integer.MIN_VALUE;
                    break;
            }
            webvttCueInfoBuilder.g = i;
            str = str.substring(0, indexOf);
        }
        if (str.endsWith("%")) {
            webvttCueInfoBuilder.e = WebvttParserUtil.a(str);
            webvttCueInfoBuilder.f = 0;
        } else {
            webvttCueInfoBuilder.e = Integer.parseInt(str);
            webvttCueInfoBuilder.f = 1;
        }
    }
}
