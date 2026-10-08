package androidx.compose.ui.window;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidPopup_androidKt$SimpleStack$1$1 implements MeasurePolicy {
    public static final AndroidPopup_androidKt$SimpleStack$1$1 a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 implements Function1<Placeable.PlacementScope, Unit> {
        public static final AnonymousClass1 j = new Object();

        @Override // kotlin.jvm.functions.Function1
        public final /* bridge */ /* synthetic */ Object b(Object obj) {
            return Unit.a;
        }
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        int size = list.size();
        if (size != 0) {
            if (size != 1) {
                final ArrayList arrayList = new ArrayList(list.size());
                int size2 = list.size();
                int i = 0;
                int i2 = 0;
                for (int i3 = 0; i3 < size2; i3++) {
                    Placeable w = ((Measurable) list.get(i3)).w(j);
                    i = Math.max(i, w.j);
                    i2 = Math.max(i2, w.k);
                    arrayList.add(w);
                }
                return MeasureScope.h0(measureScope, i, i2, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1.3
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                        ArrayList arrayList2 = arrayList;
                        int size3 = arrayList2.size() - 1;
                        if (size3 >= 0) {
                            int i4 = 0;
                            while (true) {
                                Placeable.PlacementScope.j(placementScope, (Placeable) arrayList2.get(i4), 0, 0);
                                if (i4 == size3) {
                                    break;
                                }
                                i4++;
                            }
                        }
                        return Unit.a;
                    }
                });
            }
            final Placeable w2 = ((Measurable) list.get(0)).w(j);
            return MeasureScope.h0(measureScope, w2.j, w2.k, new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$SimpleStack$1$1.2
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    Placeable.PlacementScope.j((Placeable.PlacementScope) obj, Placeable.this, 0, 0);
                    return Unit.a;
                }
            });
        }
        return MeasureScope.h0(measureScope, 0, 0, AnonymousClass1.j);
    }
}
