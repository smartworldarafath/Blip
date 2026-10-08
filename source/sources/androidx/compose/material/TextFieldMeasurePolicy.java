package androidx.compose.material;

import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.util.ListUtilsKt;
import defpackage.cf;
import defpackage.f7;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextFieldMeasurePolicy implements MeasurePolicy {
    public final boolean a;
    public final float b;
    public final PaddingValues c;

    public TextFieldMeasurePolicy(boolean z, float f, PaddingValues paddingValues) {
        this.a = z;
        this.b = f;
        this.c = paddingValues;
    }

    public static int d(List list, int i, Function2 function2) {
        Object obj;
        Object obj2;
        int i2;
        Object obj3;
        int i3;
        Object obj4;
        int i4;
        int i5;
        int size = list.size();
        for (int i6 = 0; i6 < size; i6++) {
            Object obj5 = list.get(i6);
            if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj5), "TextField")) {
                int intValue = ((Number) function2.n(obj5, Integer.valueOf(i))).intValue();
                int size2 = list.size();
                int i7 = 0;
                while (true) {
                    obj = null;
                    if (i7 < size2) {
                        obj2 = list.get(i7);
                        if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj2), "Label")) {
                            break;
                        }
                        i7++;
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj2;
                if (intrinsicMeasurable != null) {
                    i2 = ((Number) function2.n(intrinsicMeasurable, Integer.valueOf(i))).intValue();
                } else {
                    i2 = 0;
                }
                int size3 = list.size();
                int i8 = 0;
                while (true) {
                    if (i8 < size3) {
                        obj3 = list.get(i8);
                        if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj3), "Trailing")) {
                            break;
                        }
                        i8++;
                    } else {
                        obj3 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj3;
                if (intrinsicMeasurable2 != null) {
                    i3 = ((Number) function2.n(intrinsicMeasurable2, Integer.valueOf(i))).intValue();
                } else {
                    i3 = 0;
                }
                int size4 = list.size();
                int i9 = 0;
                while (true) {
                    if (i9 < size4) {
                        obj4 = list.get(i9);
                        if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj4), "Leading")) {
                            break;
                        }
                        i9++;
                    } else {
                        obj4 = null;
                        break;
                    }
                }
                IntrinsicMeasurable intrinsicMeasurable3 = (IntrinsicMeasurable) obj4;
                if (intrinsicMeasurable3 != null) {
                    i4 = ((Number) function2.n(intrinsicMeasurable3, Integer.valueOf(i))).intValue();
                } else {
                    i4 = 0;
                }
                int size5 = list.size();
                int i10 = 0;
                while (true) {
                    if (i10 >= size5) {
                        break;
                    }
                    Object obj6 = list.get(i10);
                    if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj6), "Hint")) {
                        obj = obj6;
                        break;
                    }
                    i10++;
                }
                IntrinsicMeasurable intrinsicMeasurable4 = (IntrinsicMeasurable) obj;
                if (intrinsicMeasurable4 != null) {
                    i5 = ((Number) function2.n(intrinsicMeasurable4, Integer.valueOf(i))).intValue();
                } else {
                    i5 = 0;
                }
                return ConstraintsKt.g(Math.max(intValue, Math.max(i2, i5)) + i4 + i3, ConstraintsKt.b(0, 0, 0, 0, 15));
            }
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        f7.h();
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.ui.layout.Measured, androidx.compose.ui.layout.Placeable] */
    /* JADX WARN: Type inference failed for: r7v10 */
    /* JADX WARN: Type inference failed for: r7v11, types: [androidx.compose.ui.layout.Placeable] */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r9v5 */
    /* JADX WARN: Type inference failed for: r9v6, types: [androidx.compose.ui.layout.Placeable] */
    /* JADX WARN: Type inference failed for: r9v7 */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(final MeasureScope measureScope, List list, long j) {
        Object obj;
        Placeable placeable;
        int i;
        MeasureResult measureResult;
        Object obj2;
        final ?? r9;
        int i2;
        int i3;
        Object obj3;
        final ?? r1;
        int i4;
        int i5;
        Object obj4;
        final ?? r7;
        int i6;
        int i7;
        int i8;
        int i9;
        boolean z;
        int i10;
        int i11;
        int i12;
        Map map;
        final TextFieldMeasurePolicy textFieldMeasurePolicy = this;
        List list2 = list;
        PaddingValues paddingValues = textFieldMeasurePolicy.c;
        int y0 = measureScope.y0(paddingValues.d());
        int y02 = measureScope.y0(paddingValues.a());
        final int y03 = measureScope.y0(2.0f);
        long a = Constraints.a(j, 0, 0, 0, 0, 10);
        int size = list2.size();
        int i13 = 0;
        while (true) {
            if (i13 < size) {
                obj = list2.get(i13);
                if (Intrinsics.a(LayoutIdKt.a((Measurable) obj), "Leading")) {
                    break;
                }
                i13++;
            } else {
                obj = null;
                break;
            }
        }
        Measurable measurable = (Measurable) obj;
        if (measurable != null) {
            placeable = measurable.w(a);
        } else {
            placeable = null;
        }
        if (placeable != null) {
            i = placeable.j;
        } else {
            i = 0;
        }
        int size2 = list2.size();
        int i14 = 0;
        while (true) {
            if (i14 < size2) {
                obj2 = list2.get(i14);
                measureResult = null;
                if (Intrinsics.a(LayoutIdKt.a((Measurable) obj2), "Trailing")) {
                    break;
                }
                i14++;
            } else {
                measureResult = null;
                obj2 = null;
                break;
            }
        }
        Measurable measurable2 = (Measurable) obj2;
        if (measurable2 != null) {
            r9 = measurable2.w(ConstraintsKt.i(-i, 0, a));
        } else {
            r9 = measureResult;
        }
        if (r9 != 0) {
            i2 = r9.j;
        } else {
            i2 = 0;
        }
        int i15 = i + i2;
        int i16 = -y02;
        int i17 = -i15;
        long i18 = ConstraintsKt.i(i17, i16, a);
        int size3 = list2.size();
        int i19 = 0;
        while (true) {
            if (i19 < size3) {
                obj3 = list2.get(i19);
                i3 = y02;
                if (Intrinsics.a(LayoutIdKt.a((Measurable) obj3), "Label")) {
                    break;
                }
                i19++;
                y02 = i3;
            } else {
                i3 = y02;
                obj3 = measureResult;
                break;
            }
        }
        Measurable measurable3 = (Measurable) obj3;
        if (measurable3 != null) {
            r1 = measurable3.w(i18);
        } else {
            r1 = measureResult;
        }
        if (r1 != 0) {
            i4 = r1.K(AlignmentLineKt.b);
            if (i4 == Integer.MIN_VALUE) {
                i4 = r1.k;
            }
        } else {
            i4 = 0;
        }
        final int max = Math.max(i4, y0);
        if (r1 != 0) {
            i5 = (i16 - y03) - max;
        } else {
            i5 = (-y0) - i3;
        }
        long i20 = ConstraintsKt.i(i17, i5, Constraints.a(j, 0, 0, 0, 0, 11));
        int size4 = list2.size();
        int i21 = 0;
        while (i21 < size4) {
            Measurable measurable4 = (Measurable) list2.get(i21);
            final int i22 = y0;
            if (Intrinsics.a(LayoutIdKt.a(measurable4), "TextField")) {
                final Placeable w = measurable4.w(i20);
                long a2 = Constraints.a(i20, 0, 0, 0, 0, 14);
                int size5 = list2.size();
                int i23 = 0;
                while (true) {
                    if (i23 < size5) {
                        obj4 = list2.get(i23);
                        if (Intrinsics.a(LayoutIdKt.a((Measurable) obj4), "Hint")) {
                            break;
                        }
                        i23++;
                        list2 = list;
                    } else {
                        obj4 = measureResult;
                        break;
                    }
                }
                Measurable measurable5 = (Measurable) obj4;
                if (measurable5 != null) {
                    r7 = measurable5.w(a2);
                } else {
                    r7 = measureResult;
                }
                if (placeable != null) {
                    i6 = placeable.j;
                } else {
                    i6 = 0;
                }
                if (r9 != 0) {
                    i7 = r9.j;
                } else {
                    i7 = 0;
                }
                int i24 = w.j;
                if (r1 != 0) {
                    i8 = r1.j;
                } else {
                    i8 = 0;
                }
                if (r7 != 0) {
                    i9 = r7.j;
                } else {
                    i9 = 0;
                }
                final int g = ConstraintsKt.g(Math.max(i24, Math.max(i8, i9)) + i6 + i7, j);
                int i25 = w.k;
                if (r1 != 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (placeable != null) {
                    i10 = placeable.k;
                } else {
                    i10 = 0;
                }
                if (r9 != 0) {
                    i11 = r9.k;
                } else {
                    i11 = 0;
                }
                if (r7 != 0) {
                    i12 = r7.k;
                } else {
                    i12 = 0;
                }
                final int d = TextFieldKt.d(i25, z, max, i10, i11, i12, j, measureScope.getDensity(), textFieldMeasurePolicy.c);
                final Placeable placeable2 = placeable;
                final int i26 = i4;
                Function1 function1 = new Function1() { // from class: androidx.compose.material.n
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj5) {
                        int i27;
                        int i28;
                        int b;
                        int i29;
                        int i30;
                        TextFieldMeasurePolicy textFieldMeasurePolicy2 = textFieldMeasurePolicy;
                        boolean z2 = textFieldMeasurePolicy2.a;
                        Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj5;
                        Placeable placeable3 = Placeable.this;
                        int i31 = g;
                        int i32 = d;
                        Placeable placeable4 = w;
                        Placeable placeable5 = r7;
                        Placeable placeable6 = placeable2;
                        Placeable placeable7 = r9;
                        MeasureScope measureScope2 = measureScope;
                        BiasAlignment.Vertical vertical = Alignment.Companion.k;
                        int i33 = 0;
                        if (placeable3 != null) {
                            int i34 = i22 - i26;
                            if (i34 < 0) {
                                i34 = 0;
                            }
                            int i35 = max + y03;
                            float f = textFieldMeasurePolicy2.b;
                            float density = measureScope2.getDensity();
                            if (placeable6 != null) {
                                Placeable.PlacementScope.j(placementScope, placeable6, 0, vertical.a(placeable6.k, i32));
                            }
                            if (placeable7 != null) {
                                Placeable.PlacementScope.j(placementScope, placeable7, i31 - placeable7.j, vertical.a(placeable7.k, i32));
                            }
                            if (z2) {
                                b = vertical.a(placeable3.k, i32);
                            } else {
                                b = MathKt.b(16.0f * density);
                            }
                            int b2 = b - MathKt.b((b - i34) * f);
                            if (placeable6 != null) {
                                i29 = placeable6.j;
                            } else {
                                i29 = 0;
                            }
                            Placeable.PlacementScope.j(placementScope, placeable3, i29, b2);
                            if (placeable6 != null) {
                                i30 = placeable6.j;
                            } else {
                                i30 = 0;
                            }
                            Placeable.PlacementScope.j(placementScope, placeable4, i30, i35);
                            if (placeable5 != null) {
                                if (placeable6 != null) {
                                    i33 = placeable6.j;
                                }
                                Placeable.PlacementScope.j(placementScope, placeable5, i33, i35);
                            }
                        } else {
                            int b3 = MathKt.b(textFieldMeasurePolicy2.c.d() * measureScope2.getDensity());
                            if (placeable6 != null) {
                                Placeable.PlacementScope.j(placementScope, placeable6, 0, vertical.a(placeable6.k, i32));
                            }
                            if (placeable7 != null) {
                                Placeable.PlacementScope.j(placementScope, placeable7, i31 - placeable7.j, vertical.a(placeable7.k, i32));
                            }
                            if (z2) {
                                i27 = vertical.a(placeable4.k, i32);
                            } else {
                                i27 = b3;
                            }
                            if (placeable6 != null) {
                                i28 = placeable6.j;
                            } else {
                                i28 = 0;
                            }
                            Placeable.PlacementScope.j(placementScope, placeable4, i28, i27);
                            if (placeable5 != null) {
                                if (z2) {
                                    b3 = vertical.a(placeable5.k, i32);
                                }
                                if (placeable6 != null) {
                                    i33 = placeable6.j;
                                }
                                Placeable.PlacementScope.j(placementScope, placeable5, i33, b3);
                            }
                        }
                        return Unit.a;
                    }
                };
                map = EmptyMap.j;
                return measureScope.B(g, d, map, function1);
            }
            y0 = i22;
            i21++;
            textFieldMeasurePolicy = this;
            list2 = list;
            placeable = placeable;
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        f7.h();
        return measureResult;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return d(list, i, new cf(18, (byte) 0));
    }

    public final int c(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i, Function2 function2) {
        Object obj;
        Object obj2;
        int i2;
        int i3;
        Object obj3;
        int i4;
        Object obj4;
        int i5;
        int i6;
        boolean z;
        int size = list.size();
        int i7 = 0;
        while (true) {
            obj = null;
            if (i7 < size) {
                obj2 = list.get(i7);
                if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj2), "Leading")) {
                    break;
                }
                i7++;
            } else {
                obj2 = null;
                break;
            }
        }
        IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) obj2;
        if (intrinsicMeasurable != null) {
            int p = intrinsicMeasurable.p(Integer.MAX_VALUE);
            if (i == Integer.MAX_VALUE) {
                i2 = i;
            } else {
                i2 = i - p;
                if (i2 < 0) {
                    i2 = 0;
                }
            }
            i3 = ((Number) function2.n(intrinsicMeasurable, Integer.valueOf(i))).intValue();
        } else {
            i2 = i;
            i3 = 0;
        }
        int size2 = list.size();
        int i8 = 0;
        while (true) {
            if (i8 < size2) {
                obj3 = list.get(i8);
                if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj3), "Trailing")) {
                    break;
                }
                i8++;
            } else {
                obj3 = null;
                break;
            }
        }
        IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) obj3;
        if (intrinsicMeasurable2 != null) {
            int p2 = intrinsicMeasurable2.p(Integer.MAX_VALUE);
            if (i2 != Integer.MAX_VALUE && (i2 = i2 - p2) < 0) {
                i2 = 0;
            }
            i4 = ((Number) function2.n(intrinsicMeasurable2, Integer.valueOf(i))).intValue();
        } else {
            i4 = 0;
        }
        int size3 = list.size();
        int i9 = 0;
        while (true) {
            if (i9 < size3) {
                obj4 = list.get(i9);
                if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj4), "Label")) {
                    break;
                }
                i9++;
            } else {
                obj4 = null;
                break;
            }
        }
        Object obj5 = (IntrinsicMeasurable) obj4;
        if (obj5 != null) {
            i5 = ((Number) function2.n(obj5, Integer.valueOf(i2))).intValue();
        } else {
            i5 = 0;
        }
        int size4 = list.size();
        for (int i10 = 0; i10 < size4; i10++) {
            Object obj6 = list.get(i10);
            if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj6), "TextField")) {
                int intValue = ((Number) function2.n(obj6, Integer.valueOf(i2))).intValue();
                int size5 = list.size();
                int i11 = 0;
                while (true) {
                    if (i11 >= size5) {
                        break;
                    }
                    Object obj7 = list.get(i11);
                    if (Intrinsics.a(TextFieldImplKt.c((IntrinsicMeasurable) obj7), "Hint")) {
                        obj = obj7;
                        break;
                    }
                    i11++;
                }
                Object obj8 = (IntrinsicMeasurable) obj;
                if (obj8 != null) {
                    i6 = ((Number) function2.n(obj8, Integer.valueOf(i2))).intValue();
                } else {
                    i6 = 0;
                }
                if (i5 > 0) {
                    z = true;
                } else {
                    z = false;
                }
                return TextFieldKt.d(intValue, z, i5, i3, i4, i6, ConstraintsKt.b(0, 0, 0, 0, 15), intrinsicMeasureScope.getDensity(), this.c);
            }
        }
        ListUtilsKt.b("Collection contains no element matching the predicate.");
        f7.h();
        return 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return c(intrinsicMeasureScope, list, i, new cf(19, (byte) 0));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int g(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return d(list, i, new cf(21, (byte) 0));
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int i(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        return c(intrinsicMeasureScope, list, i, new cf(20, (byte) 0));
    }
}
