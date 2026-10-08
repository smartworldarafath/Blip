package androidx.compose.ui.text;

import android.graphics.Typeface;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.LeadingMarginSpan;
import android.text.style.ScaleXSpan;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.android.CharSequenceCharacterIterator;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.LayoutIntrinsics_androidKt;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.FontFeatureSpan;
import androidx.compose.ui.text.android.style.LetterSpacingSpanEm;
import androidx.compose.ui.text.android.style.LetterSpacingSpanPx;
import androidx.compose.ui.text.android.style.LineHeightSpan;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.text.android.style.ShadowSpan;
import androidx.compose.ui.text.android.style.SkewXSpan;
import androidx.compose.ui.text.android.style.TextDecorationSpan;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.intl.PlatformLocaleKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt$NoopSpan$1;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.platform.EmojiCompatStatus;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.platform.style.DrawStyleSpan;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.LineHeightStyle;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.text.style.TextIndent;
import androidx.compose.ui.text.style.TextMotion;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.compose.ui.unit.TextUnitType;
import androidx.emoji2.text.EmojiCompat;
import androidx.emoji2.text.EmojiSpan;
import defpackage.fe;
import defpackage.i0;
import defpackage.k8;
import defpackage.u2;
import java.text.BreakIterator;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.PriorityQueue;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.IntRange;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidParagraphIntrinsics implements ParagraphIntrinsics {
    public final String a;
    public final TextStyle b;
    public final List c;
    public final List d;
    public final FontFamily.Resolver e;
    public final Density f;
    public final AndroidTextPaint g;
    public final CharSequence h;
    public final LayoutIntrinsics i;
    public TypefaceDirtyTrackerLinkedList j;
    public final boolean k;
    public final int l;
    public final int m;

    /* JADX WARN: Code restructure failed: missing block: B:118:0x03a1, code lost:
    
        if ((r7.b.c & 1095216660480L) != 0) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:482:0x0089, code lost:
    
        if (r7 == 1) goto L10;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:101:0x0345  */
    /* JADX WARN: Removed duplicated region for block: B:113:0x0387  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x03a9  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x03c4  */
    /* JADX WARN: Removed duplicated region for block: B:12:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x03e1  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x045e  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0517  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x0549  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0558  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x059d  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x067d  */
    /* JADX WARN: Removed duplicated region for block: B:210:0x06ef  */
    /* JADX WARN: Removed duplicated region for block: B:213:0x0711  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x071d  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x073e  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0750  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x078d  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x0784  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:244:0x07c4  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x0831  */
    /* JADX WARN: Removed duplicated region for block: B:283:0x085c A[LOOP:6: B:282:0x085a->B:283:0x085c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:287:0x086f  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0149 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:339:0x05dc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0502  */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0412  */
    /* JADX WARN: Removed duplicated region for block: B:421:0x03d1  */
    /* JADX WARN: Removed duplicated region for block: B:422:0x03ac  */
    /* JADX WARN: Removed duplicated region for block: B:431:0x02b7  */
    /* JADX WARN: Removed duplicated region for block: B:433:0x02be  */
    /* JADX WARN: Removed duplicated region for block: B:435:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:436:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:437:0x02b2  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0153  */
    /* JADX WARN: Removed duplicated region for block: B:447:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ca  */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:452:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:454:0x0156  */
    /* JADX WARN: Removed duplicated region for block: B:455:0x0132  */
    /* JADX WARN: Removed duplicated region for block: B:458:0x00f9  */
    /* JADX WARN: Removed duplicated region for block: B:459:0x00f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:461:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:466:0x00a7  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01d7  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0265  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0289  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0297  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x02a6 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x009a  */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.compose.ui.text.AndroidParagraphIntrinsics] */
    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.ui.text.platform.AndroidTextPaint, android.text.TextPaint, android.graphics.Paint] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AndroidParagraphIntrinsics(String str, TextStyle textStyle, List list, List list2, FontFamily.Resolver resolver, Density density, boolean z) {
        Locale locale;
        int i;
        a aVar;
        TextMotion textMotion;
        int flags;
        int i2;
        int size;
        int i3;
        Throwable th;
        Object obj;
        FontWeight fontWeight;
        FontStyle fontStyle;
        String str2;
        LocaleList localeList;
        TextGeometricTransform textGeometricTransform;
        long j;
        long b;
        FontFamily fontFamily;
        a aVar2;
        long j2;
        BaselineShift baselineShift;
        boolean z2;
        long j3;
        boolean z3;
        boolean z4;
        Object spanStyle;
        String str3;
        float textSize;
        Density density2;
        boolean z5;
        CharSequence charSequence;
        Spannable spannableString;
        SpanStyle spanStyle2;
        ParagraphStyle paragraphStyle;
        TextDecoration textDecoration;
        TextDecoration textDecoration2;
        long j4;
        PlatformTextStyle platformTextStyle;
        float a;
        int i4;
        TextIndent textIndent;
        a aVar3;
        Density density3;
        List list3;
        ArrayList arrayList;
        int size2;
        int i5;
        int i6;
        SpanStyle spanStyle3;
        ArrayList arrayList2;
        Density density4;
        int i7;
        Density density5;
        int size3;
        int i8;
        int i9;
        TextIndent textIndent2;
        int size4;
        int i10;
        int size5;
        int i11;
        Density density6;
        int i12;
        int i13;
        int i14;
        Density density7;
        Object letterSpacingSpanEm;
        int i15;
        TextDecoration textDecoration3;
        Spannable spannable;
        Density density8;
        int i16;
        int i17;
        TextDecoration textDecoration4;
        String str4;
        TextGeometricTransform textGeometricTransform2;
        long j5;
        Shadow shadow;
        int i18;
        DrawStyle drawStyle;
        float c;
        float c2;
        PlatformParagraphStyle platformParagraphStyle;
        PlatformParagraphStyle platformParagraphStyle2;
        AnnotatedString.Range range;
        ?? obj2 = new Object();
        obj2.a = str;
        obj2.b = textStyle;
        obj2.c = list;
        obj2.d = list2;
        obj2.e = resolver;
        obj2.f = density;
        float density9 = density.getDensity();
        ?? textPaint = new TextPaint(1);
        ((TextPaint) textPaint).density = density9;
        textPaint.b = TextDecoration.b;
        textPaint.c = 3;
        textPaint.d = Shadow.d;
        obj2.g = textPaint;
        boolean a2 = ParagraphIntrinsicsKt.a(textStyle);
        SpanStyle spanStyle4 = textStyle.a;
        ParagraphStyle paragraphStyle2 = textStyle.b;
        obj2.k = !a2 ? false : ((Boolean) EmojiCompatStatus.a.a().getValue()).booleanValue();
        int i19 = paragraphStyle2.b;
        LocaleList localeList2 = spanStyle4.k;
        if (i19 != 4) {
            if (i19 != 5) {
                if (i19 == 1) {
                    i = 0;
                } else if (i19 == 2) {
                    i = 1;
                } else if (i19 == 3 || i19 == 0) {
                    int layoutDirectionFromLocale = TextUtils.getLayoutDirectionFromLocale((localeList2 == null || (locale = ((androidx.compose.ui.text.intl.Locale) localeList2.j.get(0)).a) == null) ? Locale.getDefault() : locale);
                    if (layoutDirectionFromLocale != 0) {
                    }
                } else {
                    u2.l("Invalid TextDirection.");
                    throw null;
                }
                obj2.l = i;
                obj2.m = -1;
                aVar = new a(obj2);
                textMotion = paragraphStyle2.i;
                textMotion = textMotion == null ? TextMotion.c : textMotion;
                if (textMotion.b) {
                    flags = textPaint.getFlags() | 128;
                } else {
                    flags = textPaint.getFlags() & (-129);
                }
                textPaint.setFlags(flags);
                i2 = textMotion.a;
                if (i2 == 1) {
                    textPaint.setFlags(textPaint.getFlags() | 64);
                    textPaint.setHinting(0);
                } else if (i2 == 2) {
                    textPaint.getFlags();
                    textPaint.setHinting(1);
                } else if (i2 == 3) {
                    textPaint.getFlags();
                    textPaint.setHinting(0);
                } else {
                    textPaint.getFlags();
                }
                size = list.size();
                i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        th = null;
                        obj = null;
                        break;
                    } else {
                        obj = list.get(i3);
                        th = null;
                        if (((AnnotatedString.Range) obj).a instanceof SpanStyle) {
                            break;
                        } else {
                            i3++;
                        }
                    }
                }
                boolean z6 = obj != null;
                long j6 = spanStyle4.b;
                fontWeight = spanStyle4.c;
                fontStyle = spanStyle4.d;
                str2 = spanStyle4.g;
                localeList = spanStyle4.k;
                TextForegroundStyle textForegroundStyle = spanStyle4.a;
                textGeometricTransform = spanStyle4.j;
                j = spanStyle4.h;
                b = TextUnit.b(j6);
                boolean z7 = z6;
                if (TextUnitType.a(b, 4294967296L)) {
                    textPaint.setTextSize(density.I0(j6));
                } else if (TextUnitType.a(b, 8589934592L)) {
                    textPaint.setTextSize(TextUnit.c(j6) * textPaint.getTextSize());
                }
                fontFamily = spanStyle4.f;
                if (fontFamily != null && fontStyle == null && fontWeight == null) {
                    aVar2 = aVar;
                } else {
                    FontWeight fontWeight2 = fontWeight == null ? FontWeight.q : fontWeight;
                    FontStyle fontStyle2 = new FontStyle(fontStyle != null ? fontStyle.a : 0);
                    FontSynthesis fontSynthesis = spanStyle4.e;
                    aVar2 = aVar;
                    textPaint.setTypeface((Typeface) aVar2.j(fontFamily, fontWeight2, fontStyle2, new FontSynthesis(fontSynthesis != null ? fontSynthesis.a : 65535)));
                }
                if (localeList != null) {
                    LocaleList localeList3 = LocaleList.l;
                    if (!localeList.equals(PlatformLocaleKt.a.a())) {
                        ArrayList arrayList3 = new ArrayList(CollectionsKt.m(localeList, 10));
                        Iterator it = localeList.j.iterator();
                        while (it.hasNext()) {
                            arrayList3.add(((androidx.compose.ui.text.intl.Locale) it.next()).a);
                        }
                        Locale[] localeArr = (Locale[]) arrayList3.toArray(new Locale[0]);
                        textPaint.setTextLocales(new android.os.LocaleList((Locale[]) Arrays.copyOf(localeArr, localeArr.length)));
                    }
                }
                if (str2 != null && !str2.equals("")) {
                    textPaint.setFontFeatureSettings(str2);
                }
                if (textGeometricTransform != null && !textGeometricTransform.equals(TextGeometricTransform.c)) {
                    textPaint.setTextScaleX(textPaint.getTextScaleX() * textGeometricTransform.a);
                    textPaint.setTextSkewX(textPaint.getTextSkewX() + textGeometricTransform.b);
                }
                textPaint.d(textForegroundStyle.b());
                textPaint.c(textForegroundStyle.d(), 9205357640488583168L, textForegroundStyle.a());
                textPaint.f(spanStyle4.n);
                textPaint.g(spanStyle4.m);
                textPaint.e(spanStyle4.o);
                if (!TextUnitType.a(TextUnit.b(j), 4294967296L) && TextUnit.c(j) != 0.0f) {
                    float textScaleX = textPaint.getTextScaleX() * textPaint.getTextSize();
                    float I0 = density.I0(j);
                    if (textScaleX != 0.0f) {
                        textPaint.setLetterSpacing(I0 / textScaleX);
                    }
                } else if (TextUnitType.a(TextUnit.b(j), 8589934592L)) {
                    textPaint.setLetterSpacing(TextUnit.c(j));
                }
                j2 = spanStyle4.l;
                baselineShift = spanStyle4.i;
                z2 = (z7 || !TextUnitType.a(TextUnit.b(j), 4294967296L) || TextUnit.c(j) == 0.0f) ? false : true;
                j3 = Color.h;
                z3 = Color.c(j2, j3) && !Color.c(j2, Color.g);
                z4 = baselineShift == null && Float.compare(baselineShift.a, 0.0f) != 0;
                if (!z2 || z3 || z4) {
                    spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, z2 ? j : TextUnit.c, z4 ? baselineShift : th, (TextGeometricTransform) null, (LocaleList) null, z3 ? j2 : j3, (TextDecoration) null, (Shadow) null, 63103);
                } else {
                    spanStyle = th;
                }
                List list4 = obj2.c;
                if (spanStyle != null) {
                    int size6 = list4.size() + 1;
                    ArrayList arrayList4 = new ArrayList(size6);
                    for (int i20 = 0; i20 < size6; i20++) {
                        if (i20 == 0) {
                            range = new AnnotatedString.Range(0, obj2.a.length(), spanStyle);
                        } else {
                            range = (AnnotatedString.Range) obj2.c.get(i20 - 1);
                        }
                        arrayList4.add(range);
                    }
                    list4 = arrayList4;
                }
                str3 = obj2.a;
                textSize = obj2.g.getTextSize();
                TextStyle textStyle2 = obj2.b;
                List list5 = obj2.d;
                density2 = obj2.f;
                z5 = obj2.k;
                String str5 = obj2.a;
                if (obj2.m == -1) {
                    obj2.m = (str5.length() > 512 || StringsKt.j(str5, '\n')) ? 1 : 0;
                }
                AndroidParagraphHelper_androidKt$NoopSpan$1 androidParagraphHelper_androidKt$NoopSpan$1 = AndroidParagraphHelper_androidKt.a;
                if (z5 || !EmojiCompat.g()) {
                    charSequence = str3;
                } else {
                    PlatformTextStyle platformTextStyle2 = textStyle2.c;
                    EmojiSupportMatch emojiSupportMatch = (platformTextStyle2 == null || (platformParagraphStyle2 = platformTextStyle2.a) == null) ? th : new EmojiSupportMatch(platformParagraphStyle2.b);
                    charSequence = EmojiCompat.a().j(0, str3.length(), (emojiSupportMatch != 0 && emojiSupportMatch.a == 2) ? 1 : 0, str3);
                    charSequence.getClass();
                }
                AndroidParagraphIntrinsics androidParagraphIntrinsics = (list4.isEmpty() && list5.isEmpty() && Intrinsics.a(textStyle2.b.d, TextIndent.c)) ? obj2 : androidParagraphIntrinsics;
                if (charSequence instanceof Spannable) {
                    spannableString = (Spannable) charSequence;
                } else {
                    spannableString = new SpannableString(charSequence);
                }
                spanStyle2 = textStyle2.a;
                paragraphStyle = textStyle2.b;
                textDecoration = spanStyle2.m;
                textDecoration2 = TextDecoration.c;
                if (Intrinsics.a(textDecoration, textDecoration2)) {
                    j4 = 0;
                    spannableString.setSpan(AndroidParagraphHelper_androidKt.a, 0, str3.length(), 33);
                } else {
                    j4 = 0;
                }
                platformTextStyle = textStyle2.c;
                if (!((platformTextStyle != null || (platformParagraphStyle = platformTextStyle.a) == null) ? false : platformParagraphStyle.a) && paragraphStyle.f == null) {
                    float a3 = SpannableExtensions_androidKt.a(paragraphStyle.c, textSize, density2);
                    if (!Float.isNaN(a3)) {
                        spannableString.setSpan(new LineHeightSpan(a3), 0, spannableString.length(), 33);
                    }
                } else {
                    LineHeightStyle lineHeightStyle = paragraphStyle.f;
                    lineHeightStyle = lineHeightStyle == null ? LineHeightStyle.d : lineHeightStyle;
                    a = SpannableExtensions_androidKt.a(paragraphStyle.c, textSize, density2);
                    if (!Float.isNaN(a)) {
                        int length = (spannableString.length() == 0 || StringsKt.u(spannableString) == '\n') ? spannableString.length() + 1 : spannableString.length();
                        int i21 = lineHeightStyle.b;
                        i4 = 0;
                        spannableString.setSpan(new LineHeightStyleSpan(a, length, (i21 & 1) > 0, (i21 & 16) > 0, lineHeightStyle.a, lineHeightStyle.c), 0, spannableString.length(), 33);
                        textIndent = paragraphStyle.d;
                        if (textIndent == null) {
                            long j7 = textIndent.a;
                            a aVar4 = aVar2;
                            long j8 = textIndent.b;
                            int i22 = i4;
                            density3 = density2;
                            if ((!TextUnit.a(j7, TextUnitKt.d(i22)) || !TextUnit.a(j8, TextUnitKt.d(i22))) && (j7 & 1095216660480L) != j4 && (j8 & 1095216660480L) != j4) {
                                long b2 = TextUnit.b(j7);
                                aVar3 = aVar4;
                                list3 = list5;
                                if (TextUnitType.a(b2, 4294967296L)) {
                                    c = density3.I0(j7);
                                } else {
                                    c = TextUnitType.a(b2, 8589934592L) ? TextUnit.c(j7) * textSize : 0.0f;
                                }
                                long b3 = TextUnit.b(j8);
                                if (TextUnitType.a(b3, 4294967296L)) {
                                    c2 = density3.I0(j8);
                                } else {
                                    c2 = TextUnitType.a(b3, 8589934592L) ? TextUnit.c(j8) * textSize : 0.0f;
                                }
                                spannableString.setSpan(new LeadingMarginSpan.Standard((int) Math.ceil(c), (int) Math.ceil(c2)), 0, spannableString.length(), 33);
                                arrayList = new ArrayList(list4.size());
                                size2 = list4.size();
                                for (i5 = 0; i5 < size2; i5++) {
                                    AnnotatedString.Range range2 = (AnnotatedString.Range) list4.get(i5);
                                    Object obj3 = range2.a;
                                    if (obj3 instanceof SpanStyle) {
                                        SpanStyle spanStyle5 = (SpanStyle) obj3;
                                        if (((spanStyle5.f == null && spanStyle5.d == null && spanStyle5.c == null) ? false : true) || ((SpanStyle) obj3).e != null) {
                                            arrayList.add(range2);
                                        }
                                    }
                                }
                                FontFamily fontFamily2 = spanStyle2.f;
                                SpanStyle spanStyle6 = ((fontFamily2 == null || spanStyle2.d != null || spanStyle2.c != null) && spanStyle2.e == null) ? th : new SpanStyle(0L, 0L, spanStyle2.c, spanStyle2.d, spanStyle2.e, fontFamily2, (String) null, 0L, (BaselineShift) null, (TextGeometricTransform) null, (LocaleList) null, 0L, (TextDecoration) null, (Shadow) null, 65475);
                                i0 i0Var = new i0(8, spannableString, aVar3);
                                if (arrayList.size() <= 1) {
                                    if (!arrayList.isEmpty()) {
                                        SpanStyle spanStyle7 = (SpanStyle) ((AnnotatedString.Range) arrayList.get(0)).a;
                                        i0Var.f(spanStyle6 != 0 ? spanStyle6.c(spanStyle7) : spanStyle7, Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).b), Integer.valueOf(((AnnotatedString.Range) arrayList.get(0)).c));
                                        density5 = density3;
                                        i6 = 0;
                                        size3 = list4.size();
                                        i8 = i6;
                                        i9 = i8;
                                        while (i8 < size3) {
                                            AnnotatedString.Range range3 = (AnnotatedString.Range) list4.get(i8);
                                            Object obj4 = range3.a;
                                            if (obj4 instanceof SpanStyle) {
                                                int i23 = range3.b;
                                                int i24 = range3.c;
                                                if (i23 >= 0 && i23 < spannableString.length() && i24 > i23 && i24 <= spannableString.length()) {
                                                    SpanStyle spanStyle8 = (SpanStyle) obj4;
                                                    long j9 = spanStyle8.h;
                                                    BaselineShift baselineShift2 = spanStyle8.i;
                                                    TextForegroundStyle textForegroundStyle2 = spanStyle8.a;
                                                    if (baselineShift2 != null) {
                                                        spannableString.setSpan(new BaselineShiftSpan(baselineShift2.a), i23, i24, 33);
                                                    }
                                                    int i25 = size3;
                                                    i15 = i8;
                                                    SpannableExtensions_androidKt.b(spannableString, textForegroundStyle2.b(), i23, i24);
                                                    Brush d = textForegroundStyle2.d();
                                                    float a4 = textForegroundStyle2.a();
                                                    if (d != null) {
                                                        if (d instanceof SolidColor) {
                                                            SpannableExtensions_androidKt.b(spannableString, ((SolidColor) d).a, i23, i24);
                                                        } else {
                                                            ShaderBrushSpan shaderBrushSpan = new ShaderBrushSpan((ShaderBrush) d, a4);
                                                            i17 = 33;
                                                            spannableString.setSpan(shaderBrushSpan, i23, i24, 33);
                                                            textDecoration4 = spanStyle8.m;
                                                            if (textDecoration4 != null) {
                                                                i17 = 33;
                                                                spannableString.setSpan(new TextDecorationSpan(textDecoration4.a(textDecoration2), textDecoration4.a(TextDecoration.d)), i23, i24, 33);
                                                            }
                                                            density8 = density5;
                                                            SpannableExtensions_androidKt.c(spannableString, spanStyle8.b, density8, i23, i24);
                                                            spannable = spannableString;
                                                            str4 = spanStyle8.g;
                                                            if (str4 != null) {
                                                                spannable.setSpan(new FontFeatureSpan(str4), i23, i24, i17);
                                                            }
                                                            textGeometricTransform2 = spanStyle8.j;
                                                            if (textGeometricTransform2 != null) {
                                                                spannable.setSpan(new ScaleXSpan(textGeometricTransform2.a), i23, i24, i17);
                                                                spannable.setSpan(new SkewXSpan(textGeometricTransform2.b), i23, i24, i17);
                                                            }
                                                            SpannableExtensions_androidKt.d(spannable, spanStyle8.k, i23, i24);
                                                            j5 = spanStyle8.l;
                                                            if (j5 != 16) {
                                                                spannable.setSpan(new BackgroundColorSpan(ColorKt.f(j5)), i23, i24, 33);
                                                            }
                                                            shadow = spanStyle8.n;
                                                            if (shadow == null) {
                                                                long j10 = shadow.b;
                                                                i16 = i25;
                                                                textDecoration3 = textDecoration2;
                                                                int f = ColorKt.f(shadow.a);
                                                                float intBitsToFloat = Float.intBitsToFloat((int) (j10 >> 32));
                                                                float intBitsToFloat2 = Float.intBitsToFloat((int) (j10 & 4294967295L));
                                                                float f2 = shadow.c;
                                                                ShadowSpan shadowSpan = new ShadowSpan(intBitsToFloat, intBitsToFloat2, f2 == 0.0f ? Float.MIN_VALUE : f2, f);
                                                                i18 = 33;
                                                                spannable.setSpan(shadowSpan, i23, i24, 33);
                                                            } else {
                                                                i16 = i25;
                                                                textDecoration3 = textDecoration2;
                                                                i18 = 33;
                                                            }
                                                            drawStyle = spanStyle8.o;
                                                            if (drawStyle != null) {
                                                                spannable.setSpan(new DrawStyleSpan(drawStyle), i23, i24, i18);
                                                            }
                                                            if (!TextUnitType.a(TextUnit.b(j9), 4294967296L) || TextUnitType.a(TextUnit.b(j9), 8589934592L)) {
                                                                i9 = 1;
                                                            }
                                                            spannableString = spannable;
                                                            textDecoration2 = textDecoration3;
                                                            i8 = i15 + 1;
                                                            size3 = i16;
                                                            density5 = density8;
                                                        }
                                                    }
                                                    i17 = 33;
                                                    textDecoration4 = spanStyle8.m;
                                                    if (textDecoration4 != null) {
                                                    }
                                                    density8 = density5;
                                                    SpannableExtensions_androidKt.c(spannableString, spanStyle8.b, density8, i23, i24);
                                                    spannable = spannableString;
                                                    str4 = spanStyle8.g;
                                                    if (str4 != null) {
                                                    }
                                                    textGeometricTransform2 = spanStyle8.j;
                                                    if (textGeometricTransform2 != null) {
                                                    }
                                                    SpannableExtensions_androidKt.d(spannable, spanStyle8.k, i23, i24);
                                                    j5 = spanStyle8.l;
                                                    if (j5 != 16) {
                                                    }
                                                    shadow = spanStyle8.n;
                                                    if (shadow == null) {
                                                    }
                                                    drawStyle = spanStyle8.o;
                                                    if (drawStyle != null) {
                                                    }
                                                    if (!TextUnitType.a(TextUnit.b(j9), 4294967296L)) {
                                                    }
                                                    i9 = 1;
                                                    spannableString = spannable;
                                                    textDecoration2 = textDecoration3;
                                                    i8 = i15 + 1;
                                                    size3 = i16;
                                                    density5 = density8;
                                                }
                                            }
                                            i15 = i8;
                                            textDecoration3 = textDecoration2;
                                            spannable = spannableString;
                                            density8 = density5;
                                            i16 = size3;
                                            spannableString = spannable;
                                            textDecoration2 = textDecoration3;
                                            i8 = i15 + 1;
                                            size3 = i16;
                                            density5 = density8;
                                        }
                                        Spannable spannable2 = spannableString;
                                        Density density10 = density5;
                                        if (i9 != 0) {
                                            int size7 = list4.size();
                                            for (int i26 = i6; i26 < size7; i26++) {
                                                AnnotatedString.Range range4 = (AnnotatedString.Range) list4.get(i26);
                                                AnnotatedString.Annotation annotation = (AnnotatedString.Annotation) range4.a;
                                                if (annotation instanceof SpanStyle) {
                                                    int i27 = range4.b;
                                                    int i28 = range4.c;
                                                    if (i27 >= 0 && i27 < spannable2.length() && i28 > i27 && i28 <= spannable2.length()) {
                                                        long j11 = ((SpanStyle) annotation).h;
                                                        long b4 = TextUnit.b(j11);
                                                        if (TextUnitType.a(b4, 4294967296L)) {
                                                            letterSpacingSpanEm = new LetterSpacingSpanPx(density10.I0(j11));
                                                        } else {
                                                            letterSpacingSpanEm = TextUnitType.a(b4, 8589934592L) ? new LetterSpacingSpanEm(TextUnit.c(j11)) : th;
                                                        }
                                                        if (letterSpacingSpanEm != null) {
                                                            spannable2.setSpan(letterSpacingSpanEm, i27, i28, 33);
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        textIndent2 = paragraphStyle.d;
                                        if (textIndent2 != null) {
                                            long j12 = textIndent2.a;
                                            long b5 = TextUnit.b(j12);
                                            if (TextUnitType.a(b5, 4294967296L)) {
                                                density10.I0(j12);
                                            } else if (TextUnitType.a(b5, 8589934592L)) {
                                                TextUnit.c(j12);
                                            }
                                        }
                                        size4 = list4.size();
                                        for (i10 = i6; i10 < size4; i10++) {
                                            Object obj5 = ((AnnotatedString.Range) list4.get(i10)).a;
                                        }
                                        size5 = list3.size();
                                        i11 = i6;
                                        while (i11 < size5) {
                                            List list6 = list3;
                                            AnnotatedString.Range range5 = (AnnotatedString.Range) list6.get(i11);
                                            Placeholder placeholder = (Placeholder) range5.a;
                                            int i29 = range5.b;
                                            int i30 = range5.c;
                                            Object[] spans = spannable2.getSpans(i29, i30, EmojiSpan.class);
                                            int length2 = spans.length;
                                            for (int i31 = i6; i31 < length2; i31++) {
                                                spannable2.removeSpan((EmojiSpan) spans[i31]);
                                            }
                                            long j13 = placeholder.a;
                                            long j14 = placeholder.b;
                                            float c3 = TextUnit.c(j13);
                                            int i32 = i11;
                                            list3 = list6;
                                            long b6 = TextUnit.b(placeholder.a);
                                            int i33 = size5;
                                            if (TextUnitType.a(b6, 4294967296L)) {
                                                density6 = density10;
                                                i12 = i6;
                                            } else if (TextUnitType.a(b6, 8589934592L)) {
                                                density6 = density10;
                                                i12 = 1;
                                            } else {
                                                density6 = density10;
                                                i12 = 2;
                                            }
                                            float c4 = TextUnit.c(j14);
                                            long b7 = TextUnit.b(j14);
                                            if (TextUnitType.a(b7, 4294967296L)) {
                                                i13 = i6;
                                            } else {
                                                i13 = TextUnitType.a(b7, 8589934592L) ? 1 : 2;
                                            }
                                            int i34 = placeholder.c;
                                            if (i34 == 1) {
                                                density7 = density6;
                                                i14 = i6;
                                            } else {
                                                if (i34 == 2) {
                                                    i14 = 1;
                                                } else {
                                                    i14 = 3;
                                                    if (i34 == 3) {
                                                        density7 = density6;
                                                        i14 = 2;
                                                    } else if (i34 != 4) {
                                                        if (i34 == 5) {
                                                            i14 = 4;
                                                        } else if (i34 == 6) {
                                                            i14 = 5;
                                                        } else {
                                                            if (i34 != 7) {
                                                                u2.l("Invalid PlaceholderVerticalAlign");
                                                                throw th;
                                                            }
                                                            i14 = 6;
                                                        }
                                                        density7 = density6;
                                                    }
                                                }
                                                density7 = density6;
                                            }
                                            spannable2.setSpan(new PlaceholderSpan(c3, i12, c4, i13, density7, i14), i29, i30, 33);
                                            size5 = i33;
                                            density10 = density7;
                                            i11 = i32 + 1;
                                        }
                                        androidParagraphIntrinsics = this;
                                        charSequence = spannable2;
                                        androidParagraphIntrinsics.h = charSequence;
                                        androidParagraphIntrinsics.i = new LayoutIntrinsics(charSequence, androidParagraphIntrinsics.g, androidParagraphIntrinsics.l);
                                    }
                                    i6 = 0;
                                } else {
                                    int size8 = arrayList.size();
                                    int i35 = size8 * 2;
                                    int[] iArr = new int[i35];
                                    int size9 = arrayList.size();
                                    for (int i36 = 0; i36 < size9; i36++) {
                                        AnnotatedString.Range range6 = (AnnotatedString.Range) arrayList.get(i36);
                                        iArr[i36] = range6.b;
                                        iArr[i36 + size8] = range6.c;
                                    }
                                    if (i35 > 1) {
                                        Arrays.sort(iArr);
                                    }
                                    if (i35 != 0) {
                                        i6 = 0;
                                        int i37 = iArr[0];
                                        int i38 = 0;
                                        SpanStyle spanStyle9 = spanStyle6;
                                        while (i38 < i35) {
                                            int i39 = iArr[i38];
                                            if (i39 == i37) {
                                                arrayList2 = arrayList;
                                                spanStyle3 = spanStyle9;
                                                density4 = density3;
                                                i7 = i35;
                                            } else {
                                                int size10 = arrayList.size();
                                                spanStyle3 = spanStyle9;
                                                int i40 = 0;
                                                SpanStyle spanStyle10 = spanStyle9;
                                                while (i40 < size10) {
                                                    ArrayList arrayList5 = arrayList;
                                                    AnnotatedString.Range range7 = (AnnotatedString.Range) arrayList.get(i40);
                                                    Density density11 = density3;
                                                    int i41 = range7.b;
                                                    int i42 = i35;
                                                    int i43 = range7.c;
                                                    if (i41 != i43 && AnnotatedStringKt.b(i37, i39, i41, i43)) {
                                                        SpanStyle spanStyle11 = (SpanStyle) range7.a;
                                                        spanStyle10 = spanStyle10 != null ? spanStyle10.c(spanStyle11) : spanStyle11;
                                                    }
                                                    i40++;
                                                    density3 = density11;
                                                    arrayList = arrayList5;
                                                    i35 = i42;
                                                    spanStyle10 = spanStyle10;
                                                }
                                                arrayList2 = arrayList;
                                                density4 = density3;
                                                i7 = i35;
                                                if (spanStyle10 != null) {
                                                    i0Var.f(spanStyle10, Integer.valueOf(i37), Integer.valueOf(i39));
                                                }
                                                i37 = i39;
                                            }
                                            i38++;
                                            spanStyle9 = spanStyle3;
                                            density3 = density4;
                                            arrayList = arrayList2;
                                            i35 = i7;
                                        }
                                    } else {
                                        fe.o("Array is empty.");
                                        throw th;
                                    }
                                }
                                density5 = density3;
                                size3 = list4.size();
                                i8 = i6;
                                i9 = i8;
                                while (i8 < size3) {
                                }
                                Spannable spannable22 = spannableString;
                                Density density102 = density5;
                                if (i9 != 0) {
                                }
                                textIndent2 = paragraphStyle.d;
                                if (textIndent2 != null) {
                                }
                                size4 = list4.size();
                                while (i10 < size4) {
                                }
                                size5 = list3.size();
                                i11 = i6;
                                while (i11 < size5) {
                                }
                                androidParagraphIntrinsics = this;
                                charSequence = spannable22;
                                androidParagraphIntrinsics.h = charSequence;
                                androidParagraphIntrinsics.i = new LayoutIntrinsics(charSequence, androidParagraphIntrinsics.g, androidParagraphIntrinsics.l);
                            }
                            aVar3 = aVar4;
                        } else {
                            aVar3 = aVar2;
                            density3 = density2;
                        }
                        list3 = list5;
                        arrayList = new ArrayList(list4.size());
                        size2 = list4.size();
                        while (i5 < size2) {
                        }
                        FontFamily fontFamily22 = spanStyle2.f;
                        if (fontFamily22 == null || spanStyle2.d != null || spanStyle2.c != null) {
                        }
                        i0 i0Var2 = new i0(8, spannableString, aVar3);
                        if (arrayList.size() <= 1) {
                        }
                        density5 = density3;
                        size3 = list4.size();
                        i8 = i6;
                        i9 = i8;
                        while (i8 < size3) {
                        }
                        Spannable spannable222 = spannableString;
                        Density density1022 = density5;
                        if (i9 != 0) {
                        }
                        textIndent2 = paragraphStyle.d;
                        if (textIndent2 != null) {
                        }
                        size4 = list4.size();
                        while (i10 < size4) {
                        }
                        size5 = list3.size();
                        i11 = i6;
                        while (i11 < size5) {
                        }
                        androidParagraphIntrinsics = this;
                        charSequence = spannable222;
                        androidParagraphIntrinsics.h = charSequence;
                        androidParagraphIntrinsics.i = new LayoutIntrinsics(charSequence, androidParagraphIntrinsics.g, androidParagraphIntrinsics.l);
                    }
                }
                i4 = 0;
                textIndent = paragraphStyle.d;
                if (textIndent == null) {
                }
                list3 = list5;
                arrayList = new ArrayList(list4.size());
                size2 = list4.size();
                while (i5 < size2) {
                }
                FontFamily fontFamily222 = spanStyle2.f;
                if (fontFamily222 == null || spanStyle2.d != null || spanStyle2.c != null) {
                }
                i0 i0Var22 = new i0(8, spannableString, aVar3);
                if (arrayList.size() <= 1) {
                }
                density5 = density3;
                size3 = list4.size();
                i8 = i6;
                i9 = i8;
                while (i8 < size3) {
                }
                Spannable spannable2222 = spannableString;
                Density density10222 = density5;
                if (i9 != 0) {
                }
                textIndent2 = paragraphStyle.d;
                if (textIndent2 != null) {
                }
                size4 = list4.size();
                while (i10 < size4) {
                }
                size5 = list3.size();
                i11 = i6;
                while (i11 < size5) {
                }
                androidParagraphIntrinsics = this;
                charSequence = spannable2222;
                androidParagraphIntrinsics.h = charSequence;
                androidParagraphIntrinsics.i = new LayoutIntrinsics(charSequence, androidParagraphIntrinsics.g, androidParagraphIntrinsics.l);
            }
            i = 3;
            obj2.l = i;
            obj2.m = -1;
            aVar = new a(obj2);
            textMotion = paragraphStyle2.i;
            if (textMotion == null) {
            }
            if (textMotion.b) {
            }
            textPaint.setFlags(flags);
            i2 = textMotion.a;
            if (i2 == 1) {
            }
            size = list.size();
            i3 = 0;
            while (true) {
                if (i3 >= size) {
                }
                i3++;
            }
            if (obj != null) {
            }
            long j62 = spanStyle4.b;
            fontWeight = spanStyle4.c;
            fontStyle = spanStyle4.d;
            str2 = spanStyle4.g;
            localeList = spanStyle4.k;
            TextForegroundStyle textForegroundStyle3 = spanStyle4.a;
            textGeometricTransform = spanStyle4.j;
            j = spanStyle4.h;
            b = TextUnit.b(j62);
            boolean z72 = z6;
            if (TextUnitType.a(b, 4294967296L)) {
            }
            fontFamily = spanStyle4.f;
            if (fontFamily != null) {
            }
            if (fontWeight == null) {
            }
            FontStyle fontStyle22 = new FontStyle(fontStyle != null ? fontStyle.a : 0);
            FontSynthesis fontSynthesis2 = spanStyle4.e;
            aVar2 = aVar;
            textPaint.setTypeface((Typeface) aVar2.j(fontFamily, fontWeight2, fontStyle22, new FontSynthesis(fontSynthesis2 != null ? fontSynthesis2.a : 65535)));
            if (localeList != null) {
            }
            if (str2 != null) {
                textPaint.setFontFeatureSettings(str2);
            }
            if (textGeometricTransform != null) {
                textPaint.setTextScaleX(textPaint.getTextScaleX() * textGeometricTransform.a);
                textPaint.setTextSkewX(textPaint.getTextSkewX() + textGeometricTransform.b);
            }
            textPaint.d(textForegroundStyle3.b());
            textPaint.c(textForegroundStyle3.d(), 9205357640488583168L, textForegroundStyle3.a());
            textPaint.f(spanStyle4.n);
            textPaint.g(spanStyle4.m);
            textPaint.e(spanStyle4.o);
            if (!TextUnitType.a(TextUnit.b(j), 4294967296L)) {
            }
            if (TextUnitType.a(TextUnit.b(j), 8589934592L)) {
            }
            j2 = spanStyle4.l;
            baselineShift = spanStyle4.i;
            if (z72) {
            }
            j3 = Color.h;
            if (Color.c(j2, j3)) {
            }
            if (baselineShift == null) {
            }
            if (z2) {
            }
            spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, z2 ? j : TextUnit.c, z4 ? baselineShift : th, (TextGeometricTransform) null, (LocaleList) null, z3 ? j2 : j3, (TextDecoration) null, (Shadow) null, 63103);
            List list42 = obj2.c;
            if (spanStyle != null) {
            }
            str3 = obj2.a;
            textSize = obj2.g.getTextSize();
            TextStyle textStyle22 = obj2.b;
            List list52 = obj2.d;
            density2 = obj2.f;
            z5 = obj2.k;
            String str52 = obj2.a;
            if (obj2.m == -1) {
            }
            AndroidParagraphHelper_androidKt$NoopSpan$1 androidParagraphHelper_androidKt$NoopSpan$12 = AndroidParagraphHelper_androidKt.a;
            if (z5) {
            }
            charSequence = str3;
            if (list42.isEmpty()) {
            }
            if (charSequence instanceof Spannable) {
            }
            spanStyle2 = textStyle22.a;
            paragraphStyle = textStyle22.b;
            textDecoration = spanStyle2.m;
            textDecoration2 = TextDecoration.c;
            if (Intrinsics.a(textDecoration, textDecoration2)) {
            }
            platformTextStyle = textStyle22.c;
            if (!((platformTextStyle != null || (platformParagraphStyle = platformTextStyle.a) == null) ? false : platformParagraphStyle.a)) {
            }
            LineHeightStyle lineHeightStyle2 = paragraphStyle.f;
            if (lineHeightStyle2 == null) {
            }
            a = SpannableExtensions_androidKt.a(paragraphStyle.c, textSize, density2);
            if (!Float.isNaN(a)) {
            }
            i4 = 0;
            textIndent = paragraphStyle.d;
            if (textIndent == null) {
            }
            list3 = list52;
            arrayList = new ArrayList(list42.size());
            size2 = list42.size();
            while (i5 < size2) {
            }
            FontFamily fontFamily2222 = spanStyle2.f;
            if (fontFamily2222 == null || spanStyle2.d != null || spanStyle2.c != null) {
            }
            i0 i0Var222 = new i0(8, spannableString, aVar3);
            if (arrayList.size() <= 1) {
            }
            density5 = density3;
            size3 = list42.size();
            i8 = i6;
            i9 = i8;
            while (i8 < size3) {
            }
            Spannable spannable22222 = spannableString;
            Density density102222 = density5;
            if (i9 != 0) {
            }
            textIndent2 = paragraphStyle.d;
            if (textIndent2 != null) {
            }
            size4 = list42.size();
            while (i10 < size4) {
            }
            size5 = list3.size();
            i11 = i6;
            while (i11 < size5) {
            }
            androidParagraphIntrinsics = this;
            charSequence = spannable22222;
            androidParagraphIntrinsics.h = charSequence;
            androidParagraphIntrinsics.i = new LayoutIntrinsics(charSequence, androidParagraphIntrinsics.g, androidParagraphIntrinsics.l);
        }
        i = 2;
        obj2.l = i;
        obj2.m = -1;
        aVar = new a(obj2);
        textMotion = paragraphStyle2.i;
        if (textMotion == null) {
        }
        if (textMotion.b) {
        }
        textPaint.setFlags(flags);
        i2 = textMotion.a;
        if (i2 == 1) {
        }
        size = list.size();
        i3 = 0;
        while (true) {
            if (i3 >= size) {
            }
            i3++;
        }
        if (obj != null) {
        }
        long j622 = spanStyle4.b;
        fontWeight = spanStyle4.c;
        fontStyle = spanStyle4.d;
        str2 = spanStyle4.g;
        localeList = spanStyle4.k;
        TextForegroundStyle textForegroundStyle32 = spanStyle4.a;
        textGeometricTransform = spanStyle4.j;
        j = spanStyle4.h;
        b = TextUnit.b(j622);
        boolean z722 = z6;
        if (TextUnitType.a(b, 4294967296L)) {
        }
        fontFamily = spanStyle4.f;
        if (fontFamily != null) {
        }
        if (fontWeight == null) {
        }
        FontStyle fontStyle222 = new FontStyle(fontStyle != null ? fontStyle.a : 0);
        FontSynthesis fontSynthesis22 = spanStyle4.e;
        aVar2 = aVar;
        textPaint.setTypeface((Typeface) aVar2.j(fontFamily, fontWeight2, fontStyle222, new FontSynthesis(fontSynthesis22 != null ? fontSynthesis22.a : 65535)));
        if (localeList != null) {
        }
        if (str2 != null) {
        }
        if (textGeometricTransform != null) {
        }
        textPaint.d(textForegroundStyle32.b());
        textPaint.c(textForegroundStyle32.d(), 9205357640488583168L, textForegroundStyle32.a());
        textPaint.f(spanStyle4.n);
        textPaint.g(spanStyle4.m);
        textPaint.e(spanStyle4.o);
        if (!TextUnitType.a(TextUnit.b(j), 4294967296L)) {
        }
        if (TextUnitType.a(TextUnit.b(j), 8589934592L)) {
        }
        j2 = spanStyle4.l;
        baselineShift = spanStyle4.i;
        if (z722) {
        }
        j3 = Color.h;
        if (Color.c(j2, j3)) {
        }
        if (baselineShift == null) {
        }
        if (z2) {
        }
        spanStyle = new SpanStyle(0L, 0L, (FontWeight) null, (FontStyle) null, (FontSynthesis) null, (FontFamily) null, (String) null, z2 ? j : TextUnit.c, z4 ? baselineShift : th, (TextGeometricTransform) null, (LocaleList) null, z3 ? j2 : j3, (TextDecoration) null, (Shadow) null, 63103);
        List list422 = obj2.c;
        if (spanStyle != null) {
        }
        str3 = obj2.a;
        textSize = obj2.g.getTextSize();
        TextStyle textStyle222 = obj2.b;
        List list522 = obj2.d;
        density2 = obj2.f;
        z5 = obj2.k;
        String str522 = obj2.a;
        if (obj2.m == -1) {
        }
        AndroidParagraphHelper_androidKt$NoopSpan$1 androidParagraphHelper_androidKt$NoopSpan$122 = AndroidParagraphHelper_androidKt.a;
        if (z5) {
        }
        charSequence = str3;
        if (list422.isEmpty()) {
        }
        if (charSequence instanceof Spannable) {
        }
        spanStyle2 = textStyle222.a;
        paragraphStyle = textStyle222.b;
        textDecoration = spanStyle2.m;
        textDecoration2 = TextDecoration.c;
        if (Intrinsics.a(textDecoration, textDecoration2)) {
        }
        platformTextStyle = textStyle222.c;
        if (!((platformTextStyle != null || (platformParagraphStyle = platformTextStyle.a) == null) ? false : platformParagraphStyle.a)) {
        }
        LineHeightStyle lineHeightStyle22 = paragraphStyle.f;
        if (lineHeightStyle22 == null) {
        }
        a = SpannableExtensions_androidKt.a(paragraphStyle.c, textSize, density2);
        if (!Float.isNaN(a)) {
        }
        i4 = 0;
        textIndent = paragraphStyle.d;
        if (textIndent == null) {
        }
        list3 = list522;
        arrayList = new ArrayList(list422.size());
        size2 = list422.size();
        while (i5 < size2) {
        }
        FontFamily fontFamily22222 = spanStyle2.f;
        if (fontFamily22222 == null || spanStyle2.d != null || spanStyle2.c != null) {
        }
        i0 i0Var2222 = new i0(8, spannableString, aVar3);
        if (arrayList.size() <= 1) {
        }
        density5 = density3;
        size3 = list422.size();
        i8 = i6;
        i9 = i8;
        while (i8 < size3) {
        }
        Spannable spannable222222 = spannableString;
        Density density1022222 = density5;
        if (i9 != 0) {
        }
        textIndent2 = paragraphStyle.d;
        if (textIndent2 != null) {
        }
        size4 = list422.size();
        while (i10 < size4) {
        }
        size5 = list3.size();
        i11 = i6;
        while (i11 < size5) {
        }
        androidParagraphIntrinsics = this;
        charSequence = spannable222222;
        androidParagraphIntrinsics.h = charSequence;
        androidParagraphIntrinsics.i = new LayoutIntrinsics(charSequence, androidParagraphIntrinsics.g, androidParagraphIntrinsics.l);
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final boolean a() {
        boolean z;
        TypefaceDirtyTrackerLinkedList typefaceDirtyTrackerLinkedList = this.j;
        if (typefaceDirtyTrackerLinkedList != null) {
            z = typefaceDirtyTrackerLinkedList.a();
        } else {
            z = false;
        }
        if (!z) {
            if (this.k || !ParagraphIntrinsicsKt.a(this.b) || !((Boolean) EmojiCompatStatus.a.a().getValue()).booleanValue()) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float b() {
        LayoutIntrinsics layoutIntrinsics = this.i;
        float f = layoutIntrinsics.e;
        TextPaint textPaint = layoutIntrinsics.b;
        if (!Float.isNaN(f)) {
            return layoutIntrinsics.e;
        }
        BreakIterator lineInstance = BreakIterator.getLineInstance(textPaint.getTextLocale());
        CharSequence charSequence = layoutIntrinsics.a;
        lineInstance.setText(new CharSequenceCharacterIterator(charSequence, charSequence.length()));
        PriorityQueue priorityQueue = new PriorityQueue(10, LayoutIntrinsics_androidKt.a);
        int i = 0;
        for (int next = lineInstance.next(); next != -1; next = lineInstance.next()) {
            if (priorityQueue.size() < 10) {
                priorityQueue.add(new IntProgression(i, next, 1));
            } else {
                IntRange intRange = (IntRange) priorityQueue.peek();
                if (intRange != null && intRange.k - intRange.j < next - i) {
                    priorityQueue.poll();
                    priorityQueue.add(new IntProgression(i, next, 1));
                }
            }
            i = next;
        }
        float f2 = 0.0f;
        if (!priorityQueue.isEmpty()) {
            Iterator it = priorityQueue.iterator();
            if (it.hasNext()) {
                IntRange intRange2 = (IntRange) it.next();
                f2 = Layout.getDesiredWidth(layoutIntrinsics.b(), intRange2.j, intRange2.k, textPaint);
                while (it.hasNext()) {
                    IntRange intRange3 = (IntRange) it.next();
                    f2 = Math.max(f2, Layout.getDesiredWidth(layoutIntrinsics.b(), intRange3.j, intRange3.k, textPaint));
                }
            } else {
                k8.o();
                return 0.0f;
            }
        }
        layoutIntrinsics.e = f2;
        return f2;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float c() {
        return this.i.c();
    }
}
