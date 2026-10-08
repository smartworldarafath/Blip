package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.CrossAxisAlignment;
import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RowColumnMeasurePolicyKt {
    /* JADX WARN: Removed duplicated region for block: B:14:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MeasureResult a(RowColumnMeasurePolicy rowColumnMeasurePolicy, int i, int i2, int i3, int i4, int i5, MeasureScope measureScope, List list, Placeable[] placeableArr, int i6) {
        int i7;
        int i8;
        float f;
        boolean z;
        boolean z2;
        boolean z3;
        int i9;
        int i10;
        int i11;
        RowColumnParentData rowColumnParentData;
        CrossAxisAlignment crossAxisAlignment;
        Integer num;
        int i12;
        int i13;
        int i14;
        CrossAxisAlignment crossAxisAlignment2;
        boolean z4;
        List list2 = list;
        int i15 = i6;
        long j = i5;
        int[] iArr = new int[i15];
        int i16 = 0;
        int i17 = 0;
        int i18 = 0;
        boolean z5 = false;
        int i19 = 0;
        int i20 = 0;
        float f2 = 0.0f;
        while (i17 < i15) {
            Measurable measurable = (Measurable) list2.get(i17);
            long j2 = j;
            RowColumnParentData a = RowColumnImplKt.a(measurable);
            float b = RowColumnImplKt.b(a);
            if (!z5) {
                if (a != null) {
                    crossAxisAlignment2 = a.c;
                } else {
                    crossAxisAlignment2 = null;
                }
                if (crossAxisAlignment2 != null) {
                    z4 = crossAxisAlignment2 instanceof CrossAxisAlignment.AlignmentLineCrossAxisAlignment;
                } else {
                    z4 = false;
                }
                if (!z4) {
                    z5 = false;
                    if (b <= 0.0f) {
                        f2 += b;
                        i18++;
                    } else {
                        int i21 = i3 - i19;
                        Placeable placeable = placeableArr[i17];
                        if (placeable == null) {
                            if (i3 == Integer.MAX_VALUE) {
                                i13 = i21;
                                i14 = Integer.MAX_VALUE;
                            } else if (i21 < 0) {
                                i13 = i21;
                                i14 = 0;
                            } else {
                                i14 = i21;
                                i13 = i14;
                            }
                            placeable = measurable.w(rowColumnMeasurePolicy.d(0, i14, i4, false));
                        } else {
                            i13 = i21;
                        }
                        int f3 = rowColumnMeasurePolicy.f(placeable);
                        int j3 = rowColumnMeasurePolicy.j(placeable);
                        iArr[i17] = f3;
                        int i22 = i13 - f3;
                        if (i22 < 0) {
                            i22 = 0;
                        }
                        i20 = Math.min(i5, i22);
                        i19 += f3 + i20;
                        i16 = Math.max(i16, j3);
                        placeableArr[i17] = placeable;
                    }
                    i17++;
                    j = j2;
                }
            }
            z5 = true;
            if (b <= 0.0f) {
            }
            i17++;
            j = j2;
        }
        long j4 = j;
        boolean z6 = true;
        if (i18 == 0) {
            i19 -= i20;
            i8 = 0;
        } else {
            if (i3 != Integer.MAX_VALUE) {
                i7 = i3;
            } else {
                i7 = i;
            }
            long j5 = (i18 - 1) * j4;
            long j6 = (i7 - i19) - j5;
            if (j6 < 0) {
                j6 = 0;
            }
            float f4 = ((float) j6) / f2;
            int i23 = 0;
            while (i23 < i15) {
                j6 -= Math.round(RowColumnImplKt.b(RowColumnImplKt.a((Measurable) list2.get(i23))) * f4);
                i23++;
                j5 = j5;
            }
            long j7 = j5;
            int i24 = 0;
            int i25 = 0;
            while (i25 < i15) {
                if (placeableArr[i25] == null) {
                    Measurable measurable2 = (Measurable) list2.get(i25);
                    RowColumnParentData a2 = RowColumnImplKt.a(measurable2);
                    float b2 = RowColumnImplKt.b(a2);
                    if (b2 > 0.0f) {
                        z2 = z6;
                    } else {
                        z2 = false;
                    }
                    if (!z2) {
                        InlineClassHelperKt.b("All weights <= 0 should have placeables");
                    }
                    int signum = Long.signum(j6);
                    f = f4;
                    j6 -= signum;
                    int max = Math.max(0, Math.round(f * b2) + signum);
                    if (a2 != null) {
                        z3 = a2.b;
                    } else {
                        z3 = z6;
                    }
                    if (z3 && max != Integer.MAX_VALUE) {
                        i9 = max;
                        z = z6;
                        Placeable w = measurable2.w(rowColumnMeasurePolicy.d(i9, max, i4, z));
                        int f5 = rowColumnMeasurePolicy.f(w);
                        int j8 = rowColumnMeasurePolicy.j(w);
                        iArr[i25] = f5;
                        i24 += f5;
                        int max2 = Math.max(i16, j8);
                        placeableArr[i25] = w;
                        i16 = max2;
                    }
                    i9 = 0;
                    z = z6;
                    Placeable w2 = measurable2.w(rowColumnMeasurePolicy.d(i9, max, i4, z));
                    int f52 = rowColumnMeasurePolicy.f(w2);
                    int j82 = rowColumnMeasurePolicy.j(w2);
                    iArr[i25] = f52;
                    i24 += f52;
                    int max22 = Math.max(i16, j82);
                    placeableArr[i25] = w2;
                    i16 = max22;
                } else {
                    f = f4;
                    z = z6;
                }
                i25++;
                f4 = f;
                list2 = list;
                i15 = i6;
                z6 = z;
            }
            i8 = (int) (i24 + j7);
            int i26 = i3 - i19;
            if (i8 < 0) {
                i8 = 0;
            }
            if (i8 > i26) {
                i8 = i26;
            }
        }
        int i27 = 0;
        if (z5) {
            int i28 = 0;
            int i29 = 0;
            while (i27 < i6) {
                Placeable placeable2 = placeableArr[i27];
                placeable2.getClass();
                Object a3 = placeable2.a();
                if (a3 instanceof RowColumnParentData) {
                    rowColumnParentData = (RowColumnParentData) a3;
                } else {
                    rowColumnParentData = null;
                }
                if (rowColumnParentData != null) {
                    crossAxisAlignment = rowColumnParentData.c;
                } else {
                    crossAxisAlignment = null;
                }
                if (crossAxisAlignment != null) {
                    num = crossAxisAlignment.b(placeable2);
                } else {
                    num = null;
                }
                if (num != null) {
                    int intValue = num.intValue();
                    int j9 = rowColumnMeasurePolicy.j(placeable2);
                    if (intValue != Integer.MIN_VALUE) {
                        i12 = num.intValue();
                    } else {
                        i12 = 0;
                    }
                    i28 = Math.max(i28, i12);
                    if (intValue == Integer.MIN_VALUE) {
                        intValue = j9;
                    }
                    i29 = Math.max(i29, j9 - intValue);
                }
                i27++;
            }
            i27 = i29;
            i10 = i28;
        } else {
            i10 = 0;
        }
        int i30 = i19 + i8;
        if (i30 < 0) {
            i11 = 0;
        } else {
            i11 = i30;
        }
        int max3 = Math.max(i11, i);
        int max4 = Math.max(i16, Math.max(i2, i27 + i10));
        int[] iArr2 = new int[i6];
        rowColumnMeasurePolicy.c(max3, measureScope, iArr, iArr2);
        return rowColumnMeasurePolicy.h(placeableArr, measureScope, i10, iArr2, max3, max4);
    }
}
