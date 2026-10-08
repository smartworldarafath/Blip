package androidx.media3.extractor.text.ttml;

import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Pair;
import androidx.media3.common.text.Cue;
import androidx.media3.common.text.RubySpan;
import androidx.media3.common.text.SpanUtil;
import androidx.media3.common.text.TextEmphasisSpan;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.Util;
import defpackage.u2;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.TreeSet;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TtmlNode {
    public final String a;
    public final String b;
    public final boolean c;
    public final long d;
    public final long e;
    public final TtmlStyle f;
    public final String[] g;
    public final String h;
    public final String i;
    public final TtmlNode j;
    public final HashMap k;
    public final HashMap l;
    public ArrayList m;

    public TtmlNode(String str, String str2, long j, long j2, TtmlStyle ttmlStyle, String[] strArr, String str3, String str4, TtmlNode ttmlNode) {
        boolean z;
        this.a = str;
        this.b = str2;
        this.i = str4;
        this.f = ttmlStyle;
        this.g = strArr;
        if (str2 != null) {
            z = true;
        } else {
            z = false;
        }
        this.c = z;
        this.d = j;
        this.e = j2;
        str3.getClass();
        this.h = str3;
        this.j = ttmlNode;
        this.k = new HashMap();
        this.l = new HashMap();
    }

    public static TtmlNode a(String str) {
        return new TtmlNode(null, str.replaceAll("\r\n", "\n").replaceAll(" *\n *", "\n").replaceAll("\n", " ").replaceAll("[ \t\\x0B\f\r]+", " "), -9223372036854775807L, -9223372036854775807L, null, null, "", null, null);
    }

    public static SpannableStringBuilder e(String str, TreeMap treeMap) {
        if (!treeMap.containsKey(str)) {
            Cue.Builder builder = new Cue.Builder();
            builder.b(new SpannableStringBuilder());
            treeMap.put(str, builder);
        }
        CharSequence charSequence = ((Cue.Builder) treeMap.get(str)).a;
        charSequence.getClass();
        return (SpannableStringBuilder) charSequence;
    }

    public final TtmlNode b(int i) {
        ArrayList arrayList = this.m;
        if (arrayList != null) {
            return (TtmlNode) arrayList.get(i);
        }
        throw new IndexOutOfBoundsException();
    }

    public final int c() {
        ArrayList arrayList = this.m;
        if (arrayList == null) {
            return 0;
        }
        return arrayList.size();
    }

    public final void d(TreeSet treeSet, boolean z) {
        boolean z2;
        String str = this.a;
        boolean equals = "p".equals(str);
        boolean equals2 = "div".equals(str);
        if (z || equals || (equals2 && this.i != null)) {
            long j = this.d;
            if (j != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j));
            }
            long j2 = this.e;
            if (j2 != -9223372036854775807L) {
                treeSet.add(Long.valueOf(j2));
            }
        }
        if (this.m != null) {
            for (int i = 0; i < this.m.size(); i++) {
                TtmlNode ttmlNode = (TtmlNode) this.m.get(i);
                if (!z && !equals) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                ttmlNode.d(treeSet, z2);
            }
        }
    }

    public final boolean f(long j) {
        long j2 = this.d;
        long j3 = this.e;
        if (j2 != -9223372036854775807L || j3 != -9223372036854775807L) {
            if (j2 > j || j3 != -9223372036854775807L) {
                if (j2 != -9223372036854775807L || j >= j3) {
                    if (j2 <= j && j < j3) {
                        return true;
                    }
                    return false;
                }
                return true;
            }
            return true;
        }
        return true;
    }

    public final void g(long j, String str, ArrayList arrayList) {
        String str2;
        String str3 = this.h;
        if (!"".equals(str3)) {
            str = str3;
        }
        if (f(j) && "div".equals(this.a) && (str2 = this.i) != null) {
            arrayList.add(new Pair(str, str2));
            return;
        }
        for (int i = 0; i < c(); i++) {
            b(i).g(j, str, arrayList);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:102:0x02cb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x028e  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0216  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x02a8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void h(long j, Map map, HashMap hashMap, String str, TreeMap treeMap) {
        String str2;
        int i;
        Iterator it;
        char c;
        char c2;
        int i2;
        int i3;
        TtmlNode ttmlNode;
        int i4;
        int i5;
        TtmlStyle a;
        int i6;
        float f;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        Map map2 = map;
        if (f(j)) {
            String str3 = this.h;
            if ("".equals(str3)) {
                str2 = str;
            } else {
                str2 = str3;
            }
            Iterator it2 = this.l.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                String str4 = (String) entry.getKey();
                HashMap hashMap2 = this.k;
                if (hashMap2.containsKey(str4)) {
                    i = ((Integer) hashMap2.get(str4)).intValue();
                } else {
                    i = 0;
                }
                int intValue = ((Integer) entry.getValue()).intValue();
                if (i != intValue) {
                    Cue.Builder builder = (Cue.Builder) treeMap.get(str4);
                    builder.getClass();
                    TtmlRegion ttmlRegion = (TtmlRegion) hashMap.get(str2);
                    ttmlRegion.getClass();
                    int i13 = ttmlRegion.j;
                    TtmlStyle a2 = TtmlRenderUtil.a(this.f, this.g, map2);
                    SpannableStringBuilder spannableStringBuilder = (SpannableStringBuilder) builder.a;
                    if (spannableStringBuilder == null) {
                        spannableStringBuilder = new SpannableStringBuilder();
                        builder.b(spannableStringBuilder);
                    }
                    if (a2 != null) {
                        int i14 = a2.h;
                        int i15 = 1;
                        if (i14 == -1 && a2.i == -1) {
                            i2 = -1;
                        } else {
                            if (i14 == 1) {
                                c = 1;
                            } else {
                                c = 0;
                            }
                            if (a2.i == 1) {
                                c2 = 2;
                            } else {
                                c2 = 0;
                            }
                            i2 = c | c2;
                        }
                        if (i2 != -1) {
                            int i16 = a2.h;
                            if (i16 == -1) {
                                if (a2.i == -1) {
                                    i12 = -1;
                                    i15 = 1;
                                    StyleSpan styleSpan = new StyleSpan(i12);
                                    i3 = 33;
                                    spannableStringBuilder.setSpan(styleSpan, i, intValue, 33);
                                } else {
                                    i15 = 1;
                                }
                            }
                            if (i16 == i15) {
                                i10 = i15;
                            } else {
                                i10 = 0;
                            }
                            if (a2.i == i15) {
                                i11 = 2;
                            } else {
                                i11 = 0;
                            }
                            i12 = i10 | i11;
                            StyleSpan styleSpan2 = new StyleSpan(i12);
                            i3 = 33;
                            spannableStringBuilder.setSpan(styleSpan2, i, intValue, 33);
                        } else {
                            i3 = 33;
                        }
                        if (a2.f == i15) {
                            spannableStringBuilder.setSpan(new StrikethroughSpan(), i, intValue, i3);
                        }
                        if (a2.g == i15) {
                            spannableStringBuilder.setSpan(new UnderlineSpan(), i, intValue, i3);
                        }
                        if (a2.c) {
                            if (a2.c) {
                                SpanUtil.a(spannableStringBuilder, new ForegroundColorSpan(a2.b), i, intValue);
                            } else {
                                u2.l("Font color has not been defined.");
                                return;
                            }
                        }
                        if (a2.e) {
                            if (a2.e) {
                                SpanUtil.a(spannableStringBuilder, new BackgroundColorSpan(a2.d), i, intValue);
                            } else {
                                u2.l("Background color has not been defined.");
                                return;
                            }
                        }
                        if (a2.a != null) {
                            SpanUtil.a(spannableStringBuilder, new TypefaceSpan(a2.a), i, intValue);
                        }
                        TextEmphasis textEmphasis = a2.r;
                        if (textEmphasis != null) {
                            int i17 = textEmphasis.a;
                            if (i17 == -1) {
                                if (i13 != 2 && i13 != 1) {
                                    i9 = 1;
                                } else {
                                    i9 = 3;
                                }
                                i17 = i9;
                                i8 = 1;
                            } else {
                                i8 = textEmphasis.b;
                            }
                            int i18 = textEmphasis.c;
                            if (i18 == -2) {
                                i18 = 1;
                            }
                            SpanUtil.a(spannableStringBuilder, new TextEmphasisSpan(i17, i8, i18), i, intValue);
                        }
                        int i19 = a2.m;
                        if (i19 != 2) {
                            if (i19 == 3 || i19 == 4) {
                                spannableStringBuilder.setSpan(new Object(), i, intValue, 33);
                            }
                        } else {
                            TtmlNode ttmlNode2 = this.j;
                            while (true) {
                                if (ttmlNode2 != null) {
                                    TtmlStyle a3 = TtmlRenderUtil.a(ttmlNode2.f, ttmlNode2.g, map2);
                                    if (a3 != null && a3.m == 1) {
                                        break;
                                    } else {
                                        ttmlNode2 = ttmlNode2.j;
                                    }
                                } else {
                                    ttmlNode2 = null;
                                    break;
                                }
                            }
                            if (ttmlNode2 != null) {
                                ArrayDeque arrayDeque = new ArrayDeque();
                                arrayDeque.push(ttmlNode2);
                                while (true) {
                                    if (!arrayDeque.isEmpty()) {
                                        TtmlNode ttmlNode3 = (TtmlNode) arrayDeque.pop();
                                        TtmlStyle a4 = TtmlRenderUtil.a(ttmlNode3.f, ttmlNode3.g, map2);
                                        if (a4 != null && a4.m == 3) {
                                            ttmlNode = ttmlNode3;
                                            break;
                                        }
                                        for (int c3 = ttmlNode3.c() - 1; c3 >= 0; c3--) {
                                            arrayDeque.push(ttmlNode3.b(c3));
                                        }
                                    } else {
                                        ttmlNode = null;
                                        break;
                                    }
                                }
                                if (ttmlNode != null) {
                                    if (ttmlNode.c() == 1) {
                                        i4 = 0;
                                        if (ttmlNode.b(0).b != null) {
                                            String str5 = ttmlNode.b(0).b;
                                            String str6 = Util.a;
                                            TtmlStyle a5 = TtmlRenderUtil.a(ttmlNode.f, ttmlNode.g, map2);
                                            if (a5 != null) {
                                                i5 = a5.n;
                                            } else {
                                                i5 = -1;
                                            }
                                            if (i5 == -1 && (a = TtmlRenderUtil.a(ttmlNode2.f, ttmlNode2.g, map2)) != null) {
                                                i5 = a.n;
                                            }
                                            spannableStringBuilder.setSpan(new RubySpan(str5, i5), i, intValue, 33);
                                            if (a2.q == 1) {
                                                SpanUtil.a(spannableStringBuilder, new Object(), i, intValue);
                                            }
                                            i6 = a2.j;
                                            float f2 = 100.0f;
                                            if (i6 != 1) {
                                                if (i6 != 2) {
                                                    if (i6 != 3) {
                                                        it = it2;
                                                        f = 100.0f;
                                                    } else {
                                                        float f3 = a2.k / 100.0f;
                                                        RelativeSizeSpan[] relativeSizeSpanArr = (RelativeSizeSpan[]) spannableStringBuilder.getSpans(i, intValue, RelativeSizeSpan.class);
                                                        int length = relativeSizeSpanArr.length;
                                                        int i20 = i4;
                                                        float f4 = f3;
                                                        int i21 = i20;
                                                        while (i21 < length) {
                                                            float f5 = f2;
                                                            RelativeSizeSpan relativeSizeSpan = relativeSizeSpanArr[i21];
                                                            Iterator it3 = it2;
                                                            if (spannableStringBuilder.getSpanStart(relativeSizeSpan) <= i && spannableStringBuilder.getSpanEnd(relativeSizeSpan) >= intValue) {
                                                                f4 = relativeSizeSpan.getSizeChange() * f4;
                                                            }
                                                            if (spannableStringBuilder.getSpanStart(relativeSizeSpan) == i && spannableStringBuilder.getSpanEnd(relativeSizeSpan) == intValue) {
                                                                i7 = i21;
                                                                if (spannableStringBuilder.getSpanFlags(relativeSizeSpan) == 33) {
                                                                    spannableStringBuilder.removeSpan(relativeSizeSpan);
                                                                }
                                                            } else {
                                                                i7 = i21;
                                                            }
                                                            i21 = i7 + 1;
                                                            f2 = f5;
                                                            it2 = it3;
                                                        }
                                                        it = it2;
                                                        f = f2;
                                                        spannableStringBuilder.setSpan(new RelativeSizeSpan(f4), i, intValue, 33);
                                                    }
                                                } else {
                                                    it = it2;
                                                    f = 100.0f;
                                                    SpanUtil.a(spannableStringBuilder, new RelativeSizeSpan(a2.k), i, intValue);
                                                }
                                            } else {
                                                it = it2;
                                                f = 100.0f;
                                                SpanUtil.a(spannableStringBuilder, new AbsoluteSizeSpan((int) a2.k, true), i, intValue);
                                            }
                                            if ("p".equals(this.a)) {
                                                float f6 = a2.s;
                                                if (f6 != Float.MAX_VALUE) {
                                                    builder.q = (f6 * (-90.0f)) / f;
                                                }
                                                Layout.Alignment alignment = a2.o;
                                                if (alignment != null) {
                                                    builder.c = alignment;
                                                }
                                                Layout.Alignment alignment2 = a2.p;
                                                if (alignment2 != null) {
                                                    builder.d = alignment2;
                                                }
                                            }
                                            it2 = it;
                                        }
                                    } else {
                                        i4 = 0;
                                    }
                                    Log.e("TtmlRenderUtil", "Skipping rubyText node without exactly one text child.");
                                    if (a2.q == 1) {
                                    }
                                    i6 = a2.j;
                                    float f22 = 100.0f;
                                    if (i6 != 1) {
                                    }
                                    if ("p".equals(this.a)) {
                                    }
                                    it2 = it;
                                }
                            }
                        }
                        i4 = 0;
                        if (a2.q == 1) {
                        }
                        i6 = a2.j;
                        float f222 = 100.0f;
                        if (i6 != 1) {
                        }
                        if ("p".equals(this.a)) {
                        }
                        it2 = it;
                    }
                }
                it = it2;
                it2 = it;
            }
            int i22 = 0;
            while (i22 < c()) {
                b(i22).h(j, map2, hashMap, str2, treeMap);
                i22++;
                map2 = map;
            }
        }
    }

    public final void i(long j, boolean z, String str, TreeMap treeMap) {
        String str2;
        boolean z2;
        HashMap hashMap = this.k;
        hashMap.clear();
        HashMap hashMap2 = this.l;
        hashMap2.clear();
        String str3 = this.a;
        if (!"metadata".equals(str3)) {
            String str4 = this.h;
            if ("".equals(str4)) {
                str2 = str;
            } else {
                str2 = str4;
            }
            if (this.c && z) {
                SpannableStringBuilder e = e(str2, treeMap);
                String str5 = this.b;
                str5.getClass();
                e.append((CharSequence) str5);
                return;
            }
            if ("br".equals(str3) && z) {
                e(str2, treeMap).append('\n');
                return;
            }
            if (f(j)) {
                for (Map.Entry entry : treeMap.entrySet()) {
                    String str6 = (String) entry.getKey();
                    CharSequence charSequence = ((Cue.Builder) entry.getValue()).a;
                    charSequence.getClass();
                    hashMap.put(str6, Integer.valueOf(charSequence.length()));
                }
                boolean equals = "p".equals(str3);
                for (int i = 0; i < c(); i++) {
                    TtmlNode b = b(i);
                    if (!z && !equals) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    b.i(j, z2, str2, treeMap);
                }
                if (equals) {
                    SpannableStringBuilder e2 = e(str2, treeMap);
                    int length = e2.length() - 1;
                    while (length >= 0 && e2.charAt(length) == ' ') {
                        length--;
                    }
                    if (length >= 0 && e2.charAt(length) != '\n') {
                        e2.append('\n');
                    }
                }
                for (Map.Entry entry2 : treeMap.entrySet()) {
                    String str7 = (String) entry2.getKey();
                    CharSequence charSequence2 = ((Cue.Builder) entry2.getValue()).a;
                    charSequence2.getClass();
                    hashMap2.put(str7, Integer.valueOf(charSequence2.length()));
                }
            }
        }
    }
}
