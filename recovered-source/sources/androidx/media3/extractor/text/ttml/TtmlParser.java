package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import android.text.TextUtils;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.util.ColorParser;
import androidx.media3.common.util.Consumer;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import androidx.media3.common.util.XmlPullParserUtil;
import androidx.media3.extractor.text.CuesWithTiming;
import androidx.media3.extractor.text.Subtitle;
import androidx.media3.extractor.text.SubtitleDecoderException;
import androidx.media3.extractor.text.SubtitleParser;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.collect.Iterables;
import com.google.common.collect.Sets;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import io.sentry.d;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TtmlParser implements SubtitleParser {
    public static final Pattern b = Pattern.compile("^([0-9][0-9]+):([0-9][0-9]):([0-9][0-9])(?:(\\.[0-9]+)|:([0-9][0-9])(?:\\.([0-9]+))?)?$");
    public static final Pattern c = Pattern.compile("^([0-9]+(?:\\.[0-9]+)?)(h|m|s|ms|f|t)$");
    public static final Pattern d = Pattern.compile("^(([0-9]*.)?[0-9]+)(px|em|%)$");
    public static final Pattern e = Pattern.compile("^([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern f = Pattern.compile("^([-+]?\\d+\\.?\\d*?)% ([-+]?\\d+\\.?\\d*?)%$");
    public static final Pattern g = Pattern.compile("^([-+]?\\d+\\.?\\d*?)px ([-+]?\\d+\\.?\\d*?)px$");
    public static final Pattern h = Pattern.compile("^(\\d+) (\\d+)$");
    public static final FrameAndTickRate i = new FrameAndTickRate(30.0f, 1, 1);
    public final XmlPullParserFactory a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FrameAndTickRate {
        public final float a;
        public final int b;
        public final int c;

        public FrameAndTickRate(float f, int i, int i2) {
            this.a = f;
            this.b = i;
            this.c = i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TtsExtent {
        public final int a;
        public final int b;

        public TtsExtent(int i, int i2) {
            this.a = i;
            this.b = i2;
        }
    }

    public TtmlParser() {
        try {
            XmlPullParserFactory newInstance = XmlPullParserFactory.newInstance();
            this.a = newInstance;
            newInstance.setNamespaceAware(true);
        } catch (XmlPullParserException e2) {
            u2.k("Couldn't create XmlPullParserFactory instance", e2);
            throw null;
        }
    }

    public static TtmlStyle c(TtmlStyle ttmlStyle) {
        if (ttmlStyle == null) {
            return new TtmlStyle();
        }
        return ttmlStyle;
    }

    public static boolean d(String str) {
        if (!str.equals("tt") && !str.equals("head") && !str.equals("body") && !str.equals("div") && !str.equals("p") && !str.equals("span") && !str.equals("br") && !str.equals("style") && !str.equals("styling") && !str.equals("layout") && !str.equals("region") && !str.equals("metadata") && !str.equals("image") && !str.equals("data") && !str.equals("information")) {
            return false;
        }
        return true;
    }

    public static int e(XmlPullParser xmlPullParser) {
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "cellResolution");
        if (attributeValue == null) {
            return 15;
        }
        Matcher matcher = h.matcher(attributeValue);
        if (!matcher.matches()) {
            Log.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
        boolean z = true;
        try {
            String group = matcher.group(1);
            group.getClass();
            int parseInt = Integer.parseInt(group);
            String group2 = matcher.group(2);
            group2.getClass();
            int parseInt2 = Integer.parseInt(group2);
            if (parseInt == 0 || parseInt2 == 0) {
                z = false;
            }
            Preconditions.b(parseInt, parseInt2, "Invalid cell resolution %s %s", z);
            return parseInt2;
        } catch (NumberFormatException unused) {
            Log.f("TtmlParser", "Ignoring malformed cell resolution: ".concat(attributeValue));
            return 15;
        }
    }

    public static void f(String str, TtmlStyle ttmlStyle) {
        Matcher matcher;
        String str2 = Util.a;
        char c2 = 65535;
        String[] split = str.split("\\s+", -1);
        int length = split.length;
        Pattern pattern = d;
        if (length == 1) {
            matcher = pattern.matcher(str);
        } else if (split.length == 2) {
            matcher = pattern.matcher(split[1]);
            Log.f("TtmlParser", "Multiple values in fontSize attribute. Picking the second value for vertical font size and ignoring the first.");
        } else {
            throw new Exception(jb.i(new StringBuilder("Invalid number of entries for fontSize: "), split.length, "."));
        }
        if (matcher.matches()) {
            String group = matcher.group(3);
            group.getClass();
            switch (group.hashCode()) {
                case 37:
                    if (group.equals("%")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 3240:
                    if (group.equals("em")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 3592:
                    if (group.equals("px")) {
                        c2 = 2;
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    ttmlStyle.j = 3;
                    break;
                case 1:
                    ttmlStyle.j = 2;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    ttmlStyle.j = 1;
                    break;
                default:
                    throw new Exception(q.i("Invalid unit for fontSize: '", group, "'."));
            }
            String group2 = matcher.group(1);
            group2.getClass();
            ttmlStyle.k = Float.parseFloat(group2);
            return;
        }
        throw new Exception(q.i("Invalid expression for fontSize: '", str, "'."));
    }

    public static FrameAndTickRate g(XmlPullParser xmlPullParser) {
        int i2;
        float f2;
        boolean z;
        String attributeValue = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRate");
        if (attributeValue != null) {
            i2 = Integer.parseInt(attributeValue);
        } else {
            i2 = 30;
        }
        String attributeValue2 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "frameRateMultiplier");
        if (attributeValue2 != null) {
            String str = Util.a;
            if (attributeValue2.split(" ", -1).length == 2) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.d("frameRateMultiplier doesn't have 2 parts", z);
            f2 = Integer.parseInt(r2[0]) / Integer.parseInt(r2[1]);
        } else {
            f2 = 1.0f;
        }
        FrameAndTickRate frameAndTickRate = i;
        int i3 = frameAndTickRate.b;
        String attributeValue3 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "subFrameRate");
        if (attributeValue3 != null) {
            i3 = Integer.parseInt(attributeValue3);
        }
        int i4 = frameAndTickRate.c;
        String attributeValue4 = xmlPullParser.getAttributeValue("http://www.w3.org/ns/ttml#parameter", "tickRate");
        if (attributeValue4 != null) {
            i4 = Integer.parseInt(attributeValue4);
        }
        return new FrameAndTickRate(i2 * f2, i3, i4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:122:0x0257, code lost:
    
        if (androidx.media3.common.util.XmlPullParserUtil.c(r21, "metadata") != false) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x0259, code lost:
    
        r21.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0262, code lost:
    
        if (androidx.media3.common.util.XmlPullParserUtil.c(r21, "image") == false) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0264, code lost:
    
        r5 = androidx.media3.common.util.XmlPullParserUtil.a(r21, "id");
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0268, code lost:
    
        if (r5 == null) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x026a, code lost:
    
        r26.put(r5, r21.nextText());
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x027a, code lost:
    
        if (androidx.media3.common.util.XmlPullParserUtil.b(r21, "metadata") == false) goto L137;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0244  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x01f5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void h(XmlPullParser xmlPullParser, HashMap hashMap, int i2, TtsExtent ttsExtent, HashMap hashMap2, HashMap hashMap3) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        int i3;
        float f8;
        int i4;
        String a;
        int i5;
        TtmlRegion ttmlRegion;
        char c2;
        String a2;
        TtmlStyle ttmlStyle;
        float parseFloat;
        float parseFloat2;
        String a3;
        TtmlStyle ttmlStyle2;
        String a4;
        TtmlStyle ttmlStyle3;
        String[] split;
        do {
            xmlPullParser.next();
            if (XmlPullParserUtil.c(xmlPullParser, "style")) {
                String a5 = XmlPullParserUtil.a(xmlPullParser, "style");
                TtmlStyle j = j(xmlPullParser, new TtmlStyle());
                if (a5 != null) {
                    String trim = a5.trim();
                    if (trim.isEmpty()) {
                        split = new String[0];
                    } else {
                        String str = Util.a;
                        split = trim.split("\\s+", -1);
                    }
                    for (String str2 : split) {
                        j.a((TtmlStyle) hashMap.get(str2));
                    }
                }
                String str3 = j.l;
                if (str3 != null) {
                    hashMap.put(str3, j);
                }
            } else if (XmlPullParserUtil.c(xmlPullParser, "region")) {
                String a6 = XmlPullParserUtil.a(xmlPullParser, "id");
                if (a6 != null) {
                    String a7 = XmlPullParserUtil.a(xmlPullParser, "origin");
                    if (a7 == null && (a4 = XmlPullParserUtil.a(xmlPullParser, "style")) != null && (ttmlStyle3 = (TtmlStyle) hashMap.get(a4)) != null) {
                        a7 = ttmlStyle3.t;
                    }
                    int i6 = 2;
                    Pattern pattern = g;
                    Pattern pattern2 = f;
                    if (a7 != null) {
                        Matcher matcher = pattern2.matcher(a7);
                        Matcher matcher2 = pattern.matcher(a7);
                        if (matcher.matches()) {
                            try {
                                String group = matcher.group(1);
                                group.getClass();
                                f4 = Float.parseFloat(group) / 100.0f;
                                String group2 = matcher.group(2);
                                group2.getClass();
                                f3 = Float.parseFloat(group2) / 100.0f;
                                f2 = 100.0f;
                            } catch (NumberFormatException unused) {
                                Log.f("TtmlParser", "Ignoring region with malformed origin: ".concat(a7));
                            }
                        } else if (matcher2.matches()) {
                            if (ttsExtent == null) {
                                Log.f("TtmlParser", "Ignoring region with missing tts:extent: ".concat(a7));
                            } else {
                                try {
                                    String group3 = matcher2.group(1);
                                    group3.getClass();
                                    int parseInt = Integer.parseInt(group3);
                                    String group4 = matcher2.group(2);
                                    group4.getClass();
                                    f2 = 100.0f;
                                    float f9 = parseInt / ttsExtent.a;
                                    float parseInt2 = Integer.parseInt(group4) / ttsExtent.b;
                                    f4 = f9;
                                    f3 = parseInt2;
                                } catch (NumberFormatException unused2) {
                                    Log.f("TtmlParser", "Ignoring region with malformed origin: ".concat(a7));
                                }
                            }
                        } else {
                            Log.f("TtmlParser", "Ignoring region with unsupported origin: ".concat(a7));
                        }
                    } else {
                        f2 = 100.0f;
                        f3 = 0.0f;
                        f4 = 0.0f;
                    }
                    String a8 = XmlPullParserUtil.a(xmlPullParser, "extent");
                    if (a8 == null && (a3 = XmlPullParserUtil.a(xmlPullParser, "style")) != null && (ttmlStyle2 = (TtmlStyle) hashMap.get(a3)) != null) {
                        a8 = ttmlStyle2.u;
                    }
                    if (a8 != null) {
                        Matcher matcher3 = pattern2.matcher(a8);
                        Matcher matcher4 = pattern.matcher(a8);
                        f5 = 1.0f;
                        if (matcher3.matches()) {
                            try {
                                String group5 = matcher3.group(1);
                                group5.getClass();
                                parseFloat = Float.parseFloat(group5) / f2;
                                String group6 = matcher3.group(2);
                                group6.getClass();
                                parseFloat2 = Float.parseFloat(group6) / f2;
                            } catch (NumberFormatException unused3) {
                                q.y("Ignoring region with malformed extent: ", a7, "TtmlParser");
                            }
                        } else if (matcher4.matches()) {
                            if (ttsExtent == null) {
                                q.y("Ignoring region with missing tts:extent: ", a7, "TtmlParser");
                            } else {
                                try {
                                    String group7 = matcher4.group(1);
                                    group7.getClass();
                                    int parseInt3 = Integer.parseInt(group7);
                                    String group8 = matcher4.group(2);
                                    group8.getClass();
                                    float f10 = parseInt3 / ttsExtent.a;
                                    parseFloat2 = Integer.parseInt(group8) / ttsExtent.b;
                                    parseFloat = f10;
                                } catch (NumberFormatException unused4) {
                                    q.y("Ignoring region with malformed extent: ", a7, "TtmlParser");
                                }
                            }
                        } else {
                            q.y("Ignoring region with unsupported extent: ", a7, "TtmlParser");
                        }
                        f6 = parseFloat;
                        f7 = parseFloat2;
                    } else {
                        f5 = 1.0f;
                        f6 = 1.0f;
                        f7 = 1.0f;
                    }
                    String a9 = XmlPullParserUtil.a(xmlPullParser, "displayAlign");
                    if (a9 == null && (a2 = XmlPullParserUtil.a(xmlPullParser, "style")) != null && (ttmlStyle = (TtmlStyle) hashMap.get(a2)) != null) {
                        a9 = ttmlStyle.v;
                    }
                    if (a9 != null) {
                        String c3 = Ascii.c(a9);
                        c3.getClass();
                        if (!c3.equals("center")) {
                            if (c3.equals("after")) {
                                i3 = i2;
                                f8 = f3 + f7;
                                i4 = 2;
                            }
                        } else {
                            i3 = i2;
                            f8 = f3 + (f7 / 2.0f);
                            i4 = 1;
                        }
                        float f11 = f5 / i3;
                        a = XmlPullParserUtil.a(xmlPullParser, "writingMode");
                        if (a != null) {
                            String c4 = Ascii.c(a);
                            c4.getClass();
                            switch (c4.hashCode()) {
                                case 3694:
                                    if (c4.equals("tb")) {
                                        c2 = 0;
                                        break;
                                    }
                                    break;
                                case 3553396:
                                    if (c4.equals("tblr")) {
                                        c2 = 1;
                                        break;
                                    }
                                    break;
                                case 3553576:
                                    if (c4.equals("tbrl")) {
                                        c2 = 2;
                                        break;
                                    }
                                    break;
                            }
                            c2 = 65535;
                            switch (c2) {
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    i5 = 1;
                                    break;
                            }
                            i5 = i6;
                            ttmlRegion = new TtmlRegion(a6, f4, f8, 0, i4, f6, f7, 1, f11, i5);
                            if (ttmlRegion != null) {
                                hashMap2.put(ttmlRegion.a, ttmlRegion);
                            }
                        }
                        i6 = Integer.MIN_VALUE;
                        i5 = i6;
                        ttmlRegion = new TtmlRegion(a6, f4, f8, 0, i4, f6, f7, 1, f11, i5);
                        if (ttmlRegion != null) {
                        }
                    }
                    i3 = i2;
                    f8 = f3;
                    i4 = 0;
                    float f112 = f5 / i3;
                    a = XmlPullParserUtil.a(xmlPullParser, "writingMode");
                    if (a != null) {
                    }
                    i6 = Integer.MIN_VALUE;
                    i5 = i6;
                    ttmlRegion = new TtmlRegion(a6, f4, f8, 0, i4, f6, f7, 1, f112, i5);
                    if (ttmlRegion != null) {
                    }
                }
                ttmlRegion = null;
                if (ttmlRegion != null) {
                }
            }
        } while (!XmlPullParserUtil.b(xmlPullParser, "head"));
    }

    public static TtmlNode i(XmlPullParser xmlPullParser, TtmlNode ttmlNode, HashMap hashMap, FrameAndTickRate frameAndTickRate) {
        long j;
        char c2;
        String[] split;
        int attributeCount = xmlPullParser.getAttributeCount();
        String[] strArr = null;
        TtmlStyle j2 = j(xmlPullParser, null);
        String str = null;
        String str2 = "";
        long j3 = -9223372036854775807L;
        long j4 = -9223372036854775807L;
        long j5 = -9223372036854775807L;
        for (int i2 = 0; i2 < attributeCount; i2++) {
            String attributeName = xmlPullParser.getAttributeName(i2);
            String attributeValue = xmlPullParser.getAttributeValue(i2);
            attributeName.getClass();
            switch (attributeName.hashCode()) {
                case -934795532:
                    if (attributeName.equals("region")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case 99841:
                    if (attributeName.equals("dur")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case 100571:
                    if (attributeName.equals("end")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case 93616297:
                    if (attributeName.equals("begin")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case 109780401:
                    if (attributeName.equals("style")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case 1292595405:
                    if (attributeName.equals("backgroundImage")) {
                        c2 = 5;
                        break;
                    }
                    break;
            }
            c2 = 65535;
            switch (c2) {
                case 0:
                    if (!hashMap.containsKey(attributeValue)) {
                        break;
                    } else {
                        str2 = attributeValue;
                        continue;
                    }
                case 1:
                    j5 = k(attributeValue, frameAndTickRate);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    j4 = k(attributeValue, frameAndTickRate);
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    j3 = k(attributeValue, frameAndTickRate);
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    String trim = attributeValue.trim();
                    if (trim.isEmpty()) {
                        split = new String[0];
                    } else {
                        String str3 = Util.a;
                        split = trim.split("\\s+", -1);
                    }
                    if (split.length > 0) {
                        strArr = split;
                        break;
                    }
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    if (attributeValue.startsWith("#")) {
                        str = attributeValue.substring(1);
                        break;
                    }
                    break;
            }
        }
        if (ttmlNode != null) {
            long j6 = ttmlNode.d;
            if (j6 != -9223372036854775807L) {
                if (j3 != -9223372036854775807L) {
                    j3 += j6;
                } else {
                    j3 = j6;
                }
                if (j4 != -9223372036854775807L) {
                    j4 += j6;
                }
            }
        }
        if (j4 == -9223372036854775807L) {
            if (j5 != -9223372036854775807L) {
                j4 = j3 + j5;
            } else if (ttmlNode != null) {
                long j7 = ttmlNode.e;
                if (j7 != -9223372036854775807L) {
                    j = j7;
                    return new TtmlNode(xmlPullParser.getName(), null, j3, j, j2, strArr, str2, str, ttmlNode);
                }
            }
        }
        j = j4;
        return new TtmlNode(xmlPullParser.getName(), null, j3, j, j2, strArr, str2, str, ttmlNode);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:11:0x015c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:209:0x04b4. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:106:0x02c0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x021c  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x02a1  */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6 */
    /* JADX WARN: Type inference failed for: r9v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static TtmlStyle j(XmlPullParser xmlPullParser, TtmlStyle ttmlStyle) {
        char c2;
        ?? r9;
        boolean z;
        char c3;
        int i2;
        Sets.SetView d2;
        int i3;
        int hashCode;
        int i4;
        TextEmphasis textEmphasis;
        int i5;
        char c4;
        int attributeCount = xmlPullParser.getAttributeCount();
        TtmlStyle ttmlStyle2 = ttmlStyle;
        for (int i6 = 0; i6 < attributeCount; i6++) {
            String attributeValue = xmlPullParser.getAttributeValue(i6);
            String attributeName = xmlPullParser.getAttributeName(i6);
            attributeName.getClass();
            switch (attributeName.hashCode()) {
                case -1550943582:
                    if (attributeName.equals("fontStyle")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1289044182:
                    if (attributeName.equals("extent")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1224696685:
                    if (attributeName.equals("fontFamily")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1065511464:
                    if (attributeName.equals("textAlign")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1008619738:
                    if (attributeName.equals("origin")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -879295043:
                    if (attributeName.equals("textDecoration")) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -734428249:
                    if (attributeName.equals("fontWeight")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case 3355:
                    if (attributeName.equals("id")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case 3511770:
                    if (attributeName.equals("ruby")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case 94842723:
                    if (attributeName.equals("color")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 109403361:
                    if (attributeName.equals("shear")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case 110138194:
                    if (attributeName.equals("textCombine")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case 365601008:
                    if (attributeName.equals("fontSize")) {
                        c2 = '\f';
                        break;
                    }
                    break;
                case 921125321:
                    if (attributeName.equals("textEmphasis")) {
                        c2 = '\r';
                        break;
                    }
                    break;
                case 1115953443:
                    if (attributeName.equals("rubyPosition")) {
                        c2 = 14;
                        break;
                    }
                    break;
                case 1287124693:
                    if (attributeName.equals("backgroundColor")) {
                        c2 = 15;
                        break;
                    }
                    break;
                case 1587328867:
                    if (attributeName.equals("displayAlign")) {
                        c2 = 16;
                        break;
                    }
                    break;
                case 1754920356:
                    if (attributeName.equals("multiRowAlign")) {
                        c2 = 17;
                        break;
                    }
                    break;
            }
            c2 = 65535;
            Layout.Alignment alignment = null;
            switch (c2) {
                case 0:
                    ttmlStyle2 = c(ttmlStyle2);
                    ttmlStyle2.i = "italic".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case 1:
                    ttmlStyle2 = c(ttmlStyle2);
                    ttmlStyle2.u = attributeValue;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    ttmlStyle2 = c(ttmlStyle2);
                    ttmlStyle2.a = attributeValue;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    ttmlStyle2 = c(ttmlStyle2);
                    String c5 = Ascii.c(attributeValue);
                    c5.getClass();
                    switch (c5.hashCode()) {
                        case -1364013995:
                            if (c5.equals("center")) {
                                r9 = false;
                                break;
                            }
                            break;
                        case 100571:
                            if (c5.equals("end")) {
                                r9 = true;
                                break;
                            }
                            break;
                        case 3317767:
                            if (c5.equals("left")) {
                                r9 = 2;
                                break;
                            }
                            break;
                        case 108511772:
                            if (c5.equals("right")) {
                                r9 = 3;
                                break;
                            }
                            break;
                        case 109757538:
                            if (c5.equals("start")) {
                                r9 = 4;
                                break;
                            }
                            break;
                    }
                    r9 = -1;
                    switch (r9) {
                        case 0:
                            alignment = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case 1:
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    ttmlStyle2.o = alignment;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    ttmlStyle2 = c(ttmlStyle2);
                    ttmlStyle2.t = attributeValue;
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    String c6 = Ascii.c(attributeValue);
                    c6.getClass();
                    switch (c6.hashCode()) {
                        case -1461280213:
                            if (c6.equals("nounderline")) {
                                z = false;
                                break;
                            }
                            break;
                        case -1026963764:
                            if (c6.equals("underline")) {
                                z = true;
                                break;
                            }
                            break;
                        case 913457136:
                            if (c6.equals("nolinethrough")) {
                                z = 2;
                                break;
                            }
                            break;
                        case 1679736913:
                            if (c6.equals("linethrough")) {
                                z = 3;
                                break;
                            }
                            break;
                    }
                    z = -1;
                    switch (z) {
                        case false:
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.g = 0;
                            break;
                        case true:
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.g = 1;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.f = 0;
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.f = 1;
                            break;
                    }
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    ttmlStyle2 = c(ttmlStyle2);
                    ttmlStyle2.h = "bold".equalsIgnoreCase(attributeValue) ? 1 : 0;
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    if ("style".equals(xmlPullParser.getName())) {
                        ttmlStyle2 = c(ttmlStyle2);
                        ttmlStyle2.l = attributeValue;
                        break;
                    } else {
                        break;
                    }
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    String c7 = Ascii.c(attributeValue);
                    c7.getClass();
                    switch (c7.hashCode()) {
                        case -618561360:
                            if (c7.equals("baseContainer")) {
                                c3 = 0;
                                break;
                            }
                            break;
                        case -410956671:
                            if (c7.equals("container")) {
                                c3 = 1;
                                break;
                            }
                            break;
                        case -250518009:
                            if (c7.equals("delimiter")) {
                                c3 = 2;
                                break;
                            }
                            break;
                        case -136074796:
                            if (c7.equals("textContainer")) {
                                c3 = 3;
                                break;
                            }
                            break;
                        case 3016401:
                            if (c7.equals("base")) {
                                c3 = 4;
                                break;
                            }
                            break;
                        case 3556653:
                            if (c7.equals("text")) {
                                c3 = 5;
                                break;
                            }
                            break;
                    }
                    c3 = 65535;
                    switch (c3) {
                        case 0:
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.m = 2;
                            break;
                        case 1:
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.m = 1;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.m = 4;
                            break;
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.m = 3;
                            break;
                    }
                case KeyModifiers.a /* 9 */:
                    ttmlStyle2 = c(ttmlStyle2);
                    try {
                        ttmlStyle2.b = ColorParser.a(attributeValue, false);
                        ttmlStyle2.c = true;
                        break;
                    } catch (IllegalArgumentException unused) {
                        q.y("Failed parsing color value: ", attributeValue, "TtmlParser");
                        break;
                    }
                case KeyModifiers.b /* 10 */:
                    TtmlStyle c8 = c(ttmlStyle2);
                    Matcher matcher = e.matcher(attributeValue);
                    float f2 = Float.MAX_VALUE;
                    if (!matcher.matches()) {
                        q.y("Invalid value for shear: ", attributeValue, "TtmlParser");
                    } else {
                        try {
                            String group = matcher.group(1);
                            group.getClass();
                            f2 = Math.min(100.0f, Math.max(-100.0f, Float.parseFloat(group)));
                        } catch (NumberFormatException e2) {
                            Log.g("TtmlParser", "Failed to parse shear: " + attributeValue, e2);
                        }
                    }
                    c8.s = f2;
                    ttmlStyle2 = c8;
                    break;
                case 11:
                    String c9 = Ascii.c(attributeValue);
                    c9.getClass();
                    if (!c9.equals("all")) {
                        if (c9.equals("none")) {
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.q = 0;
                            break;
                        } else {
                            break;
                        }
                    } else {
                        ttmlStyle2 = c(ttmlStyle2);
                        ttmlStyle2.q = 1;
                        break;
                    }
                case KeyModifiers.c /* 12 */:
                    try {
                        ttmlStyle2 = c(ttmlStyle2);
                        f(attributeValue, ttmlStyle2);
                        break;
                    } catch (SubtitleDecoderException unused2) {
                        q.y("Failed parsing fontSize value: ", attributeValue, "TtmlParser");
                        break;
                    }
                case '\r':
                    ttmlStyle2 = c(ttmlStyle2);
                    Pattern pattern = TextEmphasis.d;
                    if (attributeValue != null) {
                        String c10 = Ascii.c(attributeValue.trim());
                        if (!c10.isEmpty()) {
                            ImmutableSet o = ImmutableSet.o(TextUtils.split(c10, TextEmphasis.d));
                            String str = (String) Iterables.a(Sets.d(TextEmphasis.h, o), "outside");
                            int hashCode2 = str.hashCode();
                            if (hashCode2 != -1392885889) {
                                if (hashCode2 != -1106037339) {
                                    if (hashCode2 == 92734940 && str.equals("after")) {
                                        i2 = 2;
                                        d2 = Sets.d(TextEmphasis.e, o);
                                        if (!d2.isEmpty()) {
                                            String str2 = (String) d2.iterator().next();
                                            int hashCode3 = str2.hashCode();
                                            if (hashCode3 != 3005871) {
                                                if (hashCode3 == 3387192 && str2.equals("none")) {
                                                    i5 = 0;
                                                    textEmphasis = new TextEmphasis(i5, 0, i2);
                                                }
                                            } else {
                                                str2.equals("auto");
                                            }
                                            i5 = -1;
                                            textEmphasis = new TextEmphasis(i5, 0, i2);
                                        } else {
                                            Sets.SetView d3 = Sets.d(TextEmphasis.g, o);
                                            Sets.SetView d4 = Sets.d(TextEmphasis.f, o);
                                            if (d3.isEmpty() && d4.isEmpty()) {
                                                textEmphasis = new TextEmphasis(-1, 0, i2);
                                            } else {
                                                String str3 = (String) Iterables.a(d3, "filled");
                                                int hashCode4 = str3.hashCode();
                                                if (hashCode4 != -1274499742) {
                                                    if (hashCode4 == 3417674 && str3.equals("open")) {
                                                        i3 = 2;
                                                        String str4 = (String) Iterables.a(d4, "circle");
                                                        hashCode = str4.hashCode();
                                                        if (hashCode == -1360216880) {
                                                            if (hashCode != -905816648) {
                                                                if (hashCode == 99657 && str4.equals("dot")) {
                                                                    i4 = 2;
                                                                    textEmphasis = new TextEmphasis(i4, i3, i2);
                                                                }
                                                            } else if (str4.equals("sesame")) {
                                                                i4 = 3;
                                                                textEmphasis = new TextEmphasis(i4, i3, i2);
                                                            }
                                                        } else {
                                                            str4.equals("circle");
                                                        }
                                                        i4 = 1;
                                                        textEmphasis = new TextEmphasis(i4, i3, i2);
                                                    }
                                                } else {
                                                    str3.equals("filled");
                                                }
                                                i3 = 1;
                                                String str42 = (String) Iterables.a(d4, "circle");
                                                hashCode = str42.hashCode();
                                                if (hashCode == -1360216880) {
                                                }
                                                i4 = 1;
                                                textEmphasis = new TextEmphasis(i4, i3, i2);
                                            }
                                        }
                                    }
                                } else if (str.equals("outside")) {
                                    i2 = -2;
                                    d2 = Sets.d(TextEmphasis.e, o);
                                    if (!d2.isEmpty()) {
                                    }
                                }
                                ttmlStyle2.r = textEmphasis;
                                break;
                            } else {
                                str.equals("before");
                            }
                            i2 = 1;
                            d2 = Sets.d(TextEmphasis.e, o);
                            if (!d2.isEmpty()) {
                            }
                            ttmlStyle2.r = textEmphasis;
                        }
                    }
                    textEmphasis = null;
                    ttmlStyle2.r = textEmphasis;
                    break;
                case 14:
                    String c11 = Ascii.c(attributeValue);
                    c11.getClass();
                    if (!c11.equals("before")) {
                        if (c11.equals("after")) {
                            ttmlStyle2 = c(ttmlStyle2);
                            ttmlStyle2.n = 2;
                            break;
                        } else {
                            break;
                        }
                    } else {
                        ttmlStyle2 = c(ttmlStyle2);
                        ttmlStyle2.n = 1;
                        break;
                    }
                case 15:
                    ttmlStyle2 = c(ttmlStyle2);
                    try {
                        ttmlStyle2.d = ColorParser.a(attributeValue, false);
                        ttmlStyle2.e = true;
                        break;
                    } catch (IllegalArgumentException unused3) {
                        q.y("Failed parsing background value: ", attributeValue, "TtmlParser");
                        break;
                    }
                case 16:
                    ttmlStyle2 = c(ttmlStyle2);
                    ttmlStyle2.v = attributeValue;
                    break;
                case 17:
                    ttmlStyle2 = c(ttmlStyle2);
                    String c12 = Ascii.c(attributeValue);
                    c12.getClass();
                    switch (c12.hashCode()) {
                        case -1364013995:
                            if (c12.equals("center")) {
                                c4 = 0;
                                break;
                            }
                            break;
                        case 100571:
                            if (c12.equals("end")) {
                                c4 = 1;
                                break;
                            }
                            break;
                        case 3317767:
                            if (c12.equals("left")) {
                                c4 = 2;
                                break;
                            }
                            break;
                        case 108511772:
                            if (c12.equals("right")) {
                                c4 = 3;
                                break;
                            }
                            break;
                        case 109757538:
                            if (c12.equals("start")) {
                                c4 = 4;
                                break;
                            }
                            break;
                    }
                    c4 = 65535;
                    switch (c4) {
                        case 0:
                            alignment = Layout.Alignment.ALIGN_CENTER;
                            break;
                        case 1:
                        case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            alignment = Layout.Alignment.ALIGN_OPPOSITE;
                            break;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            alignment = Layout.Alignment.ALIGN_NORMAL;
                            break;
                    }
                    ttmlStyle2.p = alignment;
                    break;
            }
        }
        return ttmlStyle2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00aa, code lost:
    
        if (r13.equals("ms") == false) goto L21;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long k(String str, FrameAndTickRate frameAndTickRate) {
        double d2;
        double d3;
        double d4;
        double d5;
        Matcher matcher = b.matcher(str);
        char c2 = 4;
        if (matcher.matches()) {
            String group = matcher.group(1);
            group.getClass();
            double parseLong = Long.parseLong(group) * 3600;
            matcher.group(2).getClass();
            double parseLong2 = parseLong + (Long.parseLong(r13) * 60);
            matcher.group(3).getClass();
            double parseLong3 = parseLong2 + Long.parseLong(r13);
            String group2 = matcher.group(4);
            double d6 = 0.0d;
            if (group2 != null) {
                d4 = Double.parseDouble(group2);
            } else {
                d4 = 0.0d;
            }
            double d7 = parseLong3 + d4;
            String group3 = matcher.group(5);
            if (group3 != null) {
                d5 = ((float) Long.parseLong(group3)) / frameAndTickRate.a;
            } else {
                d5 = 0.0d;
            }
            double d8 = d7 + d5;
            if (matcher.group(6) != null) {
                d6 = (Long.parseLong(r13) / frameAndTickRate.b) / frameAndTickRate.a;
            }
            return (long) ((d8 + d6) * 1000000.0d);
        }
        Matcher matcher2 = c.matcher(str);
        if (matcher2.matches()) {
            String group4 = matcher2.group(1);
            group4.getClass();
            double parseDouble = Double.parseDouble(group4);
            String group5 = matcher2.group(2);
            group5.getClass();
            switch (group5.hashCode()) {
                case 102:
                    if (group5.equals("f")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 104:
                    if (group5.equals("h")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 109:
                    if (group5.equals("m")) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 116:
                    if (group5.equals("t")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3494:
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    d2 = frameAndTickRate.a;
                    parseDouble /= d2;
                    break;
                case 1:
                    d3 = 3600.0d;
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    d3 = 60.0d;
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    d2 = frameAndTickRate.c;
                    parseDouble /= d2;
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    d2 = 1000.0d;
                    parseDouble /= d2;
                    break;
            }
            parseDouble *= d3;
            return (long) (parseDouble * 1000000.0d);
        }
        throw new Exception(jb.f("Malformed time expression: ", str));
    }

    public static TtsExtent l(XmlPullParser xmlPullParser) {
        String a = XmlPullParserUtil.a(xmlPullParser, "extent");
        if (a == null) {
            return null;
        }
        Matcher matcher = g.matcher(a);
        if (!matcher.matches()) {
            Log.f("TtmlParser", "Ignoring non-pixel tts extent: ".concat(a));
            return null;
        }
        try {
            String group = matcher.group(1);
            group.getClass();
            int parseInt = Integer.parseInt(group);
            String group2 = matcher.group(2);
            group2.getClass();
            return new TtsExtent(parseInt, Integer.parseInt(group2));
        } catch (NumberFormatException unused) {
            Log.f("TtmlParser", "Ignoring malformed tts extent: ".concat(a));
            return null;
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final Subtitle a(byte[] bArr, int i2, int i3) {
        try {
            XmlPullParser newPullParser = this.a.newPullParser();
            HashMap hashMap = new HashMap();
            HashMap hashMap2 = new HashMap();
            HashMap hashMap3 = new HashMap();
            hashMap2.put("", new TtmlRegion("", -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, Integer.MIN_VALUE, -3.4028235E38f, -3.4028235E38f, Integer.MIN_VALUE, -3.4028235E38f, Integer.MIN_VALUE));
            TtsExtent ttsExtent = null;
            newPullParser.setInput(new ByteArrayInputStream(bArr, i2, i3), null);
            ArrayDeque arrayDeque = new ArrayDeque();
            FrameAndTickRate frameAndTickRate = i;
            int i4 = 0;
            int i5 = 15;
            TtmlSubtitle ttmlSubtitle = null;
            for (int eventType = newPullParser.getEventType(); eventType != 1; eventType = newPullParser.getEventType()) {
                TtmlNode ttmlNode = (TtmlNode) arrayDeque.peek();
                if (i4 == 0) {
                    String name = newPullParser.getName();
                    if (eventType == 2) {
                        if ("tt".equals(name)) {
                            frameAndTickRate = g(newPullParser);
                            i5 = e(newPullParser);
                            ttsExtent = l(newPullParser);
                        }
                        FrameAndTickRate frameAndTickRate2 = frameAndTickRate;
                        TtsExtent ttsExtent2 = ttsExtent;
                        int i6 = i5;
                        if (!d(name)) {
                            Log.e("TtmlParser", "Ignoring unsupported tag: " + newPullParser.getName());
                        } else {
                            if ("head".equals(name)) {
                                h(newPullParser, hashMap, i6, ttsExtent2, hashMap2, hashMap3);
                            } else {
                                try {
                                    TtmlNode i7 = i(newPullParser, ttmlNode, hashMap2, frameAndTickRate2);
                                    arrayDeque.push(i7);
                                    if (ttmlNode != null) {
                                        if (ttmlNode.m == null) {
                                            ttmlNode.m = new ArrayList();
                                        }
                                        ttmlNode.m.add(i7);
                                    }
                                } catch (SubtitleDecoderException e2) {
                                    Log.g("TtmlParser", "Suppressing parser error", e2);
                                }
                            }
                            i5 = i6;
                            ttsExtent = ttsExtent2;
                            frameAndTickRate = frameAndTickRate2;
                        }
                        i4++;
                        i5 = i6;
                        ttsExtent = ttsExtent2;
                        frameAndTickRate = frameAndTickRate2;
                    } else if (eventType == 4) {
                        ttmlNode.getClass();
                        TtmlNode a = TtmlNode.a(newPullParser.getText());
                        if (ttmlNode.m == null) {
                            ttmlNode.m = new ArrayList();
                        }
                        ttmlNode.m.add(a);
                    } else if (eventType == 3) {
                        if (newPullParser.getName().equals("tt")) {
                            TtmlNode ttmlNode2 = (TtmlNode) arrayDeque.peek();
                            ttmlNode2.getClass();
                            ttmlSubtitle = new TtmlSubtitle(ttmlNode2, hashMap, hashMap2, hashMap3);
                        }
                        arrayDeque.pop();
                    }
                } else if (eventType == 2) {
                    i4++;
                } else if (eventType == 3) {
                    i4--;
                }
                newPullParser.next();
            }
            ttmlSubtitle.getClass();
            return ttmlSubtitle;
        } catch (IOException e3) {
            throw new IllegalStateException("Unexpected error when reading input.", e3);
        } catch (XmlPullParserException e4) {
            throw new IllegalStateException("Unable to decode source", e4);
        }
    }

    @Override // androidx.media3.extractor.text.SubtitleParser
    public final void b(byte[] bArr, int i2, int i3, Consumer consumer) {
        Subtitle a = a(bArr, i2, i3);
        int i4 = 0;
        while (true) {
            TtmlSubtitle ttmlSubtitle = (TtmlSubtitle) a;
            if (i4 < ttmlSubtitle.d()) {
                long b2 = ttmlSubtitle.b(i4);
                List c2 = ttmlSubtitle.c(b2);
                if (!((ArrayList) c2).isEmpty()) {
                    if (i4 != ttmlSubtitle.d() - 1) {
                        long b3 = ttmlSubtitle.b(i4 + 1) - ttmlSubtitle.b(i4);
                        if (b3 > 0) {
                            consumer.accept(new CuesWithTiming(b2, b3, c2));
                        }
                    } else {
                        d.d();
                        return;
                    }
                }
                i4++;
            } else {
                return;
            }
        }
    }
}
