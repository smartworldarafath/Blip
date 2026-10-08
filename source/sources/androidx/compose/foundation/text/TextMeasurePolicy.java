package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import defpackage.ec;
import java.util.ArrayList;
import java.util.List;
import kotlin.Pair;
import kotlin.jvm.functions.Function0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextMeasurePolicy implements MeasurePolicy {
    public final Function0 a;
    public final Function0 b;

    public TextMeasurePolicy(Function0 function0, Function0 function02) {
        this.a = function0;
        this.b = function02;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        ArrayList arrayList;
        ArrayList arrayList2;
        Pair pair;
        ArrayList arrayList3 = new ArrayList(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            if (!(((Measurable) obj).a() instanceof TextRangeLayoutModifier)) {
                arrayList3.add(obj);
            }
        }
        List list2 = (List) this.b.a();
        if (list2 != null) {
            ArrayList arrayList4 = new ArrayList(list2.size());
            int size2 = list2.size();
            int i2 = 0;
            while (i2 < size2) {
                Rect rect = (Rect) list2.get(i2);
                if (rect != null) {
                    float f = rect.b;
                    float f2 = rect.a;
                    arrayList2 = arrayList4;
                    pair = new Pair(((Measurable) arrayList3.get(i2)).w(ConstraintsKt.b(0, (int) Math.floor(rect.c - f2), 0, (int) Math.floor(rect.d - f), 5)), new IntOffset((Math.round(f2) << 32) | (Math.round(f) & 4294967295L)));
                } else {
                    arrayList2 = arrayList4;
                    pair = null;
                }
                ArrayList arrayList5 = arrayList2;
                if (pair != null) {
                    arrayList5.add(pair);
                }
                i2++;
                arrayList4 = arrayList5;
            }
            arrayList = arrayList4;
        } else {
            arrayList = null;
        }
        ArrayList arrayList6 = new ArrayList(list.size());
        int size3 = list.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Object obj2 = list.get(i3);
            if (((Measurable) obj2).a() instanceof TextRangeLayoutModifier) {
                arrayList6.add(obj2);
            }
        }
        return MeasureScope.h0(measureScope, Constraints.h(j), Constraints.g(j), new ec(18, arrayList, BasicTextKt.d(arrayList6, this.a)));
    }
}
