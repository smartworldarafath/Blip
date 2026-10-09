package androidx.compose.ui.text;

import androidx.compose.ui.text.AnnotatedString;
import defpackage.h;
import java.util.ArrayList;
import java.util.List;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnnotatedStringKt {
    public static final AnnotatedString a = new AnnotatedString("");

    public static final List a(AnnotatedString annotatedString, int i, int i2, h hVar) {
        List list;
        boolean z;
        if (i == i2 || (list = annotatedString.j) == null) {
            return null;
        }
        if (i == 0 && i2 >= annotatedString.k.length()) {
            if (hVar == null) {
                return list;
            }
            ArrayList arrayList = new ArrayList(list.size());
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Object obj = list.get(i3);
                if (((Boolean) hVar.b(((AnnotatedString.Range) obj).a)).booleanValue()) {
                    arrayList.add(obj);
                }
            }
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(list.size());
        int size2 = list.size();
        for (int i4 = 0; i4 < size2; i4++) {
            AnnotatedString.Range range = (AnnotatedString.Range) list.get(i4);
            boolean z2 = true;
            if (hVar != null) {
                z = ((Boolean) hVar.b(range.a)).booleanValue();
            } else {
                z = true;
            }
            if (!z || !b(i, i2, range.b, range.c)) {
                z2 = false;
            }
            if (z2) {
                arrayList2.add(new AnnotatedString.Range(RangesKt.d(range.b, i, i2) - i, RangesKt.d(range.c, i, i2) - i, (AnnotatedString.Annotation) range.a, range.d));
            }
        }
        return arrayList2;
    }

    public static final boolean b(int i, int i2, int i3, int i4) {
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5 = false;
        if (i == i2) {
            z = true;
        } else {
            z = false;
        }
        if (i3 == i4) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z6 = z | z2;
        if (i == i3) {
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z7 = z6 & z3;
        if (i < i4) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (i3 < i2) {
            z5 = true;
        }
        return (z4 & z5) | z7;
    }
}
