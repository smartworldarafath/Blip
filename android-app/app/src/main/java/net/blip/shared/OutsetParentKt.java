package net.blip.shared;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class OutsetParentKt {
    public static Modifier a(Modifier modifier, final float f) {
        modifier.getClass();
        return LayoutModifierKt.a(modifier, new Function3() { // from class: uc
            @Override // kotlin.jvm.functions.Function3
            public final Object f(Object obj, Object obj2, Object obj3) {
                Map map;
                MeasureScope measureScope = (MeasureScope) obj;
                Measurable measurable = (Measurable) obj2;
                Constraints constraints = (Constraints) obj3;
                measureScope.getClass();
                measurable.getClass();
                long j = constraints.a;
                Placeable w = measurable.w(Constraints.a(j, 0, measureScope.y0(f * 2.0f) + Constraints.h(j), 0, measureScope.y0(0.0f) + Constraints.g(constraints.a), 5));
                int i = w.j;
                int i2 = w.k;
                f fVar = new f(w, 8);
                map = EmptyMap.j;
                return measureScope.B(i, i2, map, fVar);
            }
        });
    }
}
