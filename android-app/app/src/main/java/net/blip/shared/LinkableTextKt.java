package net.blip.shared;

import androidx.collection.LruCache;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.text.InlineTextContent;
import androidx.compose.foundation.text.InlineTextContentKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.CacheTextLayoutInput;
import androidx.compose.ui.text.MultiParagraph;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.Placeholder;
import androidx.compose.ui.text.TextLayoutCache;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextMeasurer;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.u1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.Random;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.MatchGroup;
import kotlin.text.MatchResult;
import kotlin.text.Regex;
import net.blip.shared.LinkableSpan;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LinkableTextKt {
    public static final Regex a = new Regex("\\[([^\\]]+)\\]\\(([^\\)]+)\\)");

    public static final void a(Modifier modifier, String str, final TextStyle textStyle, final SimpleLinkTextButton simpleLinkTextButton, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        boolean z;
        Modifier modifier3;
        Modifier modifier4;
        boolean z2;
        char c;
        Object obj;
        Modifier modifier5;
        Iterator it;
        TextMeasurer textMeasurer;
        int i8;
        TextLayoutResult textLayoutResult;
        TextLayoutResult textLayoutResult2;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1959283744);
        int i9 = i2 & 1;
        int i10 = 2;
        if (i9 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i | i4;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        char c2 = ' ';
        if (gapComposer.f(str)) {
            i5 = 32;
        } else {
            i5 = 16;
        }
        int i11 = i3 | i5;
        TextStyle textStyle2 = textStyle;
        if (gapComposer.f(textStyle2)) {
            i6 = 256;
        } else {
            i6 = 128;
        }
        int i12 = i11 | i6;
        if (gapComposer.f(simpleLinkTextButton)) {
            i7 = 2048;
        } else {
            i7 = 1024;
        }
        int i13 = i12 | i7;
        int i14 = 1;
        if ((i13 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i13 & 1, z)) {
            if (i9 != 0) {
                modifier4 = Modifier.Companion.b;
            } else {
                modifier4 = modifier2;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            FontFamily.Resolver resolver = (FontFamily.Resolver) gapComposer.j(CompositionLocalsKt.k);
            Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
            LayoutDirection layoutDirection = (LayoutDirection) gapComposer.j(CompositionLocalsKt.n);
            boolean f = gapComposer.f(resolver) | gapComposer.f(density) | gapComposer.d(layoutDirection.ordinal()) | gapComposer.d(8);
            Object K = gapComposer.K();
            Object obj2 = Composer.Companion.a;
            if (f || K == obj2) {
                K = new TextMeasurer(resolver, density, layoutDirection);
                gapComposer.g0(K);
            }
            TextMeasurer textMeasurer2 = (TextMeasurer) K;
            if ((i13 & 112) == 32) {
                z2 = true;
            } else {
                z2 = false;
            }
            Object K2 = gapComposer.K();
            if (!z2 && K2 != obj2) {
                c = ' ';
                obj = K2;
            } else {
                ArrayList arrayList = new ArrayList();
                int i15 = 0;
                for (MatchResult matchResult : Regex.b(a, str)) {
                    char c3 = c2;
                    if (matchResult.a().b() == 3) {
                        MatchGroup c4 = matchResult.a().c(i14);
                        c4.getClass();
                        MatchGroup c5 = matchResult.a().c(i10);
                        c5.getClass();
                        arrayList.add(new LinkableSpan.Plain(str.subSequence(i15, matchResult.b().j).toString()));
                        IntRange intRange = c4.b;
                        String substring = str.substring(intRange.j, intRange.k + 1);
                        IntRange intRange2 = c5.b;
                        arrayList.add(new LinkableSpan.Link(substring, str.substring(intRange2.j, intRange2.k + 1)));
                        i15 = matchResult.b().k + 1;
                        c2 = c3;
                        i14 = i14;
                        i10 = 2;
                    } else {
                        throw new Exception("regex match unexpectedly has " + matchResult.a().b() + " groups: " + matchResult.a());
                    }
                }
                c = c2;
                arrayList.add(new LinkableSpan.Plain(str.subSequence(i15, str.length()).toString()));
                gapComposer.g0(arrayList);
                obj = arrayList;
            }
            gapComposer.W(1676016473);
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            gapComposer.W(1676017614);
            Iterator it2 = ((List) obj).iterator();
            while (it2.hasNext()) {
                LinkableSpan linkableSpan = (LinkableSpan) it2.next();
                if (linkableSpan instanceof LinkableSpan.Link) {
                    String str2 = linkableSpan.a;
                    gapComposer.W(2042527011);
                    String valueOf = String.valueOf(Random.k.a());
                    InlineTextContentKt.a(builder, valueOf, str2);
                    TextStyle a2 = DynamicFontTrackingKt.a(textStyle2);
                    long b = ConstraintsKt.b(0, 0, 0, 0, 15);
                    LayoutDirection layoutDirection2 = textMeasurer2.c;
                    Density density2 = textMeasurer2.b;
                    FontFamily.Resolver resolver2 = textMeasurer2.a;
                    modifier5 = modifier4;
                    AnnotatedString annotatedString = new AnnotatedString(str2);
                    TextLayoutCache textLayoutCache = textMeasurer2.d;
                    EmptyList emptyList = EmptyList.j;
                    TextLayoutInput textLayoutInput = new TextLayoutInput(annotatedString, a2, emptyList, Integer.MAX_VALUE, true, 1, density2, layoutDirection2, resolver2, b);
                    TextLayoutResult textLayoutResult3 = null;
                    if (textLayoutCache != null) {
                        CacheTextLayoutInput cacheTextLayoutInput = new CacheTextLayoutInput(textLayoutInput);
                        it = it2;
                        LruCache lruCache = textLayoutCache.a;
                        if (lruCache != null) {
                            textLayoutResult2 = (TextLayoutResult) lruCache.a(cacheTextLayoutInput);
                        } else if (Intrinsics.a(textLayoutCache.b, cacheTextLayoutInput)) {
                            textLayoutResult2 = textLayoutCache.c;
                        }
                        if (textLayoutResult2 != null && !textLayoutResult2.b.a.a()) {
                            textLayoutResult3 = textLayoutResult2;
                        }
                    } else {
                        it = it2;
                    }
                    TextLayoutResult textLayoutResult4 = textLayoutResult3;
                    if (textLayoutResult4 != null) {
                        textMeasurer = textMeasurer2;
                        textLayoutResult = new TextLayoutResult(textLayoutInput, textLayoutResult4.b, ConstraintsKt.d(b, (((int) Math.ceil(r0.e)) & 4294967295L) | (((int) Math.ceil(r0.d)) << c)));
                    } else {
                        textMeasurer = textMeasurer2;
                        MultiParagraphIntrinsics multiParagraphIntrinsics = new MultiParagraphIntrinsics(annotatedString, TextStyleKt.a(a2, layoutDirection2), emptyList, density2, resolver2, true);
                        int j = Constraints.j(b);
                        if (Constraints.d(b)) {
                            i8 = Constraints.h(b);
                        } else {
                            i8 = Integer.MAX_VALUE;
                        }
                        if (j != i8) {
                            i8 = RangesKt.d((int) Math.ceil(multiParagraphIntrinsics.c()), j, i8);
                        }
                        textLayoutResult = new TextLayoutResult(textLayoutInput, new MultiParagraph(multiParagraphIntrinsics, Constraints.Companion.b(0, i8, 0, Constraints.g(b)), Integer.MAX_VALUE, 1), ConstraintsKt.d(b, (((int) Math.ceil(r32.e)) & 4294967295L) | (((int) Math.ceil(r32.d)) << c)));
                        if (textLayoutCache != null) {
                            LruCache lruCache2 = textLayoutCache.a;
                            if (lruCache2 != null) {
                                lruCache2.b(new CacheTextLayoutInput(textLayoutInput), textLayoutResult);
                            } else {
                                textLayoutCache.b = new CacheTextLayoutInput(textLayoutInput);
                                textLayoutCache.c = textLayoutResult;
                            }
                        }
                    }
                    long j2 = textLayoutResult.c;
                    int i16 = (int) (j2 & 4294967295L);
                    final float f2 = i16 - textLayoutResult.d;
                    final Density density3 = (Density) gapComposer.j(CompositionLocalsKt.h);
                    final LinkableSpan.Link link = (LinkableSpan.Link) linkableSpan;
                    linkedHashMap.put(valueOf, new InlineTextContent(new Placeholder(1, density3.N(((int) (j2 >> c)) + 1), density3.N(i16)), ComposableLambdaKt.b(-1890905027, new Function3() { // from class: net.blip.shared.c
                        @Override // kotlin.jvm.functions.Function3
                        public final Object f(Object obj3, Object obj4, Object obj5) {
                            boolean z3;
                            Composer composer2 = (Composer) obj4;
                            int intValue = ((Integer) obj5).intValue();
                            Regex regex = LinkableTextKt.a;
                            ((String) obj3).getClass();
                            if ((intValue & 17) != 16) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (gapComposer2.N(intValue & 1, z3)) {
                                Modifier c6 = OffsetKt.c(Modifier.Companion.b, density3.X(f2), 1);
                                LinkableSpan.Link link2 = link;
                                SimpleLinkTextButton.this.a(c6, link2.a, link2.b, textStyle, gapComposer2, 0);
                            } else {
                                gapComposer2.Q();
                            }
                            return Unit.a;
                        }
                    }, gapComposer)));
                    gapComposer.p(false);
                } else {
                    modifier5 = modifier4;
                    it = it2;
                    textMeasurer = textMeasurer2;
                    gapComposer.W(2044475578);
                    gapComposer.p(false);
                    builder.j.append(linkableSpan.a);
                }
                modifier4 = modifier5;
                textStyle2 = textStyle;
                it2 = it;
                textMeasurer2 = textMeasurer;
            }
            Modifier modifier6 = modifier4;
            gapComposer.p(false);
            AnnotatedString e = builder.e();
            gapComposer.p(false);
            PlatformTextKt.b(e, modifier6, textStyle, 0, false, 0, 0, linkedHashMap, gapComposer, ((i13 << 3) & 112) | (i13 & 896), 760);
            modifier3 = modifier6;
        } else {
            gapComposer.Q();
            modifier3 = modifier2;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new u1(modifier3, str, textStyle, simpleLinkTextButton, i, i2, 3);
        }
    }
}
