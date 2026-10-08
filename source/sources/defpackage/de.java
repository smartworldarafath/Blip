package defpackage;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.foundation.ScrollNode;
import androidx.compose.runtime.Composition;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.DerivedState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class de implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ int k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;

    public /* synthetic */ de(ArrayList arrayList, ArrayList arrayList2, int i) {
        this.j = 2;
        this.l = arrayList;
        this.m = arrayList2;
        this.k = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Composition composition;
        Unit unit;
        Composition composition2;
        Unit unit2;
        int i;
        boolean z;
        int i2;
        int i3 = this.j;
        Unit unit3 = Unit.a;
        int i4 = 0;
        int i5 = this.k;
        Object obj2 = this.m;
        Object obj3 = this.l;
        switch (i3) {
            case 0:
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj3;
                MutableObjectIntMap mutableObjectIntMap = (MutableObjectIntMap) obj2;
                Composition composition3 = (Composition) obj;
                if (recomposeScopeImpl.e == i5 && Intrinsics.a(mutableObjectIntMap, recomposeScopeImpl.f) && (composition3 instanceof CompositionImpl)) {
                    long[] jArr = mutableObjectIntMap.a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i6 = 0;
                        while (true) {
                            long j = jArr[i6];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i7 = 8;
                                int i8 = 8 - ((~(i6 - length)) >>> 31);
                                int i9 = i4;
                                while (i9 < i8) {
                                    if ((255 & j) < 128) {
                                        int i10 = (i6 << 3) + i9;
                                        Object obj4 = mutableObjectIntMap.b[i10];
                                        if (mutableObjectIntMap.c[i10] != i5) {
                                            z = true;
                                        } else {
                                            z = false;
                                        }
                                        if (z) {
                                            i = i7;
                                            CompositionImpl compositionImpl = (CompositionImpl) composition3;
                                            composition2 = composition3;
                                            MutableScatterMap mutableScatterMap = compositionImpl.p;
                                            ScopeMap.c(mutableScatterMap, obj4, recomposeScopeImpl);
                                            unit2 = unit3;
                                            if (obj4 instanceof DerivedState) {
                                                DerivedState derivedState = (DerivedState) obj4;
                                                if (!mutableScatterMap.c(derivedState)) {
                                                    ScopeMap.d(compositionImpl.s, derivedState);
                                                }
                                                MutableScatterMap mutableScatterMap2 = recomposeScopeImpl.g;
                                                if (mutableScatterMap2 != null) {
                                                    mutableScatterMap2.m(obj4);
                                                }
                                            }
                                        } else {
                                            composition2 = composition3;
                                            unit2 = unit3;
                                            i = i7;
                                        }
                                        if (z) {
                                            mutableObjectIntMap.f(i10);
                                        }
                                    } else {
                                        composition2 = composition3;
                                        unit2 = unit3;
                                        i = i7;
                                    }
                                    j >>= i;
                                    i9++;
                                    i7 = i;
                                    composition3 = composition2;
                                    unit3 = unit2;
                                }
                                composition = composition3;
                                unit = unit3;
                                if (i8 != i7) {
                                    return unit;
                                }
                            } else {
                                composition = composition3;
                                unit = unit3;
                            }
                            if (i6 != length) {
                                i6++;
                                composition3 = composition;
                                unit3 = unit;
                                i4 = 0;
                            } else {
                                return unit;
                            }
                        }
                    }
                }
                return unit3;
            case 1:
                ScrollNode scrollNode = (ScrollNode) obj3;
                Placeable placeable = (Placeable) obj2;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                int f = scrollNode.x.f();
                if (f < 0) {
                    f = 0;
                }
                if (f <= i5) {
                    i5 = f;
                }
                int i11 = -i5;
                boolean z2 = scrollNode.y;
                if (z2) {
                    i2 = 0;
                } else {
                    i2 = i11;
                }
                if (!z2) {
                    i11 = 0;
                }
                placementScope.j = true;
                Placeable.PlacementScope.l(placementScope, placeable, i2, i11);
                placementScope.j = false;
                return unit3;
            default:
                ArrayList arrayList = (ArrayList) obj3;
                ArrayList arrayList2 = (ArrayList) obj2;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                placementScope2.getClass();
                for (Object obj5 : CollectionsKt.N(arrayList)) {
                    int i12 = i4 + 1;
                    if (i4 >= 0) {
                        long j2 = ((IntOffset) arrayList2.get((arrayList.size() - i4) - 1)).a;
                        Placeable.PlacementScope.j(placementScope2, (Placeable) obj5, (int) (j2 >> 32), ((int) (j2 & 4294967295L)) - i5);
                        i4 = i12;
                    } else {
                        CollectionsKt.T();
                        throw null;
                    }
                }
                return unit3;
        }
    }

    public /* synthetic */ de(int i, int i2, Object obj, Object obj2) {
        this.j = i2;
        this.l = obj;
        this.k = i;
        this.m = obj2;
    }
}
