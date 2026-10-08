package defpackage;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.pager.MeasuredPage;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.datastore.preferences.PreferencesProto$Value;
import java.util.ArrayList;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c1 implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ArrayList k;

    public /* synthetic */ c1(int i, ArrayList arrayList) {
        this.j = i;
        this.k = arrayList;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i;
        MeasuredPage measuredPage;
        Unit unit;
        Placeable.PlacementScope placementScope;
        int i2 = this.j;
        Unit unit2 = Unit.a;
        int i3 = 0;
        ArrayList arrayList = this.k;
        switch (i2) {
            case 0:
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                int size = arrayList.size();
                while (i3 < size) {
                    Placeable.PlacementScope.j(placementScope2, (Placeable) arrayList.get(i3), 0, 0);
                    i3++;
                }
                return unit2;
            case 1:
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                int size2 = arrayList.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    Placeable.PlacementScope.j(placementScope3, (Placeable) arrayList.get(i4), 0, 0);
                }
                return unit2;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                Placeable.PlacementScope placementScope4 = (Placeable.PlacementScope) obj;
                int size3 = arrayList.size();
                int i5 = 0;
                while (i5 < size3) {
                    MeasuredPage measuredPage2 = (MeasuredPage) arrayList.get(i5);
                    List list = measuredPage2.b;
                    boolean z = measuredPage2.g;
                    if (measuredPage2.k == Integer.MIN_VALUE) {
                        InlineClassHelperKt.a("position() should be called first");
                    }
                    int size4 = list.size();
                    int i6 = i3;
                    while (i6 < size4) {
                        Placeable placeable = (Placeable) list.get(i6);
                        int i7 = size3;
                        long c = IntOffset.c((r12[r13 + 1] & 4294967295L) | (measuredPage2.i[i6 * 2] << 32), measuredPage2.c);
                        if (z) {
                            Placeable.PlacementScope.o(placementScope4, placeable, c);
                            placementScope = placementScope4;
                            i = i5;
                            measuredPage = measuredPage2;
                            unit = unit2;
                        } else {
                            wc wcVar = PlaceableKt.a;
                            if (placementScope4.c() == LayoutDirection.j || placementScope4.d() == 0) {
                                i = i5;
                                measuredPage = measuredPage2;
                                unit = unit2;
                                Placeable.PlacementScope.a(placementScope4, placeable);
                                placementScope = placementScope4;
                                placeable.c0(IntOffset.c(c, placeable.n), 0.0f, wcVar);
                            } else {
                                i = i5;
                                measuredPage = measuredPage2;
                                int d = (placementScope4.d() - placeable.j) - ((int) (c >> 32));
                                unit = unit2;
                                Placeable.PlacementScope.a(placementScope4, placeable);
                                placeable.c0(IntOffset.c((((int) (c & 4294967295L)) & 4294967295L) | (d << 32), placeable.n), 0.0f, wcVar);
                                placementScope = placementScope4;
                            }
                        }
                        i6++;
                        size3 = i7;
                        placementScope4 = placementScope;
                        unit2 = unit;
                        i5 = i;
                        measuredPage2 = measuredPage;
                    }
                    i5++;
                    i3 = 0;
                }
                return unit2;
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                Placeable.PlacementScope placementScope5 = (Placeable.PlacementScope) obj;
                int size5 = arrayList.size();
                for (int i8 = 0; i8 < size5; i8++) {
                    Placeable.PlacementScope.l(placementScope5, (Placeable) arrayList.get(i8), 0, 0);
                }
                return unit2;
            default:
                Placeable.PlacementScope placementScope6 = (Placeable.PlacementScope) obj;
                int size6 = arrayList.size();
                for (int i9 = 0; i9 < size6; i9++) {
                    placementScope6.e((Placeable) arrayList.get(i9), 0, 0, 0.0f);
                }
                return unit2;
        }
    }
}
