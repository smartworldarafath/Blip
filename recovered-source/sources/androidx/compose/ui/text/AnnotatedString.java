package androidx.compose.ui.text;

import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.fe;
import defpackage.p2;
import defpackage.q;
import defpackage.qg;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnnotatedString implements CharSequence {
    public final List j;
    public final String k;
    public final ArrayList l;
    public final ArrayList m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Annotation {
    }

    static {
        SaverKt$Saver$1 saverKt$Saver$1 = SaversKt.a;
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b1, code lost:
    
        r0.b(r2.c);
        r1 = r1 + 1;
     */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.lang.Object, java.util.Comparator] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AnnotatedString(List list, String str) {
        ArrayList arrayList;
        ArrayList arrayList2;
        List list2;
        this.j = list;
        this.k = str;
        if (list != null) {
            int size = list.size();
            arrayList = null;
            arrayList2 = null;
            for (int i = 0; i < size; i++) {
                Range range = (Range) list.get(i);
                Object obj = range.a;
                if (obj instanceof SpanStyle) {
                    arrayList = arrayList == null ? new ArrayList() : arrayList;
                    arrayList.add(range);
                } else if (obj instanceof ParagraphStyle) {
                    arrayList2 = arrayList2 == null ? new ArrayList() : arrayList2;
                    arrayList2.add(range);
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        this.l = arrayList;
        this.m = arrayList2;
        if (arrayList2 != null) {
            list2 = CollectionsKt.R(arrayList2, new Object());
        } else {
            list2 = null;
        }
        if (list2 != null && !list2.isEmpty()) {
            int i2 = ((Range) CollectionsKt.s(list2)).c;
            MutableIntList mutableIntList = IntListKt.a;
            int i3 = 1;
            MutableIntList mutableIntList2 = new MutableIntList(1);
            mutableIntList2.b(i2);
            int size2 = list2.size();
            while (i3 < size2) {
                Range range2 = (Range) list2.get(i3);
                while (true) {
                    int i4 = mutableIntList2.b;
                    if (i4 == 0) {
                        break;
                    }
                    if (i4 != 0) {
                        int i5 = mutableIntList2.a[i4 - 1];
                        if (range2.b >= i5) {
                            mutableIntList2.d(i4 - 1);
                        } else {
                            int i6 = range2.c;
                            if (i6 > i5) {
                                InlineClassHelperKt.a("Paragraph overlap not allowed, end " + i6 + " should be less than or equal to " + i5);
                            }
                        }
                    } else {
                        fe.o("IntList is empty.");
                        throw null;
                    }
                }
            }
        }
    }

    public final AnnotatedString a(qg qgVar) {
        Builder builder = new Builder(this);
        ArrayList arrayList = builder.l;
        ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            List list = (List) qgVar.b(((Builder.MutableRange) arrayList.get(i)).a(Integer.MIN_VALUE));
            ArrayList arrayList3 = new ArrayList(list.size());
            int size2 = list.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Range range = (Range) list.get(i2);
                arrayList3.add(new Builder.MutableRange(range.b, range.c, range.a, range.d));
            }
            CollectionsKt.g(arrayList2, arrayList3);
        }
        arrayList.clear();
        arrayList.addAll(arrayList2);
        return builder.e();
    }

    public final List b(int i) {
        List list = this.j;
        if (list != null) {
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i2 = 0; i2 < size; i2++) {
                Object obj = list.get(i2);
                Range range = (Range) obj;
                if ((range.a instanceof LinkAnnotation) && AnnotatedStringKt.b(0, i, range.b, range.c)) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
        return EmptyList.j;
    }

    public final AnnotatedString c(p2 p2Var) {
        Builder builder = new Builder(this);
        ArrayList arrayList = builder.l;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            Range range = (Range) p2Var.b(((Builder.MutableRange) arrayList.get(i)).a(Integer.MIN_VALUE));
            arrayList.set(i, new Builder.MutableRange(range.b, range.c, range.a, range.d));
        }
        return builder.e();
    }

    @Override // java.lang.CharSequence
    public final char charAt(int i) {
        return this.k.charAt(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0097, code lost:
    
        if (r2.isEmpty() != false) goto L29;
     */
    @Override // java.lang.CharSequence
    /* renamed from: d, reason: merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final AnnotatedString subSequence(int i, int i2) {
        boolean z;
        ArrayList arrayList;
        if (i <= i2) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            InlineClassHelperKt.a("start (" + i + ") should be less or equal to end (" + i2 + ")");
        }
        String str = this.k;
        if (i == 0 && i2 == str.length()) {
            return this;
        }
        String substring = str.substring(i, i2);
        AnnotatedString annotatedString = AnnotatedStringKt.a;
        if (i > i2) {
            InlineClassHelperKt.a("start (" + i + ") should be less than or equal to end (" + i2 + ")");
        }
        List list = this.j;
        if (list != null) {
            arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Range range = (Range) list.get(i3);
                int i4 = range.b;
                int i5 = range.c;
                if (AnnotatedStringKt.b(i, i2, i4, i5)) {
                    arrayList.add(new Range(Math.max(i, range.b) - i, Math.min(i2, i5) - i, range.a, range.d));
                }
            }
        }
        arrayList = null;
        return new AnnotatedString(arrayList, substring);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnnotatedString)) {
            return false;
        }
        AnnotatedString annotatedString = (AnnotatedString) obj;
        if (Intrinsics.a(this.k, annotatedString.k) && Intrinsics.a(this.j, annotatedString.j)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.k.hashCode() * 31;
        List list = this.j;
        if (list != null) {
            i = list.hashCode();
        } else {
            i = 0;
        }
        return hashCode + i;
    }

    @Override // java.lang.CharSequence
    public final int length() {
        return this.k.length();
    }

    @Override // java.lang.CharSequence
    public final String toString() {
        return this.k;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder implements Appendable {
        public final StringBuilder j;
        public final ArrayList k;
        public final ArrayList l;

        public Builder() {
            this.j = new StringBuilder(16);
            this.k = new ArrayList();
            this.l = new ArrayList();
            new ArrayList();
        }

        public final void a(SpanStyle spanStyle, int i, int i2) {
            this.l.add(new MutableRange(spanStyle, i, i2, 8));
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence, int i, int i2) {
            boolean z = charSequence instanceof AnnotatedString;
            StringBuilder sb = this.j;
            if (z) {
                AnnotatedString annotatedString = (AnnotatedString) charSequence;
                int length = sb.length();
                sb.append((CharSequence) annotatedString.k, i, i2);
                List a = AnnotatedStringKt.a(annotatedString, i, i2, null);
                if (a != null) {
                    int size = a.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        Range range = (Range) a.get(i3);
                        this.l.add(new MutableRange(range.b + length, range.c + length, range.a, range.d));
                    }
                }
                return this;
            }
            sb.append(charSequence, i, i2);
            return this;
        }

        public final void b(AnnotatedString annotatedString) {
            StringBuilder sb = this.j;
            int length = sb.length();
            sb.append(annotatedString.k);
            List list = annotatedString.j;
            if (list != null) {
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    Range range = (Range) list.get(i);
                    this.l.add(new MutableRange(range.b + length, range.c + length, range.a, range.d));
                }
            }
        }

        public final void c() {
            ArrayList arrayList = this.k;
            if (arrayList.isEmpty()) {
                InlineClassHelperKt.c("Nothing to pop.");
            }
            ((MutableRange) arrayList.remove(arrayList.size() - 1)).c = this.j.length();
        }

        public final void d(String str) {
            MutableRange mutableRange = new MutableRange(new StringAnnotation(str), this.j.length(), 0, 4);
            ArrayList arrayList = this.k;
            arrayList.add(mutableRange);
            this.l.add(mutableRange);
            arrayList.size();
        }

        public final AnnotatedString e() {
            StringBuilder sb = this.j;
            String sb2 = sb.toString();
            ArrayList arrayList = this.l;
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                arrayList2.add(((MutableRange) arrayList.get(i)).a(sb.length()));
            }
            return new AnnotatedString(sb2, arrayList2);
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class MutableRange<T> {
            public final Object a;
            public final int b;
            public int c;
            public final String d;

            /* JADX WARN: Illegal instructions before constructor call */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public /* synthetic */ MutableRange(Annotation annotation, int i, int i2, int i3) {
                this(i, i2, annotation, r5);
                String str;
                i2 = (i3 & 4) != 0 ? Integer.MIN_VALUE : i2;
                if ((i3 & 8) != 0) {
                    str = "";
                } else {
                    str = "androidx.compose.foundation.text.inlineContent";
                }
            }

            public final Range a(int i) {
                boolean z;
                int i2 = this.c;
                if (i2 != Integer.MIN_VALUE) {
                    i = i2;
                }
                if (i != Integer.MIN_VALUE) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    InlineClassHelperKt.c("Item.end should be set first");
                }
                return new Range(this.b, i, this.a, this.d);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof MutableRange)) {
                    return false;
                }
                MutableRange mutableRange = (MutableRange) obj;
                if (Intrinsics.a(this.a, mutableRange.a) && this.b == mutableRange.b && this.c == mutableRange.c && Intrinsics.a(this.d, mutableRange.d)) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                int hashCode;
                Object obj = this.a;
                if (obj == null) {
                    hashCode = 0;
                } else {
                    hashCode = obj.hashCode();
                }
                return this.d.hashCode() + q.b(this.c, q.b(this.b, hashCode * 31, 31), 31);
            }

            public final String toString() {
                return "MutableRange(item=" + this.a + ", start=" + this.b + ", end=" + this.c + ", tag=" + this.d + ")";
            }

            public MutableRange(int i, int i2, Object obj, String str) {
                this.a = obj;
                this.b = i;
                this.c = i2;
                this.d = str;
            }
        }

        public Builder(AnnotatedString annotatedString) {
            this();
            b(annotatedString);
        }

        @Override // java.lang.Appendable
        public final Appendable append(CharSequence charSequence) {
            if (charSequence instanceof AnnotatedString) {
                b((AnnotatedString) charSequence);
                return this;
            }
            this.j.append(charSequence);
            return this;
        }

        @Override // java.lang.Appendable
        public final Appendable append(char c) {
            this.j.append(c);
            return this;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Range<T> {
        public final Object a;
        public final int b;
        public final int c;
        public final String d;

        public Range(int i, int i2, Object obj, String str) {
            boolean z;
            this.a = obj;
            this.b = i;
            this.c = i2;
            this.d = str;
            if (i <= i2) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                InlineClassHelperKt.a("Reversed range is not supported");
            }
        }

        public static Range a(Range range, ParagraphStyle paragraphStyle, int i, int i2) {
            Object obj = paragraphStyle;
            if ((i2 & 1) != 0) {
                obj = range.a;
            }
            int i3 = range.b;
            if ((i2 & 4) != 0) {
                i = range.c;
            }
            return new Range(i3, i, obj, range.d);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Range)) {
                return false;
            }
            Range range = (Range) obj;
            if (Intrinsics.a(this.a, range.a) && this.b == range.b && this.c == range.c && Intrinsics.a(this.d, range.d)) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            int hashCode;
            Object obj = this.a;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            return this.d.hashCode() + q.b(this.c, q.b(this.b, hashCode * 31, 31), 31);
        }

        public final String toString() {
            return "Range(item=" + this.a + ", start=" + this.b + ", end=" + this.c + ", tag=" + this.d + ")";
        }

        public Range(int i, int i2, Object obj) {
            this(i, i2, obj, "");
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AnnotatedString(String str, List list, List list2) {
        this(list, str);
        AnnotatedString annotatedString = AnnotatedStringKt.a;
        if (list.isEmpty() && list2.isEmpty()) {
            list = null;
        } else if (!list2.isEmpty()) {
            if (list.isEmpty()) {
                list = list2;
            } else {
                ArrayList arrayList = new ArrayList(list2.size() + list.size());
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    arrayList.add((Range) list.get(i));
                }
                int size2 = list2.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    arrayList.add((Range) list2.get(i2));
                }
                list = arrayList;
            }
        }
    }

    public /* synthetic */ AnnotatedString(String str) {
        this(str, EmptyList.j);
    }

    public AnnotatedString(String str, List list) {
        this(list.isEmpty() ? null : list, str);
    }
}
