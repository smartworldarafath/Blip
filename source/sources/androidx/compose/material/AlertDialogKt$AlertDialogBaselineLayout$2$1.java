package androidx.compose.material;

import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AlertDialogKt$AlertDialogBaselineLayout$2$1 implements MeasurePolicy {
    public static final AlertDialogKt$AlertDialogBaselineLayout$2$1 a = new Object();

    /* JADX WARN: Removed duplicated region for block: B:32:0x0096  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00db  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00e5  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00df  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d3  */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        Integer num;
        Object obj;
        long j2;
        final Placeable placeable;
        Object obj2;
        final Placeable placeable2;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int q0;
        int i6;
        int i7;
        final int i8;
        Map map;
        int i9;
        Integer valueOf;
        Integer valueOf2;
        int size = list.size();
        int i10 = 0;
        int i11 = 0;
        while (true) {
            num = null;
            if (i11 < size) {
                obj = list.get(i11);
                if (Intrinsics.a(LayoutIdKt.a((Measurable) obj), "title")) {
                    break;
                }
                i11++;
            } else {
                obj = null;
                break;
            }
        }
        Measurable measurable = (Measurable) obj;
        if (measurable != null) {
            j2 = j;
            placeable = measurable.w(Constraints.a(j2, 0, 0, 0, 0, 11));
        } else {
            j2 = j;
            placeable = null;
        }
        int size2 = list.size();
        int i12 = 0;
        while (true) {
            if (i12 < size2) {
                obj2 = list.get(i12);
                if (Intrinsics.a(LayoutIdKt.a((Measurable) obj2), "text")) {
                    break;
                }
                i12++;
            } else {
                obj2 = null;
                break;
            }
        }
        Measurable measurable2 = (Measurable) obj2;
        if (measurable2 != null) {
            placeable2 = measurable2.w(Constraints.a(j2, 0, 0, 0, 0, 11));
        } else {
            placeable2 = null;
        }
        if (placeable != null) {
            i = placeable.j;
        } else {
            i = 0;
        }
        if (placeable2 != null) {
            i2 = placeable2.j;
        } else {
            i2 = 0;
        }
        int max = Math.max(i, i2);
        if (placeable != null) {
            int K = placeable.K(AlignmentLineKt.a);
            if (K == Integer.MIN_VALUE) {
                valueOf2 = null;
            } else {
                valueOf2 = Integer.valueOf(K);
            }
            if (valueOf2 != null) {
                i3 = valueOf2.intValue();
                if (placeable != null) {
                    int K2 = placeable.K(AlignmentLineKt.b);
                    if (K2 == Integer.MIN_VALUE) {
                        valueOf = null;
                    } else {
                        valueOf = Integer.valueOf(K2);
                    }
                    if (valueOf != null) {
                        i4 = valueOf.intValue();
                        final int q02 = measureScope.q0(AlertDialogKt.c) - i3;
                        if (placeable2 != null) {
                            int K3 = placeable2.K(AlignmentLineKt.a);
                            if (K3 != Integer.MIN_VALUE) {
                                num = Integer.valueOf(K3);
                            }
                            if (num != null) {
                                i5 = num.intValue();
                                if (placeable != null) {
                                    q0 = measureScope.q0(AlertDialogKt.e);
                                } else {
                                    q0 = measureScope.q0(AlertDialogKt.d);
                                }
                                if (placeable == null) {
                                    i6 = placeable.k + q02;
                                } else {
                                    i6 = 0;
                                }
                                if (placeable != null) {
                                    i8 = q0 - i5;
                                } else {
                                    if (i4 == 0) {
                                        i7 = i6 - i5;
                                    } else {
                                        i7 = (q02 + i4) - i5;
                                    }
                                    i8 = i7 + q0;
                                }
                                if (placeable2 != null) {
                                    int i13 = placeable2.k;
                                    if (i4 == 0) {
                                        i9 = (i13 + q0) - i5;
                                    } else {
                                        int i14 = (i13 + q0) - i5;
                                        if (placeable != null) {
                                            i10 = placeable.k;
                                        }
                                        i9 = i14 - (i10 - i4);
                                    }
                                    i10 = i9;
                                }
                                Function1 function1 = new Function1() { // from class: d0
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj3) {
                                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                                        Placeable placeable3 = Placeable.this;
                                        if (placeable3 != null) {
                                            placementScope.e(placeable3, 0, q02, 0.0f);
                                        }
                                        Placeable placeable4 = placeable2;
                                        if (placeable4 != null) {
                                            placementScope.e(placeable4, 0, i8, 0.0f);
                                        }
                                        return Unit.a;
                                    }
                                };
                                map = EmptyMap.j;
                                return measureScope.B(max, i6 + i10, map, function1);
                            }
                        }
                        i5 = 0;
                        if (placeable != null) {
                        }
                        if (placeable == null) {
                        }
                        if (placeable != null) {
                        }
                        if (placeable2 != null) {
                        }
                        Function1 function12 = new Function1() { // from class: d0
                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj3) {
                                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                                Placeable placeable3 = Placeable.this;
                                if (placeable3 != null) {
                                    placementScope.e(placeable3, 0, q02, 0.0f);
                                }
                                Placeable placeable4 = placeable2;
                                if (placeable4 != null) {
                                    placementScope.e(placeable4, 0, i8, 0.0f);
                                }
                                return Unit.a;
                            }
                        };
                        map = EmptyMap.j;
                        return measureScope.B(max, i6 + i10, map, function12);
                    }
                }
                i4 = 0;
                final int q022 = measureScope.q0(AlertDialogKt.c) - i3;
                if (placeable2 != null) {
                }
                i5 = 0;
                if (placeable != null) {
                }
                if (placeable == null) {
                }
                if (placeable != null) {
                }
                if (placeable2 != null) {
                }
                Function1 function122 = new Function1() { // from class: d0
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj3) {
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                        Placeable placeable3 = Placeable.this;
                        if (placeable3 != null) {
                            placementScope.e(placeable3, 0, q022, 0.0f);
                        }
                        Placeable placeable4 = placeable2;
                        if (placeable4 != null) {
                            placementScope.e(placeable4, 0, i8, 0.0f);
                        }
                        return Unit.a;
                    }
                };
                map = EmptyMap.j;
                return measureScope.B(max, i6 + i10, map, function122);
            }
        }
        i3 = 0;
        if (placeable != null) {
        }
        i4 = 0;
        final int q0222 = measureScope.q0(AlertDialogKt.c) - i3;
        if (placeable2 != null) {
        }
        i5 = 0;
        if (placeable != null) {
        }
        if (placeable == null) {
        }
        if (placeable != null) {
        }
        if (placeable2 != null) {
        }
        Function1 function1222 = new Function1() { // from class: d0
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj3) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                Placeable placeable3 = Placeable.this;
                if (placeable3 != null) {
                    placementScope.e(placeable3, 0, q0222, 0.0f);
                }
                Placeable placeable4 = placeable2;
                if (placeable4 != null) {
                    placementScope.e(placeable4, 0, i8, 0.0f);
                }
                return Unit.a;
            }
        };
        map = EmptyMap.j;
        return measureScope.B(max, i6 + i10, map, function1222);
    }
}
