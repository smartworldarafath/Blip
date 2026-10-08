package io.sentry.android.replay.viewhierarchy;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Rect;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.ModifierInfo;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.text.TextLayoutInput;
import androidx.compose.ui.text.TextLayoutResult;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnit;
import defpackage.k8;
import io.sentry.ILogger;
import io.sentry.SentryLevel;
import io.sentry.SentryMaskingOptions;
import io.sentry.android.replay.SentryReplayModifiers;
import io.sentry.android.replay.util.ComposeTextLayout;
import io.sentry.android.replay.viewhierarchy.ViewHierarchyNode;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"UseRequiresApi"})
@TargetApi(26)
/* loaded from: classes.dex */
public abstract class ComposeViewHierarchyNode {
    public static final Lazy a = LazyKt.a(LazyThreadSafetyMode.k, ComposeViewHierarchyNode$getCollapsedSemanticsMethod$2.k);
    public static boolean b;
    public static WeakReference c;

    public static boolean a(SemanticsConfiguration semanticsConfiguration, boolean z, SentryMaskingOptions sentryMaskingOptions) {
        String str;
        Object obj = null;
        if (semanticsConfiguration != null) {
            Object e = semanticsConfiguration.j.e(SentryReplayModifiers.a);
            if (e != null) {
                obj = e;
            }
            obj = (String) obj;
        }
        if (Intrinsics.a(obj, "unmask")) {
            sentryMaskingOptions.d();
            return false;
        }
        if (Intrinsics.a(obj, "mask")) {
            sentryMaskingOptions.d();
            return true;
        }
        if (z) {
            str = "android.widget.ImageView";
        } else {
            if (semanticsConfiguration != null) {
                MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
                if (mutableScatterMap.c(SemanticsProperties.C) || mutableScatterMap.c(SemanticsActions.k) || mutableScatterMap.c(SemanticsProperties.G)) {
                    str = "android.widget.TextView";
                }
            }
            str = "android.view.View";
        }
        if (sentryMaskingOptions.b.contains(str)) {
            return false;
        }
        return sentryMaskingOptions.a.contains(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:185:0x0240, code lost:
    
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0214, code lost:
    
        if (r0.j.c(androidx.compose.ui.semantics.SemanticsProperties.p) == false) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0230, code lost:
    
        if (r0.j.c(androidx.compose.ui.semantics.SemanticsActions.k) == true) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x023e, code lost:
    
        if (r0.j.c(androidx.compose.ui.semantics.SemanticsProperties.G) == r3) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x024d, code lost:
    
        if (r0.j.c(androidx.compose.ui.semantics.SemanticsProperties.C) == r3) goto L99;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x032c  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0349  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x04b2  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x04ba A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x0330  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0385  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:203:0x046c  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0236  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0245  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x005c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0267  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x005d  */
    /* JADX WARN: Type inference failed for: r15v17 */
    /* JADX WARN: Type inference failed for: r15v2 */
    /* JADX WARN: Type inference failed for: r15v21 */
    /* JADX WARN: Type inference failed for: r15v3, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v9 */
    /* JADX WARN: Type inference failed for: r8v28 */
    /* JADX WARN: Type inference failed for: r8v29 */
    /* JADX WARN: Type inference failed for: r8v4, types: [androidx.compose.ui.layout.LayoutCoordinates] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void b(LayoutNode layoutNode, ViewHierarchyNode viewHierarchyNode, boolean z, SentryMaskingOptions sentryMaskingOptions, ILogger iLogger) {
        List list;
        List n;
        List list2;
        ArrayList arrayList;
        int i;
        int i2;
        LayoutNode layoutNode2;
        ViewHierarchyNode viewHierarchyNode2;
        ?? r15;
        ViewHierarchyNode viewHierarchyNode3;
        Object obj;
        Rect rect;
        List list3;
        ArrayList arrayList2;
        int i3;
        int i4;
        Rect rect2;
        ViewHierarchyNode viewHierarchyNode4;
        ?? r6;
        SemanticsConfiguration semanticsConfiguration;
        int i5;
        boolean z2;
        boolean z3;
        boolean z4;
        Painter painter;
        boolean z5;
        boolean z6;
        boolean z7;
        ArrayList arrayList3;
        boolean z8;
        TextLayoutResult textLayoutResult;
        ArrayList arrayList4;
        boolean z9;
        Color color;
        Rect rect3;
        TextUnit textUnit;
        boolean z10;
        boolean a2;
        ComposeTextLayout composeTextLayout;
        Integer num;
        TextLayoutInput textLayoutInput;
        TextStyle textStyle;
        ColorProducer colorProducer;
        TextLayoutInput textLayoutInput2;
        TextStyle textStyle2;
        Function1 function1;
        ViewHierarchyNode viewHierarchyNode5 = viewHierarchyNode;
        Lazy lazy = a;
        Boolean bool = SentryLayoutNodeHelper.a;
        Boolean bool2 = Boolean.FALSE;
        ViewHierarchyNode viewHierarchyNode6 = null;
        if (Intrinsics.a(bool, bool2)) {
            list = layoutNode.n();
        } else if (Intrinsics.a(bool, Boolean.TRUE)) {
            Method method = SentryLayoutNodeHelper.a().a;
            method.getClass();
            Object invoke = method.invoke(layoutNode, null);
            invoke.getClass();
            list = (List) invoke;
        } else {
            if (bool == null) {
                try {
                    n = layoutNode.n();
                    SentryLayoutNodeHelper.a = bool2;
                } catch (NoSuchMethodError unused) {
                    SentryLayoutNodeHelper.a = Boolean.TRUE;
                    Method method2 = SentryLayoutNodeHelper.a().a;
                    method2.getClass();
                    Object invoke2 = method2.invoke(layoutNode, null);
                    invoke2.getClass();
                    list = (List) invoke2;
                }
                if (!n.isEmpty()) {
                    return;
                }
                ArrayList arrayList5 = new ArrayList(n.size());
                int size = n.size();
                int i6 = 0;
                while (i6 < size) {
                    LayoutNode layoutNode3 = (LayoutNode) n.get(i6);
                    boolean M = layoutNode3.M();
                    NodeChain nodeChain = layoutNode3.O;
                    if (M && layoutNode3.L()) {
                        if (z) {
                            c = new WeakReference(LayoutCoordinatesKt.c(nodeChain.c));
                        }
                        InnerNodeCoordinator innerNodeCoordinator = nodeChain.c;
                        WeakReference weakReference = c;
                        if (weakReference != null) {
                            obj = (LayoutCoordinates) weakReference.get();
                        } else {
                            obj = viewHierarchyNode6;
                        }
                        innerNodeCoordinator.getClass();
                        ?? r8 = obj;
                        if (obj == null) {
                            r8 = LayoutCoordinatesKt.c(innerNodeCoordinator);
                        }
                        float f = (int) (r8.f() >> 32);
                        int i7 = i6;
                        float f2 = (int) (r8.f() & 4294967295L);
                        androidx.compose.ui.geometry.Rect l = r8.l(innerNodeCoordinator, true);
                        float f3 = l.a;
                        float f4 = 0.0f;
                        if (f3 < 0.0f) {
                            f3 = 0.0f;
                        }
                        if (f3 > f) {
                            f3 = f;
                        }
                        float f5 = l.b;
                        if (f5 < 0.0f) {
                            f5 = 0.0f;
                        }
                        if (f5 > f2) {
                            f5 = f2;
                        }
                        float f6 = l.c;
                        if (f6 < 0.0f) {
                            f6 = 0.0f;
                        }
                        if (f6 <= f) {
                            f = f6;
                        }
                        float f7 = l.d;
                        if (f7 >= 0.0f) {
                            f4 = f7;
                        }
                        if (f4 <= f2) {
                            f2 = f4;
                        }
                        if (f3 == f || f5 == f2) {
                            rect = new Rect();
                            list3 = n;
                            arrayList2 = arrayList5;
                            i3 = size;
                        } else {
                            list3 = n;
                            long d = r8.d((Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L));
                            long d2 = r8.d((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f5) & 4294967295L));
                            long d3 = r8.d((Float.floatToRawIntBits(f) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L));
                            long d4 = r8.d((Float.floatToRawIntBits(f3) << 32) | (Float.floatToRawIntBits(f2) & 4294967295L));
                            float intBitsToFloat = Float.intBitsToFloat((int) (d >> 32));
                            float intBitsToFloat2 = Float.intBitsToFloat((int) (d2 >> 32));
                            float intBitsToFloat3 = Float.intBitsToFloat((int) (d4 >> 32));
                            float intBitsToFloat4 = Float.intBitsToFloat((int) (d3 >> 32));
                            float min = Math.min(intBitsToFloat, Math.min(intBitsToFloat2, Math.min(intBitsToFloat3, intBitsToFloat4)));
                            float max = Math.max(intBitsToFloat, Math.max(intBitsToFloat2, Math.max(intBitsToFloat3, intBitsToFloat4)));
                            float intBitsToFloat5 = Float.intBitsToFloat((int) (d & 4294967295L));
                            float intBitsToFloat6 = Float.intBitsToFloat((int) (d2 & 4294967295L));
                            float intBitsToFloat7 = Float.intBitsToFloat((int) (d4 & 4294967295L));
                            arrayList2 = arrayList5;
                            i3 = size;
                            float intBitsToFloat8 = Float.intBitsToFloat((int) (d3 & 4294967295L));
                            rect = new Rect((int) min, (int) Math.min(intBitsToFloat5, Math.min(intBitsToFloat6, Math.min(intBitsToFloat7, intBitsToFloat8))), (int) max, (int) Math.max(intBitsToFloat5, Math.max(intBitsToFloat6, Math.max(intBitsToFloat7, intBitsToFloat8))));
                        }
                        try {
                            semanticsConfiguration = layoutNode3.y();
                        } catch (Throwable th) {
                            try {
                                if (((Method) lazy.getValue()) != null) {
                                    Method method3 = (Method) lazy.getValue();
                                    method3.getClass();
                                    try {
                                        semanticsConfiguration = (SemanticsConfiguration) method3.invoke(layoutNode3, null);
                                    } catch (Throwable th2) {
                                        th = th2;
                                        viewHierarchyNode2 = null;
                                        layoutNode2 = layoutNode3;
                                        arrayList = arrayList2;
                                        i2 = i7;
                                        i = i3;
                                        list2 = list3;
                                        i4 = 0;
                                        rect2 = rect;
                                        if (!b) {
                                        }
                                        int A = layoutNode2.A();
                                        int p = layoutNode2.p();
                                        float f8 = viewHierarchyNode5.c;
                                        if (SentryLayoutNodeHelper.b(layoutNode2)) {
                                        }
                                        r6 = i4;
                                        viewHierarchyNode4 = new ViewHierarchyNode(A, p, f8, viewHierarchyNode5, true, r6, rect2);
                                        i5 = i4;
                                        viewHierarchyNode3 = viewHierarchyNode4;
                                        r15 = i5;
                                        ArrayList arrayList6 = arrayList;
                                        if (viewHierarchyNode3 != null) {
                                        }
                                        i6 = i2 + 1;
                                        arrayList5 = arrayList6;
                                        n = list2;
                                        size = i;
                                        viewHierarchyNode6 = viewHierarchyNode2;
                                    }
                                } else {
                                    layoutNode2 = layoutNode3;
                                    arrayList = arrayList2;
                                    i2 = i7;
                                    i = i3;
                                    list2 = list3;
                                    i4 = 0;
                                    viewHierarchyNode2 = null;
                                    rect2 = rect;
                                    try {
                                        throw th;
                                        break;
                                    } catch (Throwable th3) {
                                        th = th3;
                                        if (!b) {
                                            b = true;
                                            iLogger.a(SentryLevel.ERROR, th, "Error retrieving semantics information from Compose tree. Most likely you're using\nan unsupported version of androidx.compose.ui:ui. The supported\nversion range is 1.5.0 - 1.10.2.\nIf you're using a newer version, please open a github issue with the version\nyou're using, so we can add support for it.", new Object[i4]);
                                        }
                                        int A2 = layoutNode2.A();
                                        int p2 = layoutNode2.p();
                                        float f82 = viewHierarchyNode5.c;
                                        if (SentryLayoutNodeHelper.b(layoutNode2) && rect2.height() > 0 && rect2.width() > 0) {
                                            r6 = true;
                                        } else {
                                            r6 = i4;
                                        }
                                        viewHierarchyNode4 = new ViewHierarchyNode(A2, p2, f82, viewHierarchyNode5, true, r6, rect2);
                                        i5 = i4;
                                        viewHierarchyNode3 = viewHierarchyNode4;
                                        r15 = i5;
                                        ArrayList arrayList62 = arrayList;
                                        if (viewHierarchyNode3 != null) {
                                        }
                                        i6 = i2 + 1;
                                        arrayList5 = arrayList62;
                                        n = list2;
                                        size = i;
                                        viewHierarchyNode6 = viewHierarchyNode2;
                                    }
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                layoutNode2 = layoutNode3;
                                arrayList = arrayList2;
                                i2 = i7;
                                i = i3;
                                list2 = list3;
                                i4 = 0;
                                viewHierarchyNode2 = null;
                            }
                        }
                        if (!SentryLayoutNodeHelper.b(layoutNode3)) {
                            if (semanticsConfiguration != null) {
                            }
                            if (rect.height() > 0 && rect.width() > 0) {
                                z2 = true;
                                if (semanticsConfiguration == null) {
                                    z3 = true;
                                } else {
                                    z3 = true;
                                }
                                if (semanticsConfiguration != null) {
                                }
                                z4 = false;
                                if (semanticsConfiguration != null) {
                                }
                                if (!z4) {
                                    layoutNode2 = layoutNode3;
                                    arrayList = arrayList2;
                                    i2 = i7;
                                    i = i3;
                                    list2 = list3;
                                    i5 = 0;
                                    i5 = 0;
                                    viewHierarchyNode2 = null;
                                    Rect rect4 = rect;
                                    List u = layoutNode2.u();
                                    int size2 = u.size();
                                    int i8 = 0;
                                    while (true) {
                                        if (i8 >= size2) {
                                            break;
                                        }
                                        Modifier modifier = ((ModifierInfo) u.get(i8)).a;
                                        if (StringsKt.i(modifier.getClass().getName(), "Painter", false)) {
                                            try {
                                                Field declaredField = modifier.getClass().getDeclaredField("painter");
                                                declaredField.setAccessible(true);
                                                Object obj2 = declaredField.get(modifier);
                                                if (obj2 instanceof Painter) {
                                                    painter = (Painter) obj2;
                                                }
                                            } catch (Throwable unused2) {
                                            }
                                        } else {
                                            i8++;
                                        }
                                    }
                                    painter = null;
                                    if (painter != null) {
                                        if (z2 && a(semanticsConfiguration, true, sentryMaskingOptions)) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        Painter painter2 = painter;
                                        int A3 = layoutNode2.A();
                                        int p3 = layoutNode2.p();
                                        float f9 = viewHierarchyNode5.c;
                                        if (z6) {
                                            String name = painter2.getClass().getName();
                                            if (!StringsKt.i(name, "Vector", false) && !StringsKt.i(name, "Color", false) && !StringsKt.i(name, "Brush", false)) {
                                                z7 = true;
                                                viewHierarchyNode4 = new ViewHierarchyNode(A3, p3, f9, viewHierarchyNode5, z7, z2, rect4);
                                            }
                                        }
                                        z7 = false;
                                        viewHierarchyNode4 = new ViewHierarchyNode(A3, p3, f9, viewHierarchyNode5, z7, z2, rect4);
                                    } else {
                                        if (z2 && a(semanticsConfiguration, false, sentryMaskingOptions)) {
                                            z5 = true;
                                        } else {
                                            z5 = false;
                                        }
                                        viewHierarchyNode4 = new ViewHierarchyNode(layoutNode2.A(), layoutNode2.p(), viewHierarchyNode5.c, viewHierarchyNode5, z5, z2, rect4);
                                    }
                                    viewHierarchyNode3 = viewHierarchyNode4;
                                    r15 = i5;
                                }
                                if (!z2 && a(semanticsConfiguration, false, sentryMaskingOptions)) {
                                    arrayList3 = arrayList2;
                                    z8 = true;
                                } else {
                                    arrayList3 = arrayList2;
                                    z8 = false;
                                }
                                ArrayList arrayList7 = new ArrayList();
                                if (semanticsConfiguration != null) {
                                    Object e = semanticsConfiguration.j.e(SemanticsActions.a);
                                    if (e == null) {
                                        e = null;
                                    }
                                    AccessibilityAction accessibilityAction = (AccessibilityAction) e;
                                    if (accessibilityAction != null && (function1 = (Function1) accessibilityAction.b) != null) {
                                    }
                                }
                                textLayoutResult = (TextLayoutResult) CollectionsKt.t(arrayList7);
                                if (textLayoutResult == null && (textLayoutInput2 = textLayoutResult.a) != null && (textStyle2 = textLayoutInput2.b) != null) {
                                    arrayList4 = arrayList3;
                                    z9 = z4;
                                    color = new Color(textStyle2.b());
                                } else {
                                    arrayList4 = arrayList3;
                                    z9 = z4;
                                    color = null;
                                }
                                if (color == null && color.a == 16) {
                                    List u2 = layoutNode3.u();
                                    int size3 = u2.size();
                                    int i9 = 0;
                                    while (true) {
                                        if (i9 < size3) {
                                            List list4 = u2;
                                            Modifier modifier2 = ((ModifierInfo) u2.get(i9)).a;
                                            int i10 = size3;
                                            int i11 = i9;
                                            rect3 = rect;
                                            if (StringsKt.i(modifier2.getClass().getName(), "Text", false)) {
                                                try {
                                                    Field declaredField2 = modifier2.getClass().getDeclaredField("color");
                                                    declaredField2.setAccessible(true);
                                                    Object obj3 = declaredField2.get(modifier2);
                                                    if (obj3 instanceof ColorProducer) {
                                                        colorProducer = (ColorProducer) obj3;
                                                    } else {
                                                        colorProducer = null;
                                                    }
                                                    if (colorProducer != null) {
                                                        color = new Color(colorProducer.a());
                                                    }
                                                } catch (Throwable unused3) {
                                                }
                                            } else {
                                                i9 = i11 + 1;
                                                u2 = list4;
                                                size3 = i10;
                                                rect = rect3;
                                            }
                                        } else {
                                            rect3 = rect;
                                            break;
                                        }
                                    }
                                    color = null;
                                } else {
                                    rect3 = rect;
                                }
                                if (textLayoutResult == null && (textLayoutInput = textLayoutResult.a) != null && (textStyle = textLayoutInput.b) != null) {
                                    textUnit = new TextUnit(textStyle.a.b);
                                } else {
                                    textUnit = null;
                                }
                                long j = TextUnit.c;
                                if (textUnit != null) {
                                    z10 = z2;
                                    a2 = false;
                                } else {
                                    z10 = z2;
                                    a2 = TextUnit.a(textUnit.a, j);
                                }
                                if (textLayoutResult == null && !z9 && !a2) {
                                    composeTextLayout = new ComposeTextLayout(textLayoutResult);
                                } else {
                                    composeTextLayout = null;
                                }
                                if (color == null) {
                                    num = Integer.valueOf(ColorKt.f(color.a) | (-16777216));
                                } else {
                                    num = null;
                                }
                                layoutNode2 = layoutNode3;
                                i2 = i7;
                                arrayList = arrayList4;
                                boolean z11 = z10;
                                viewHierarchyNode2 = null;
                                i = i3;
                                list2 = list3;
                                r15 = 0;
                                viewHierarchyNode3 = new ViewHierarchyNode.TextViewHierarchyNode(composeTextLayout, num, 0, 0, layoutNode3.A(), layoutNode3.p(), viewHierarchyNode5.c, viewHierarchyNode, z8, z11, rect3);
                                viewHierarchyNode5 = viewHierarchyNode;
                            }
                        }
                        z2 = false;
                        if (semanticsConfiguration == null) {
                        }
                        if (semanticsConfiguration != null) {
                        }
                        z4 = false;
                        if (semanticsConfiguration != null) {
                        }
                        if (!z4) {
                        }
                        if (!z2) {
                        }
                        arrayList3 = arrayList2;
                        z8 = false;
                        ArrayList arrayList72 = new ArrayList();
                        if (semanticsConfiguration != null) {
                        }
                        textLayoutResult = (TextLayoutResult) CollectionsKt.t(arrayList72);
                        if (textLayoutResult == null) {
                        }
                        arrayList4 = arrayList3;
                        z9 = z4;
                        color = null;
                        if (color == null) {
                        }
                        rect3 = rect;
                        if (textLayoutResult == null) {
                        }
                        textUnit = null;
                        long j2 = TextUnit.c;
                        if (textUnit != null) {
                        }
                        if (textLayoutResult == null) {
                        }
                        composeTextLayout = null;
                        if (color == null) {
                        }
                        layoutNode2 = layoutNode3;
                        i2 = i7;
                        arrayList = arrayList4;
                        boolean z112 = z10;
                        viewHierarchyNode2 = null;
                        i = i3;
                        list2 = list3;
                        r15 = 0;
                        viewHierarchyNode3 = new ViewHierarchyNode.TextViewHierarchyNode(composeTextLayout, num, 0, 0, layoutNode3.A(), layoutNode3.p(), viewHierarchyNode5.c, viewHierarchyNode, z8, z112, rect3);
                        viewHierarchyNode5 = viewHierarchyNode;
                    } else {
                        list2 = n;
                        arrayList = arrayList5;
                        i = size;
                        i2 = i6;
                        layoutNode2 = layoutNode3;
                        viewHierarchyNode2 = viewHierarchyNode6;
                        r15 = 0;
                        viewHierarchyNode3 = viewHierarchyNode2;
                    }
                    ArrayList arrayList622 = arrayList;
                    if (viewHierarchyNode3 != null) {
                        arrayList622.add(viewHierarchyNode3);
                        b(layoutNode2, viewHierarchyNode3, r15, sentryMaskingOptions, iLogger);
                    }
                    i6 = i2 + 1;
                    arrayList5 = arrayList622;
                    n = list2;
                    size = i;
                    viewHierarchyNode6 = viewHierarchyNode2;
                }
                viewHierarchyNode5.g = arrayList5;
                return;
            }
            k8.e();
            return;
        }
        n = list;
        if (!n.isEmpty()) {
        }
    }
}
