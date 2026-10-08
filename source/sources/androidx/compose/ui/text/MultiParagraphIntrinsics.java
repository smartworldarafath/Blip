package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.MultiParagraphIntrinsics;
import androidx.compose.ui.text.ParagraphIntrinsicInfo;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.Density;
import defpackage.fe;
import defpackage.h;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.ArrayDeque;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MultiParagraphIntrinsics implements ParagraphIntrinsics {
    public final AnnotatedString a;
    public final List b;
    public final Lazy c;
    public final Lazy d;
    public final ArrayList e;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v11, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, java.util.Comparator] */
    public MultiParagraphIntrinsics(AnnotatedString annotatedString, TextStyle textStyle, List list, Density density, FontFamily.Resolver resolver, boolean z) {
        List list2;
        int i;
        String str;
        String str2;
        int i2;
        EmptyList emptyList;
        List list3;
        AnnotatedString annotatedString2 = annotatedString;
        TextStyle textStyle2 = textStyle;
        this.a = annotatedString2;
        this.b = list;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.k;
        final int i3 = 0;
        this.c = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: nb
            public final /* synthetic */ MultiParagraphIntrinsics k;

            {
                this.k = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v11 */
            /* JADX WARN: Type inference failed for: r0v12 */
            /* JADX WARN: Type inference failed for: r0v15 */
            /* JADX WARN: Type inference failed for: r0v18 */
            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r0v3 */
            /* JADX WARN: Type inference failed for: r0v5 */
            /* JADX WARN: Type inference failed for: r0v6 */
            /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r0v9 */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i4 = i3;
                float f = 0.0f;
                ParagraphIntrinsicInfo paragraphIntrinsicInfo = null;
                int i5 = 1;
                MultiParagraphIntrinsics multiParagraphIntrinsics = this.k;
                switch (i4) {
                    case 0:
                        ArrayList arrayList = multiParagraphIntrinsics.e;
                        if (!arrayList.isEmpty()) {
                            ?? r0 = arrayList.get(0);
                            float b = ((ParagraphIntrinsicInfo) r0).a.b();
                            int size = arrayList.size() - 1;
                            boolean z2 = r0;
                            if (1 <= size) {
                                while (true) {
                                    Object obj = arrayList.get(i5);
                                    float b2 = ((ParagraphIntrinsicInfo) obj).a.b();
                                    r0 = z2;
                                    if (Float.compare(b, b2) < 0) {
                                        r0 = obj;
                                        b = b2;
                                    }
                                    if (i5 != size) {
                                        i5++;
                                        z2 = r0;
                                    }
                                }
                            }
                            paragraphIntrinsicInfo = r0;
                        }
                        ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = paragraphIntrinsicInfo;
                        if (paragraphIntrinsicInfo2 != null) {
                            f = paragraphIntrinsicInfo2.a.b();
                        }
                        return Float.valueOf(f);
                    default:
                        ArrayList arrayList2 = multiParagraphIntrinsics.e;
                        if (!arrayList2.isEmpty()) {
                            ?? r02 = arrayList2.get(0);
                            float c = ((ParagraphIntrinsicInfo) r02).a.i.c();
                            int size2 = arrayList2.size() - 1;
                            boolean z3 = r02;
                            if (1 <= size2) {
                                while (true) {
                                    Object obj2 = arrayList2.get(i5);
                                    float c2 = ((ParagraphIntrinsicInfo) obj2).a.i.c();
                                    r02 = z3;
                                    if (Float.compare(c, c2) < 0) {
                                        r02 = obj2;
                                        c = c2;
                                    }
                                    if (i5 != size2) {
                                        i5++;
                                        z3 = r02;
                                    }
                                }
                            }
                            paragraphIntrinsicInfo = r02;
                        }
                        ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                        if (paragraphIntrinsicInfo3 != null) {
                            f = paragraphIntrinsicInfo3.a.i.c();
                        }
                        return Float.valueOf(f);
                }
            }
        });
        final int i4 = 1;
        this.d = LazyKt.a(lazyThreadSafetyMode, new Function0(this) { // from class: nb
            public final /* synthetic */ MultiParagraphIntrinsics k;

            {
                this.k = this;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r0v11 */
            /* JADX WARN: Type inference failed for: r0v12 */
            /* JADX WARN: Type inference failed for: r0v15 */
            /* JADX WARN: Type inference failed for: r0v18 */
            /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r0v3 */
            /* JADX WARN: Type inference failed for: r0v5 */
            /* JADX WARN: Type inference failed for: r0v6 */
            /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object] */
            /* JADX WARN: Type inference failed for: r0v9 */
            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i42 = i4;
                float f = 0.0f;
                ParagraphIntrinsicInfo paragraphIntrinsicInfo = null;
                int i5 = 1;
                MultiParagraphIntrinsics multiParagraphIntrinsics = this.k;
                switch (i42) {
                    case 0:
                        ArrayList arrayList = multiParagraphIntrinsics.e;
                        if (!arrayList.isEmpty()) {
                            ?? r0 = arrayList.get(0);
                            float b = ((ParagraphIntrinsicInfo) r0).a.b();
                            int size = arrayList.size() - 1;
                            boolean z2 = r0;
                            if (1 <= size) {
                                while (true) {
                                    Object obj = arrayList.get(i5);
                                    float b2 = ((ParagraphIntrinsicInfo) obj).a.b();
                                    r0 = z2;
                                    if (Float.compare(b, b2) < 0) {
                                        r0 = obj;
                                        b = b2;
                                    }
                                    if (i5 != size) {
                                        i5++;
                                        z2 = r0;
                                    }
                                }
                            }
                            paragraphIntrinsicInfo = r0;
                        }
                        ParagraphIntrinsicInfo paragraphIntrinsicInfo2 = paragraphIntrinsicInfo;
                        if (paragraphIntrinsicInfo2 != null) {
                            f = paragraphIntrinsicInfo2.a.b();
                        }
                        return Float.valueOf(f);
                    default:
                        ArrayList arrayList2 = multiParagraphIntrinsics.e;
                        if (!arrayList2.isEmpty()) {
                            ?? r02 = arrayList2.get(0);
                            float c = ((ParagraphIntrinsicInfo) r02).a.i.c();
                            int size2 = arrayList2.size() - 1;
                            boolean z3 = r02;
                            if (1 <= size2) {
                                while (true) {
                                    Object obj2 = arrayList2.get(i5);
                                    float c2 = ((ParagraphIntrinsicInfo) obj2).a.i.c();
                                    r02 = z3;
                                    if (Float.compare(c, c2) < 0) {
                                        r02 = obj2;
                                        c = c2;
                                    }
                                    if (i5 != size2) {
                                        i5++;
                                        z3 = r02;
                                    }
                                }
                            }
                            paragraphIntrinsicInfo = r02;
                        }
                        ParagraphIntrinsicInfo paragraphIntrinsicInfo3 = paragraphIntrinsicInfo;
                        if (paragraphIntrinsicInfo3 != null) {
                            f = paragraphIntrinsicInfo3.a.i.c();
                        }
                        return Float.valueOf(f);
                }
            }
        });
        ParagraphStyle paragraphStyle = textStyle2.b;
        AnnotatedString annotatedString3 = AnnotatedStringKt.a;
        ArrayList arrayList = annotatedString2.m;
        String str3 = annotatedString2.k;
        EmptyList emptyList2 = EmptyList.j;
        if (arrayList != null) {
            list2 = CollectionsKt.R(arrayList, new Object());
        } else {
            list2 = emptyList2;
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayDeque arrayDeque = new ArrayDeque();
        int size = list2.size();
        int i5 = 0;
        int i6 = 0;
        while (true) {
            int i7 = 14;
            if (i5 < size) {
                AnnotatedString.Range range = (AnnotatedString.Range) list2.get(i5);
                AnnotatedString.Range a = AnnotatedString.Range.a(range, paragraphStyle.a((ParagraphStyle) range.a), i3, 14);
                Object obj = a.a;
                int i8 = a.c;
                int i9 = a.b;
                while (i6 < i9 && !arrayDeque.isEmpty()) {
                    AnnotatedString.Range range2 = (AnnotatedString.Range) arrayDeque.last();
                    List list4 = list2;
                    int i10 = range2.c;
                    EmptyList emptyList3 = emptyList2;
                    Object obj2 = range2.a;
                    if (i9 < i10) {
                        arrayList2.add(new AnnotatedString.Range(i6, i9, obj2));
                        i6 = i9;
                        list2 = list4;
                        emptyList2 = emptyList3;
                    } else {
                        int i11 = size;
                        arrayList2.add(new AnnotatedString.Range(i6, i10, obj2));
                        i6 = range2.c;
                        while (!arrayDeque.isEmpty() && i6 == ((AnnotatedString.Range) arrayDeque.last()).c) {
                            arrayDeque.removeLast();
                        }
                        list2 = list4;
                        emptyList2 = emptyList3;
                        size = i11;
                    }
                }
                List list5 = list2;
                EmptyList emptyList4 = emptyList2;
                int i12 = size;
                if (i6 < i9) {
                    arrayList2.add(new AnnotatedString.Range(i6, i9, paragraphStyle));
                    i6 = i9;
                }
                AnnotatedString.Range range3 = (AnnotatedString.Range) arrayDeque.i();
                if (range3 != null) {
                    int i13 = range3.c;
                    Object obj3 = range3.a;
                    int i14 = range3.b;
                    if (i14 == i9 && i13 == i8) {
                        arrayDeque.removeLast();
                        arrayDeque.addLast(new AnnotatedString.Range(i9, i8, ((ParagraphStyle) obj3).a((ParagraphStyle) obj)));
                    } else if (i14 == i13) {
                        arrayList2.add(new AnnotatedString.Range(i14, i13, obj3));
                        arrayDeque.removeLast();
                        arrayDeque.addLast(new AnnotatedString.Range(i9, i8, obj));
                    } else if (i13 >= i8) {
                        arrayDeque.addLast(new AnnotatedString.Range(i9, i8, ((ParagraphStyle) obj3).a((ParagraphStyle) obj)));
                    } else {
                        fe.h();
                        throw null;
                    }
                } else {
                    arrayDeque.addLast(new AnnotatedString.Range(i9, i8, obj));
                }
                i5++;
                list2 = list5;
                emptyList2 = emptyList4;
                size = i12;
                i3 = 0;
            } else {
                EmptyList emptyList5 = emptyList2;
                while (i6 <= str3.length() && !arrayDeque.isEmpty()) {
                    AnnotatedString.Range range4 = (AnnotatedString.Range) arrayDeque.last();
                    Object obj4 = range4.a;
                    int i15 = range4.c;
                    arrayList2.add(new AnnotatedString.Range(i6, i15, obj4));
                    while (!arrayDeque.isEmpty() && i15 == ((AnnotatedString.Range) arrayDeque.last()).c) {
                        arrayDeque.removeLast();
                    }
                    i6 = i15;
                }
                if (i6 < str3.length()) {
                    arrayList2.add(new AnnotatedString.Range(i6, str3.length(), paragraphStyle));
                }
                if (arrayList2.isEmpty()) {
                    i = 0;
                    arrayList2.add(new AnnotatedString.Range(0, 0, paragraphStyle));
                } else {
                    i = 0;
                }
                ArrayList arrayList3 = new ArrayList(arrayList2.size());
                int size2 = arrayList2.size();
                int i16 = i;
                while (i16 < size2) {
                    AnnotatedString.Range range5 = (AnnotatedString.Range) arrayList2.get(i16);
                    int i17 = range5.b;
                    int i18 = range5.c;
                    if (i17 != i18) {
                        str = str3.substring(i17, i18);
                    } else {
                        str = "";
                    }
                    List a2 = AnnotatedStringKt.a(annotatedString2, i17, i18, new h(i7));
                    AnnotatedString annotatedString4 = new AnnotatedString(str, a2 == null ? emptyList5 : a2);
                    ParagraphStyle paragraphStyle2 = (ParagraphStyle) range5.a;
                    if (paragraphStyle2.b == 0) {
                        str2 = str3;
                        i2 = size2;
                        paragraphStyle2 = new ParagraphStyle(paragraphStyle2.a, paragraphStyle.b, paragraphStyle2.c, paragraphStyle2.d, paragraphStyle2.e, paragraphStyle2.f, paragraphStyle2.g, paragraphStyle2.h, paragraphStyle2.i);
                    } else {
                        str2 = str3;
                        i2 = size2;
                    }
                    TextStyle textStyle3 = new TextStyle(textStyle2.a, paragraphStyle.a(paragraphStyle2));
                    ?? r5 = annotatedString4.j;
                    if (r5 == 0) {
                        emptyList = emptyList5;
                    } else {
                        emptyList = r5;
                    }
                    List list6 = this.b;
                    ArrayList arrayList4 = new ArrayList(list6.size());
                    int size3 = list6.size();
                    int i19 = 0;
                    while (i19 < size3) {
                        AnnotatedString.Range range6 = (AnnotatedString.Range) list6.get(i19);
                        int i20 = range6.b;
                        ParagraphStyle paragraphStyle3 = paragraphStyle;
                        int i21 = range6.c;
                        if (AnnotatedStringKt.b(i17, i18, i20, i21)) {
                            if (i17 > i20 || i21 > i18) {
                                InlineClassHelperKt.a("placeholder can not overlap with paragraph.");
                            }
                            list3 = list6;
                            arrayList4.add(new AnnotatedString.Range(i20 - i17, i21 - i17, range6.a));
                        } else {
                            list3 = list6;
                        }
                        i19++;
                        list6 = list3;
                        paragraphStyle = paragraphStyle3;
                    }
                    arrayList3.add(new ParagraphIntrinsicInfo(new AndroidParagraphIntrinsics(str, textStyle3, emptyList, arrayList4, resolver, density, z), i17, i18));
                    i16++;
                    annotatedString2 = annotatedString;
                    textStyle2 = textStyle;
                    str3 = str2;
                    size2 = i2;
                    i7 = 14;
                }
                this.e = arrayList3;
                return;
            }
        }
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final boolean a() {
        ArrayList arrayList = this.e;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            if (((ParagraphIntrinsicInfo) arrayList.get(i)).a.a()) {
                return true;
            }
        }
        return false;
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float b() {
        return ((Number) this.c.getValue()).floatValue();
    }

    @Override // androidx.compose.ui.text.ParagraphIntrinsics
    public final float c() {
        return ((Number) this.d.getValue()).floatValue();
    }
}
