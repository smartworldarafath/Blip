package androidx.compose.ui.text.platform;

import android.text.SpannableString;
import android.text.style.BackgroundColorSpan;
import android.text.style.ClickableSpan;
import android.text.style.ScaleXSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TtsSpan;
import android.text.style.URLSpan;
import android.text.style.UnderlineSpan;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.AnnotatedStringKt;
import androidx.compose.ui.text.LinkAnnotation;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.TtsAnnotation;
import androidx.compose.ui.text.UrlAnnotation;
import androidx.compose.ui.text.VerbatimTtsAnnotation;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.intl.LocaleList;
import androidx.compose.ui.text.platform.extensions.SpannableExtensions_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextForegroundStyle;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.Density;
import defpackage.k8;
import java.util.ArrayList;
import java.util.List;
import java.util.WeakHashMap;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidAccessibilitySpannableString_androidKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [kotlin.collections.EmptyList] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.util.ArrayList] */
    public static final SpannableString a(AnnotatedString annotatedString, Density density, URLSpanCache uRLSpanCache) {
        ArrayList arrayList;
        TextForegroundStyle b;
        int i;
        boolean z;
        boolean z2;
        int i2;
        int i3;
        String str = annotatedString.k;
        List list = annotatedString.j;
        SpannableString spannableString = new SpannableString(str);
        ArrayList arrayList2 = annotatedString.l;
        if (arrayList2 != null) {
            int size = arrayList2.size();
            int i4 = 0;
            while (i4 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) arrayList2.get(i4);
                SpanStyle spanStyle = (SpanStyle) range.a;
                int i5 = range.b;
                int i6 = range.c;
                int i7 = size;
                long b2 = spanStyle.a.b();
                long j = spanStyle.b;
                FontWeight fontWeight = spanStyle.c;
                FontStyle fontStyle = spanStyle.d;
                TextGeometricTransform textGeometricTransform = spanStyle.j;
                LocaleList localeList = spanStyle.k;
                ArrayList arrayList3 = arrayList2;
                long j2 = spanStyle.l;
                TextDecoration textDecoration = spanStyle.m;
                TextForegroundStyle textForegroundStyle = spanStyle.a;
                if (Color.c(b2, textForegroundStyle.b())) {
                    b = textForegroundStyle;
                } else {
                    b = TextForegroundStyle.Companion.b(b2);
                }
                SpannableExtensions_androidKt.b(spannableString, b.b(), i5, i6);
                SpannableExtensions_androidKt.c(spannableString, j, density, i5, i6);
                if (fontWeight == null && fontStyle == null) {
                    i3 = 33;
                } else {
                    if (fontWeight == null) {
                        fontWeight = FontWeight.q;
                    }
                    if (fontStyle != null) {
                        i = fontStyle.a;
                    } else {
                        i = 0;
                    }
                    if (fontWeight.compareTo(FontWeight.m) >= 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (i == 1) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (z2 && z) {
                        i2 = 3;
                    } else if (z) {
                        i2 = 1;
                    } else if (z2) {
                        i2 = 2;
                    } else {
                        i2 = 0;
                    }
                    StyleSpan styleSpan = new StyleSpan(i2);
                    i3 = 33;
                    spannableString.setSpan(styleSpan, i5, i6, 33);
                }
                if (textDecoration != null) {
                    if (textDecoration.a(TextDecoration.c)) {
                        spannableString.setSpan(new UnderlineSpan(), i5, i6, i3);
                    }
                    if (textDecoration.a(TextDecoration.d)) {
                        spannableString.setSpan(new StrikethroughSpan(), i5, i6, i3);
                    }
                }
                if (textGeometricTransform != null) {
                    spannableString.setSpan(new ScaleXSpan(textGeometricTransform.a), i5, i6, i3);
                }
                SpannableExtensions_androidKt.d(spannableString, localeList, i5, i6);
                if (j2 != 16) {
                    spannableString.setSpan(new BackgroundColorSpan(ColorKt.f(j2)), i5, i6, i3);
                }
                i4++;
                size = i7;
                arrayList2 = arrayList3;
            }
        }
        int length = str.length();
        ?? r4 = EmptyList.j;
        if (list != null) {
            arrayList = new ArrayList(list.size());
            int size2 = list.size();
            for (int i8 = 0; i8 < size2; i8++) {
                Object obj = list.get(i8);
                AnnotatedString.Range range2 = (AnnotatedString.Range) obj;
                if ((range2.a instanceof TtsAnnotation) && AnnotatedStringKt.b(0, length, range2.b, range2.c)) {
                    arrayList.add(obj);
                }
            }
        } else {
            arrayList = r4;
        }
        int size3 = arrayList.size();
        for (int i9 = 0; i9 < size3; i9++) {
            AnnotatedString.Range range3 = (AnnotatedString.Range) arrayList.get(i9);
            TtsAnnotation ttsAnnotation = (TtsAnnotation) range3.a;
            int i10 = range3.b;
            int i11 = range3.c;
            if (ttsAnnotation instanceof VerbatimTtsAnnotation) {
                spannableString.setSpan(new TtsSpan.VerbatimBuilder(((VerbatimTtsAnnotation) ttsAnnotation).a).build(), i10, i11, 33);
            } else {
                k8.e();
                return null;
            }
        }
        int length2 = str.length();
        if (list != null) {
            r4 = new ArrayList(list.size());
            int size4 = list.size();
            for (int i12 = 0; i12 < size4; i12++) {
                Object obj2 = list.get(i12);
                AnnotatedString.Range range4 = (AnnotatedString.Range) obj2;
                if ((range4.a instanceof UrlAnnotation) && AnnotatedStringKt.b(0, length2, range4.b, range4.c)) {
                    r4.add(obj2);
                }
            }
        }
        int size5 = r4.size();
        for (int i13 = 0; i13 < size5; i13++) {
            AnnotatedString.Range range5 = (AnnotatedString.Range) r4.get(i13);
            UrlAnnotation urlAnnotation = (UrlAnnotation) range5.a;
            int i14 = range5.b;
            int i15 = range5.c;
            WeakHashMap weakHashMap = uRLSpanCache.a;
            Object obj3 = weakHashMap.get(urlAnnotation);
            if (obj3 == null) {
                obj3 = new URLSpan(urlAnnotation.a);
                weakHashMap.put(urlAnnotation, obj3);
            }
            spannableString.setSpan((URLSpan) obj3, i14, i15, 33);
        }
        List b3 = annotatedString.b(str.length());
        int size6 = b3.size();
        for (int i16 = 0; i16 < size6; i16++) {
            AnnotatedString.Range range6 = (AnnotatedString.Range) b3.get(i16);
            int i17 = range6.b;
            Object obj4 = range6.a;
            int i18 = range6.c;
            if (i17 != i18) {
                LinkAnnotation linkAnnotation = (LinkAnnotation) obj4;
                if (linkAnnotation instanceof LinkAnnotation.Url) {
                    obj4.getClass();
                    LinkAnnotation.Url url = (LinkAnnotation.Url) obj4;
                    AnnotatedString.Range range7 = new AnnotatedString.Range(i17, i18, url);
                    WeakHashMap weakHashMap2 = uRLSpanCache.b;
                    Object obj5 = weakHashMap2.get(range7);
                    if (obj5 == null) {
                        obj5 = new URLSpan(url.a);
                        weakHashMap2.put(range7, obj5);
                    }
                    spannableString.setSpan((URLSpan) obj5, i17, i18, 33);
                } else {
                    WeakHashMap weakHashMap3 = uRLSpanCache.c;
                    Object obj6 = weakHashMap3.get(range6);
                    if (obj6 == null) {
                        obj6 = new ComposeClickableSpan(linkAnnotation);
                        weakHashMap3.put(range6, obj6);
                    }
                    spannableString.setSpan((ClickableSpan) obj6, i17, i18, 33);
                }
            }
        }
        return spannableString;
    }
}
