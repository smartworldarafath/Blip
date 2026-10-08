package androidx.compose.ui.autofill;

import android.os.Build;
import android.view.ViewStructure;
import android.view.autofill.AutofillId;
import android.view.autofill.AutofillValue;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.autofill.ContentType;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.SemanticsUtils_androidKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsInfo;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesAndroid;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.spatial.RectList;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.state.ToggleableState;
import androidx.compose.ui.text.AnnotatedString;
import defpackage.fe;
import io.sentry.d;
import java.util.List;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PopulateViewStructure_androidKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:140:0x02ea  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02ed  */
    /* JADX WARN: Removed duplicated region for block: B:146:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0326  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0335  */
    /* JADX WARN: Removed duplicated region for block: B:163:0x037e  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x03be  */
    /* JADX WARN: Removed duplicated region for block: B:187:0x03f8  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x03ff  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x0449  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x046b  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:228:0x030c  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x02f4  */
    /* JADX WARN: Type inference failed for: r37v0 */
    /* JADX WARN: Type inference failed for: r37v1, types: [int] */
    /* JADX WARN: Type inference failed for: r37v12 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(ViewStructure viewStructure, SemanticsInfo semanticsInfo, AutofillId autofillId, String str, RectManager rectManager) {
        int i;
        boolean z;
        char c;
        long j;
        long j2;
        long j3;
        boolean z2;
        AnnotatedString annotatedString;
        AndroidFillableData androidFillableData;
        ToggleableState toggleableState;
        Role role;
        Object obj;
        boolean z3;
        ContentType contentType;
        Boolean bool;
        boolean z4;
        Integer num;
        Object obj2;
        List list;
        Integer valueOf;
        int i2;
        Integer num2;
        LayoutNode layoutNode;
        String[] b;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        String c2;
        String[] b2;
        boolean z9;
        String[] b3;
        MutableScatterMap mutableScatterMap;
        long[] jArr;
        Object[] objArr;
        int i3;
        int i4;
        Object[] objArr2;
        MutableScatterMap mutableScatterMap2;
        boolean z10;
        ToggleableState toggleableState2;
        AnnotatedString annotatedString2;
        AndroidFillableData androidFillableData2;
        Role role2;
        boolean z11;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.a;
        SemanticsPropertyKey semanticsPropertyKey2 = SemanticsActions.a;
        LayoutNode layoutNode2 = (LayoutNode) semanticsInfo;
        SemanticsConfiguration y = layoutNode2.y();
        int i5 = 8;
        boolean z12 = true;
        if (y != null && (mutableScatterMap2 = y.j) != null) {
            j = 128;
            Object[] objArr3 = mutableScatterMap2.b;
            Object[] objArr4 = mutableScatterMap2.c;
            long[] jArr2 = mutableScatterMap2.a;
            j2 = 255;
            int length = jArr2.length - 2;
            i = 2;
            if (length >= 0) {
                z2 = true;
                c = 7;
                int i6 = 0;
                obj = null;
                z3 = false;
                toggleableState2 = null;
                annotatedString2 = null;
                androidFillableData2 = null;
                contentType = null;
                bool = null;
                role2 = null;
                z4 = false;
                num = null;
                obj2 = null;
                while (true) {
                    long j4 = jArr2[i6];
                    j3 = -9187201950435737472L;
                    if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i7 = 8 - ((~(i6 - length)) >>> 31);
                        int i8 = 0;
                        while (i8 < i7) {
                            if ((j4 & 255) < 128) {
                                int i9 = (i6 << 3) + i8;
                                Object obj3 = objArr3[i9];
                                Object obj4 = objArr4[i9];
                                SemanticsPropertyKey semanticsPropertyKey3 = (SemanticsPropertyKey) obj3;
                                if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.s)) {
                                    obj4.getClass();
                                    obj = (ContentDataType) obj4;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.a)) {
                                    obj4.getClass();
                                    String str2 = (String) CollectionsKt.t((List) obj4);
                                    if (str2 != null) {
                                        viewStructure.setContentDescription(str2);
                                    }
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.r)) {
                                    obj4.getClass();
                                    contentType = (ContentType) obj4;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.t)) {
                                    obj4.getClass();
                                    androidFillableData2 = (AndroidFillableData) obj4;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.G)) {
                                    obj4.getClass();
                                    annotatedString2 = (AnnotatedString) obj4;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.l)) {
                                    obj4.getClass();
                                    viewStructure.setFocused(((Boolean) obj4).booleanValue());
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.R)) {
                                    obj4.getClass();
                                    num = (Integer) obj4;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.N)) {
                                    z4 = z12;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.o)) {
                                    obj4.getClass();
                                    z2 = ((Boolean) obj4).booleanValue();
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.z)) {
                                    obj4.getClass();
                                    role2 = (Role) obj4;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.K)) {
                                    obj4.getClass();
                                    bool = (Boolean) obj4;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsProperties.L)) {
                                    obj4.getClass();
                                    toggleableState2 = (ToggleableState) obj4;
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsActions.b)) {
                                    viewStructure.setClickable(z12);
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsActions.c)) {
                                    viewStructure.setLongClickable(z12);
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsActions.w)) {
                                    viewStructure.setFocusable(z12);
                                } else if (Intrinsics.a(semanticsPropertyKey3, SemanticsActions.k)) {
                                    z3 = z12;
                                }
                                z11 = z12;
                                if (Build.VERSION.SDK_INT >= 34 && Intrinsics.a(semanticsPropertyKey3, SemanticsPropertiesAndroid.c)) {
                                    obj2 = obj4;
                                }
                            } else {
                                z11 = z12;
                            }
                            j4 >>= 8;
                            i8++;
                            z12 = z11;
                        }
                        z10 = z12;
                        z10 = z10;
                        if (i7 != 8) {
                            break;
                        }
                    } else {
                        z10 = z12;
                    }
                    if (i6 == length) {
                        break;
                    }
                    i6++;
                    z12 = z10 ? 1 : 0;
                }
            } else {
                z10 = true;
                c = 7;
                j3 = -9187201950435737472L;
                z2 = true;
                obj = null;
                z3 = false;
                toggleableState2 = null;
                annotatedString2 = null;
                androidFillableData2 = null;
                contentType = null;
                bool = null;
                role2 = null;
                z4 = false;
                num = null;
                obj2 = null;
            }
            toggleableState = toggleableState2;
            annotatedString = annotatedString2;
            androidFillableData = androidFillableData2;
            role = role2;
            z = z10;
        } else {
            i = 2;
            z = 1;
            c = 7;
            j = 128;
            j2 = 255;
            j3 = -9187201950435737472L;
            z2 = true;
            annotatedString = null;
            androidFillableData = null;
            toggleableState = null;
            role = null;
            obj = null;
            z3 = false;
            contentType = null;
            bool = null;
            z4 = false;
            num = null;
            obj2 = null;
        }
        SemanticsConfiguration y2 = layoutNode2.y();
        if (y2 != null && y2.l && !y2.m) {
            SemanticsConfiguration semanticsConfiguration = new SemanticsConfiguration();
            semanticsConfiguration.l = y2.l;
            semanticsConfiguration.m = y2.m;
            semanticsConfiguration.j.l(y2.j);
            MutableObjectList mutableObjectList = new MutableObjectList(layoutNode2.n().size());
            mutableObjectList.i(layoutNode2.n());
            while (mutableObjectList.e()) {
                LayoutNode layoutNode3 = (LayoutNode) ((SemanticsInfo) mutableObjectList.m(mutableObjectList.b - 1));
                SemanticsConfiguration y3 = layoutNode3.y();
                if (y3 != null && !y3.l) {
                    semanticsConfiguration.d(y3);
                    if (!y3.m) {
                        mutableObjectList.i(layoutNode3.n());
                    }
                }
            }
            y2 = semanticsConfiguration;
        }
        if (y2 != null && (mutableScatterMap = y2.j) != null) {
            Object[] objArr5 = mutableScatterMap.b;
            Object[] objArr6 = mutableScatterMap.c;
            long[] jArr3 = mutableScatterMap.a;
            int length2 = jArr3.length - 2;
            if (length2 >= 0) {
                int i10 = 0;
                list = null;
                while (true) {
                    long j5 = jArr3[i10];
                    int i11 = i5;
                    List list2 = list;
                    if ((((~j5) << c) & j5 & j3) != j3) {
                        int i12 = 8 - ((~(i10 - length2)) >>> 31);
                        jArr = jArr3;
                        list = list2;
                        int i13 = 0;
                        while (i13 < i12) {
                            if ((j5 & j2) < j) {
                                int i14 = (i10 << 3) + i13;
                                Object obj5 = objArr5[i14];
                                Object obj6 = objArr6[i14];
                                i4 = i13;
                                SemanticsPropertyKey semanticsPropertyKey4 = (SemanticsPropertyKey) obj5;
                                objArr2 = objArr5;
                                if (Intrinsics.a(semanticsPropertyKey4, SemanticsProperties.j)) {
                                    viewStructure.setEnabled(false);
                                } else if (Intrinsics.a(semanticsPropertyKey4, SemanticsProperties.C)) {
                                    obj6.getClass();
                                    list = (List) obj6;
                                }
                            } else {
                                i4 = i13;
                                objArr2 = objArr5;
                            }
                            j5 >>= i11;
                            i13 = i4 + 1;
                            objArr5 = objArr2;
                        }
                        objArr = objArr5;
                        i3 = i11;
                        if (i12 != i3) {
                            break;
                        }
                    } else {
                        jArr = jArr3;
                        objArr = objArr5;
                        i3 = i11;
                        list = list2;
                    }
                    if (i10 == length2) {
                        break;
                    }
                    i10++;
                    i5 = i3;
                    jArr3 = jArr;
                    objArr5 = objArr;
                }
                valueOf = Integer.valueOf(layoutNode2.k);
                if (layoutNode2.w() == null) {
                    valueOf = null;
                }
                if (valueOf == null) {
                    i2 = valueOf.intValue();
                } else {
                    i2 = -1;
                }
                viewStructure.setAutofillId(autofillId, i2);
                viewStructure.setId(i2, str, null, null);
                if (obj == null) {
                    num2 = Integer.valueOf(((AndroidContentDataType) obj).a);
                } else if (z3) {
                    num2 = Integer.valueOf((int) z);
                } else if (toggleableState != null) {
                    num2 = Integer.valueOf(i);
                } else {
                    num2 = null;
                }
                if (num2 != null) {
                    viewStructure.setAutofillType(num2.intValue());
                }
                if (annotatedString != null) {
                    viewStructure.setAutofillValue(AutofillValue.forText(AutofillUtils_androidKt.a(annotatedString.k)));
                }
                if (androidFillableData != null) {
                    viewStructure.setAutofillValue(androidFillableData.a);
                }
                if (contentType != null && (b3 = ContentType_androidKt.b(contentType)) != null) {
                    viewStructure.setAutofillHints(b3);
                }
                layoutNode = (LayoutNode) rectManager.a.b(layoutNode2.k);
                if (layoutNode != null && layoutNode.p != -4) {
                    RectList rectList = rectManager.c;
                    int e = rectManager.e(layoutNode);
                    long[] jArr4 = rectList.a;
                    long j6 = jArr4[e];
                    long j7 = jArr4[e + 1];
                    int i15 = (int) (j6 >> 32);
                    int i16 = (int) j6;
                    viewStructure.setDimens(i15, i16, 0, 0, ((int) (j7 >> 32)) - i15, ((int) j7) - i16);
                }
                if (bool != null) {
                    viewStructure.setSelected(bool.booleanValue());
                }
                int i17 = 4;
                if (toggleableState == null) {
                    viewStructure.setCheckable(z);
                    if (toggleableState == ToggleableState.j) {
                        z9 = true;
                    } else {
                        z9 = false;
                    }
                    viewStructure.setChecked(z9);
                } else if (bool != null && (role == null || role.a != 4)) {
                    viewStructure.setCheckable(true);
                    viewStructure.setChecked(bool.booleanValue());
                }
                ContentType.a.getClass();
                b = ContentType_androidKt.b(ContentType.Companion.b);
                b.getClass();
                if (b.length == 0) {
                    String str3 = b[0];
                    if (contentType != null && (b2 = ContentType_androidKt.b(contentType)) != null) {
                        boolean c3 = ArraysKt.c(b2, str3);
                        z5 = true;
                        if (c3) {
                            z6 = true;
                            if (z4 && !z6) {
                                z7 = false;
                            } else {
                                z7 = z5;
                            }
                            if (z7 && !z2) {
                                z8 = false;
                            } else {
                                z8 = z5;
                            }
                            viewStructure.setDataIsSensitive(z8);
                            if (!layoutNode2.O.d.m1()) {
                                i17 = 0;
                            }
                            viewStructure.setVisibility(i17);
                            if (list != null) {
                                int size = list.size();
                                String str4 = "";
                                for (int i18 = 0; i18 < size; i18++) {
                                    str4 = ((Object) str4) + ((AnnotatedString) list.get(i18)).k + "\n";
                                }
                                viewStructure.setText(str4);
                                viewStructure.setClassName("android.widget.TextView");
                            }
                            if (layoutNode2.n().isEmpty() && role != null && (c2 = SemanticsUtils_androidKt.c(role.a)) != null) {
                                viewStructure.setClassName(c2);
                            }
                            if (z3) {
                                viewStructure.setClassName("android.widget.EditText");
                                if (num != null) {
                                    viewStructure.setMaxTextLength(num.intValue());
                                }
                                if (z7) {
                                    viewStructure.setInputType(129);
                                }
                            }
                            if (Build.VERSION.SDK_INT < 35 && obj2 != null) {
                                d.i();
                                return;
                            }
                            return;
                        }
                    } else {
                        z5 = true;
                    }
                    z6 = false;
                    if (z4) {
                    }
                    z7 = z5;
                    if (z7) {
                    }
                    z8 = z5;
                    viewStructure.setDataIsSensitive(z8);
                    if (!layoutNode2.O.d.m1()) {
                    }
                    viewStructure.setVisibility(i17);
                    if (list != null) {
                    }
                    if (layoutNode2.n().isEmpty()) {
                        viewStructure.setClassName(c2);
                    }
                    if (z3) {
                    }
                    if (Build.VERSION.SDK_INT < 35) {
                        return;
                    } else {
                        return;
                    }
                }
                fe.o("Array is empty.");
                return;
            }
        }
        list = null;
        valueOf = Integer.valueOf(layoutNode2.k);
        if (layoutNode2.w() == null) {
        }
        if (valueOf == null) {
        }
        viewStructure.setAutofillId(autofillId, i2);
        viewStructure.setId(i2, str, null, null);
        if (obj == null) {
        }
        if (num2 != null) {
        }
        if (annotatedString != null) {
        }
        if (androidFillableData != null) {
        }
        if (contentType != null) {
            viewStructure.setAutofillHints(b3);
        }
        layoutNode = (LayoutNode) rectManager.a.b(layoutNode2.k);
        if (layoutNode != null) {
            RectList rectList2 = rectManager.c;
            int e2 = rectManager.e(layoutNode);
            long[] jArr42 = rectList2.a;
            long j62 = jArr42[e2];
            long j72 = jArr42[e2 + 1];
            int i152 = (int) (j62 >> 32);
            int i162 = (int) j62;
            viewStructure.setDimens(i152, i162, 0, 0, ((int) (j72 >> 32)) - i152, ((int) j72) - i162);
        }
        if (bool != null) {
        }
        int i172 = 4;
        if (toggleableState == null) {
        }
        ContentType.a.getClass();
        b = ContentType_androidKt.b(ContentType.Companion.b);
        b.getClass();
        if (b.length == 0) {
        }
    }
}
