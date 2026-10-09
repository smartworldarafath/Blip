package androidx.media3.extractor.text.webvtt;

import android.text.TextUtils;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import defpackage.u2;
import io.sentry.d;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WebvttParser implements SubtitleParser {
    public final ParsableByteArray a = new ParsableByteArray();
    public final WebvttCssParser b = new WebvttCssParser();

    /* JADX WARN: Code restructure failed: missing block: B:192:0x039b, code lost:
    
        r1.addAll(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:219:0x0112, code lost:
    
        if (")".equals(androidx.media3.extractor.text.webvtt.WebvttCssParser.b(r11, r6)) == false) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v12, types: [androidx.media3.extractor.text.webvtt.WebvttCssStyle, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // androidx.media3.extractor.text.SubtitleParser
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void b(byte[] bArr, int i, int i2, Consumer consumer) {
        WebvttCueInfo webvttCueInfo;
        String str;
        int i3;
        boolean z;
        String sb;
        char c;
        int i4;
        boolean z2;
        ?? r14;
        WebvttParser webvttParser = this;
        ParsableByteArray parsableByteArray = webvttParser.a;
        parsableByteArray.K(i + i2, bArr);
        parsableByteArray.M(i);
        ArrayList arrayList = new ArrayList();
        try {
            WebvttParserUtil.c(parsableByteArray);
            do {
            } while (!TextUtils.isEmpty(parsableByteArray.n(StandardCharsets.UTF_8)));
            ArrayList arrayList2 = new ArrayList();
            while (true) {
                boolean z3 = false;
                int i5 = -1;
                int i6 = 0;
                char c2 = 65535;
                while (true) {
                    int i7 = 1;
                    if (c2 == 65535) {
                        i6 = parsableByteArray.b;
                        String n = parsableByteArray.n(StandardCharsets.UTF_8);
                        if (n == null) {
                            c2 = 0;
                        } else if ("STYLE".equals(n)) {
                            c2 = 2;
                        } else if (n.startsWith("NOTE")) {
                            c2 = 1;
                        } else {
                            c2 = 3;
                        }
                    } else {
                        parsableByteArray.M(i6);
                        if (c2 != 0) {
                            if (c2 == 1) {
                                do {
                                } while (!TextUtils.isEmpty(parsableByteArray.n(StandardCharsets.UTF_8)));
                            } else {
                                String str2 = null;
                                if (c2 == 2) {
                                    if (arrayList2.isEmpty()) {
                                        parsableByteArray.n(StandardCharsets.UTF_8);
                                        WebvttCssParser webvttCssParser = webvttParser.b;
                                        ParsableByteArray parsableByteArray2 = webvttCssParser.a;
                                        StringBuilder sb2 = webvttCssParser.b;
                                        sb2.setLength(0);
                                        int i8 = parsableByteArray.b;
                                        do {
                                        } while (!TextUtils.isEmpty(parsableByteArray.n(StandardCharsets.UTF_8)));
                                        parsableByteArray2.K(parsableByteArray.b, parsableByteArray.a);
                                        parsableByteArray2.M(i8);
                                        ArrayList arrayList3 = new ArrayList();
                                        while (true) {
                                            WebvttCssParser.c(parsableByteArray2);
                                            if (parsableByteArray2.a() >= 5 && "::cue".equals(parsableByteArray2.x(5, StandardCharsets.UTF_8))) {
                                                int i9 = parsableByteArray2.b;
                                                String b = WebvttCssParser.b(parsableByteArray2, sb2);
                                                if (b != null) {
                                                    if ("{".equals(b)) {
                                                        parsableByteArray2.M(i9);
                                                        str = "";
                                                    } else if ("(".equals(b)) {
                                                        int i10 = parsableByteArray2.b;
                                                        int i11 = parsableByteArray2.c;
                                                        int i12 = z3 ? 1 : 0;
                                                        while (i10 < i11 && i12 == 0) {
                                                            int i13 = i10 + 1;
                                                            if (((char) parsableByteArray2.a[i10]) == ')') {
                                                                i3 = i7;
                                                            } else {
                                                                i3 = z3 ? 1 : 0;
                                                            }
                                                            i12 = i3;
                                                            i10 = i13;
                                                        }
                                                        str = parsableByteArray2.x((i10 - 1) - parsableByteArray2.b, StandardCharsets.UTF_8).trim();
                                                    } else {
                                                        str = str2;
                                                    }
                                                    if (str == null && "{".equals(WebvttCssParser.b(parsableByteArray2, sb2))) {
                                                        ?? obj = new Object();
                                                        obj.a = "";
                                                        obj.b = "";
                                                        obj.c = Collections.EMPTY_SET;
                                                        obj.d = "";
                                                        obj.e = str2;
                                                        obj.g = z3;
                                                        obj.i = z3;
                                                        obj.j = i5;
                                                        obj.k = i5;
                                                        obj.l = i5;
                                                        obj.m = i5;
                                                        obj.n = i5;
                                                        obj.p = i5;
                                                        obj.q = z3;
                                                        if (!str.isEmpty()) {
                                                            int indexOf = str.indexOf(91);
                                                            if (indexOf != i5) {
                                                                Matcher matcher = WebvttCssParser.c.matcher(str.substring(indexOf));
                                                                if (matcher.matches()) {
                                                                    String group = matcher.group(i7);
                                                                    group.getClass();
                                                                    obj.d = group;
                                                                }
                                                                str = str.substring(z3 ? 1 : 0, indexOf);
                                                            }
                                                            String str3 = Util.a;
                                                            String[] split = str.split("\\.", i5);
                                                            String str4 = split[z3 ? 1 : 0];
                                                            int indexOf2 = str4.indexOf(35);
                                                            if (indexOf2 != i5) {
                                                                obj.b = str4.substring(z3 ? 1 : 0, indexOf2);
                                                                obj.a = str4.substring(indexOf2 + 1);
                                                            } else {
                                                                obj.b = str4;
                                                            }
                                                            if (split.length > i7) {
                                                                int length = split.length;
                                                                if (length <= split.length) {
                                                                    r14 = i7;
                                                                } else {
                                                                    r14 = z3 ? 1 : 0;
                                                                }
                                                                Preconditions.e(r14);
                                                                obj.c = new HashSet(Arrays.asList((String[]) Arrays.copyOfRange(split, i7, length)));
                                                            }
                                                        }
                                                        boolean z4 = z3 ? 1 : 0;
                                                        String str5 = str2;
                                                        ?? r9 = i7;
                                                        while (z4 == 0) {
                                                            int i14 = parsableByteArray2.b;
                                                            str5 = WebvttCssParser.b(parsableByteArray2, sb2);
                                                            if (str5 != null && !"}".equals(str5)) {
                                                                z = z3;
                                                            } else {
                                                                z = r9;
                                                            }
                                                            if (z == 0) {
                                                                parsableByteArray2.M(i14);
                                                                WebvttCssParser.c(parsableByteArray2);
                                                                String a = WebvttCssParser.a(parsableByteArray2, sb2);
                                                                if (!a.isEmpty() && ":".equals(WebvttCssParser.b(parsableByteArray2, sb2))) {
                                                                    WebvttCssParser.c(parsableByteArray2);
                                                                    StringBuilder sb3 = new StringBuilder();
                                                                    boolean z5 = false;
                                                                    while (true) {
                                                                        if (!z5) {
                                                                            int i15 = parsableByteArray2.b;
                                                                            String b2 = WebvttCssParser.b(parsableByteArray2, sb2);
                                                                            if (b2 == null) {
                                                                                sb = null;
                                                                            } else if (!"}".equals(b2) && !";".equals(b2)) {
                                                                                sb3.append(b2);
                                                                            } else {
                                                                                parsableByteArray2.M(i15);
                                                                                z5 = true;
                                                                            }
                                                                        } else {
                                                                            sb = sb3.toString();
                                                                        }
                                                                    }
                                                                    if (sb != null && !sb.isEmpty()) {
                                                                        int i16 = parsableByteArray2.b;
                                                                        String b3 = WebvttCssParser.b(parsableByteArray2, sb2);
                                                                        if (!";".equals(b3)) {
                                                                            if ("}".equals(b3)) {
                                                                                parsableByteArray2.M(i16);
                                                                            }
                                                                        }
                                                                        if ("color".equals(a)) {
                                                                            obj.f = ColorParser.a(sb, true);
                                                                            obj.g = true;
                                                                        } else if ("background-color".equals(a)) {
                                                                            obj.h = ColorParser.a(sb, true);
                                                                            obj.i = true;
                                                                        } else {
                                                                            if ("ruby-position".equals(a)) {
                                                                                if ("over".equals(sb)) {
                                                                                    obj.p = 1;
                                                                                } else if ("under".equals(sb)) {
                                                                                    obj.p = 2;
                                                                                }
                                                                            } else if ("text-combine-upright".equals(a)) {
                                                                                if (!"all".equals(sb) && !sb.startsWith("digits")) {
                                                                                    z2 = false;
                                                                                } else {
                                                                                    z2 = true;
                                                                                }
                                                                                obj.q = z2;
                                                                            } else if ("text-decoration".equals(a)) {
                                                                                if ("underline".equals(sb)) {
                                                                                    obj.k = 1;
                                                                                }
                                                                            } else if ("font-family".equals(a)) {
                                                                                obj.e = Ascii.c(sb);
                                                                            } else if ("font-weight".equals(a)) {
                                                                                if ("bold".equals(sb)) {
                                                                                    obj.l = 1;
                                                                                }
                                                                            } else if ("font-style".equals(a)) {
                                                                                if ("italic".equals(sb)) {
                                                                                    obj.m = 1;
                                                                                }
                                                                            } else if ("font-size".equals(a)) {
                                                                                Matcher matcher2 = WebvttCssParser.d.matcher(Ascii.c(sb));
                                                                                if (!matcher2.matches()) {
                                                                                    Log.f("WebvttCssParser", "Invalid font-size: '" + sb + "'.");
                                                                                } else {
                                                                                    String group2 = matcher2.group(2);
                                                                                    group2.getClass();
                                                                                    switch (group2.hashCode()) {
                                                                                        case 37:
                                                                                            if (group2.equals("%")) {
                                                                                                c = 0;
                                                                                                break;
                                                                                            }
                                                                                            break;
                                                                                        case 3240:
                                                                                            if (group2.equals("em")) {
                                                                                                c = 1;
                                                                                                break;
                                                                                            }
                                                                                            break;
                                                                                        case 3592:
                                                                                            if (group2.equals("px")) {
                                                                                                c = 2;
                                                                                                break;
                                                                                            }
                                                                                            break;
                                                                                    }
                                                                                    c = 65535;
                                                                                    switch (c) {
                                                                                        case 0:
                                                                                            i4 = 1;
                                                                                            obj.n = 3;
                                                                                            break;
                                                                                        case 1:
                                                                                            i4 = 1;
                                                                                            obj.n = 2;
                                                                                            break;
                                                                                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                                                            i4 = 1;
                                                                                            obj.n = 1;
                                                                                            break;
                                                                                        default:
                                                                                            d.d();
                                                                                            return;
                                                                                    }
                                                                                    String group3 = matcher2.group(i4);
                                                                                    group3.getClass();
                                                                                    obj.o = Float.parseFloat(group3);
                                                                                }
                                                                            }
                                                                            z4 = z;
                                                                            z3 = false;
                                                                            r9 = 1;
                                                                        }
                                                                    }
                                                                }
                                                            }
                                                            z4 = z;
                                                            z3 = false;
                                                            r9 = 1;
                                                        }
                                                        if ("}".equals(str5)) {
                                                            arrayList3.add(obj);
                                                        }
                                                        z3 = false;
                                                        i5 = -1;
                                                        str2 = null;
                                                        i7 = 1;
                                                    }
                                                }
                                            }
                                            str = str2;
                                            if (str == null) {
                                            }
                                        }
                                    } else {
                                        u2.g("A style block was found after the first cue.");
                                        return;
                                    }
                                } else if (c2 == 3) {
                                    Pattern pattern = WebvttCueParser.a;
                                    Charset charset = StandardCharsets.UTF_8;
                                    String n2 = parsableByteArray.n(charset);
                                    if (n2 == null) {
                                        webvttCueInfo = null;
                                    } else {
                                        Pattern pattern2 = WebvttCueParser.a;
                                        Matcher matcher3 = pattern2.matcher(n2);
                                        if (matcher3.matches()) {
                                            webvttCueInfo = WebvttCueParser.d(null, matcher3, parsableByteArray, arrayList);
                                        } else {
                                            webvttCueInfo = null;
                                            String n3 = parsableByteArray.n(charset);
                                            if (n3 != null) {
                                                Matcher matcher4 = pattern2.matcher(n3);
                                                if (matcher4.matches()) {
                                                    webvttCueInfo = WebvttCueParser.d(n2.trim(), matcher4, parsableByteArray, arrayList);
                                                }
                                            }
                                        }
                                    }
                                    if (webvttCueInfo != null) {
                                        arrayList2.add(webvttCueInfo);
                                    }
                                }
                                webvttParser = this;
                            }
                        } else {
                            WebvttSubtitle webvttSubtitle = new WebvttSubtitle(arrayList2);
                            for (int i17 = 0; i17 < webvttSubtitle.d(); i17++) {
                                long b4 = webvttSubtitle.b(i17);
                                List c3 = webvttSubtitle.c(b4);
                                if (!((ArrayList) c3).isEmpty()) {
                                    if (i17 != webvttSubtitle.d() - 1) {
                                        long b5 = webvttSubtitle.b(i17 + 1) - webvttSubtitle.b(i17);
                                        if (b5 > 0) {
                                            consumer.accept(new CuesWithTiming(b4, b5, c3));
                                        }
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
            }
        } catch (ParserException e) {
            throw new IllegalArgumentException(e);
        }
    }
}
