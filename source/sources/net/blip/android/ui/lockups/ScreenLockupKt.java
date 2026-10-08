package net.blip.android.ui.lockups;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.RowScopeInstance;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.IconButtonKt;
import androidx.compose.material.InteractiveComponentSizeKt;
import androidx.compose.material.MinimumInteractiveModifier;
import androidx.compose.material.icons.automirrored.rounded.ArrowBackKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.VectorPainter;
import androidx.compose.ui.graphics.vector.VectorPainterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.ad;
import defpackage.cd;
import defpackage.e6;
import defpackage.k8;
import defpackage.q;
import defpackage.te;
import defpackage.v0;
import defpackage.w0;
import defpackage.x9;
import defpackage.z3;
import java.util.Iterator;
import java.util.List;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.lockups.ButtonRowItem;
import net.blip.android.ui.util.FadeOutNavigationBarKt;
import net.blip.android.ui.util.SystemBarsMetricsKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScreenLockupKt {
    public static final void a(Modifier modifier, long j, List list, Composer composer, int i, int i2) {
        long j2;
        boolean z;
        long j3;
        Modifier modifier2;
        Modifier modifier3;
        boolean h;
        int i3;
        int i4;
        list.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-855074250);
        int i5 = i | 6;
        if ((i & 48) == 0) {
            if ((i2 & 2) == 0) {
                j2 = j;
                if (gapComposer.e(j2)) {
                    i4 = 32;
                    i5 |= i4;
                }
            } else {
                j2 = j;
            }
            i4 = 16;
            i5 |= i4;
        } else {
            j2 = j;
        }
        if ((i & 384) == 0) {
            if ((i & 512) == 0) {
                h = gapComposer.f(list);
            } else {
                h = gapComposer.h(list);
            }
            if (h) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i5 |= i3;
        }
        if ((i5 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
                modifier3 = modifier;
            } else {
                int i6 = i2 & 2;
                modifier3 = Modifier.Companion.b;
                if (i6 != 0) {
                    j2 = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).d;
                }
            }
            gapComposer.q();
            RowMeasurePolicy a = RowKt.a(Arrangement.a, Alignment.Companion.k, gapComposer, 48);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier3);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            gapComposer.W(1709318901);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                ButtonRowItem buttonRowItem = (ButtonRowItem) it.next();
                if (buttonRowItem instanceof ButtonRowItem.IconSpacer) {
                    gapComposer.W(-1272180129);
                    StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.a;
                    SpacerKt.a(gapComposer, MinimumInteractiveModifier.b);
                    gapComposer.p(false);
                } else if (buttonRowItem instanceof ButtonRowItem.Icon) {
                    gapComposer.W(-1272031019);
                    ButtonRowItem.Icon icon = (ButtonRowItem.Icon) buttonRowItem;
                    IconButtonKt.a(icon.a, null, false, ComposableLambdaKt.b(-490766917, new v0(icon, j2), gapComposer), gapComposer, 24576, 14);
                    gapComposer.p(false);
                } else if (buttonRowItem instanceof ButtonRowItem.IconMenu) {
                    gapComposer.W(-1271636482);
                    Object K = gapComposer.K();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                    if (K == composer$Companion$Empty$1) {
                        K = SnapshotStateKt.g(Boolean.FALSE);
                        gapComposer.g0(K);
                    }
                    MutableState mutableState = (MutableState) K;
                    Object K2 = gapComposer.K();
                    if (K2 == composer$Companion$Empty$1) {
                        K2 = new cd(mutableState, 10);
                        gapComposer.g0(K2);
                    }
                    IconButtonKt.a((Function0) K2, null, false, ComposableLambdaKt.b(691465818, new w0((ButtonRowItem.IconMenu) buttonRowItem, j2, mutableState), gapComposer), gapComposer, 24582, 14);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(-318133255);
                    gapComposer.p(false);
                    k8.e();
                    return;
                }
            }
            gapComposer.p(false);
            gapComposer.p(true);
            long j4 = j2;
            modifier2 = modifier3;
            j3 = j4;
        } else {
            gapComposer.Q();
            j3 = j2;
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new te(modifier2, j3, list, i, i2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:30:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003e  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0024  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(long j, Function2 function2, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        long j2;
        int i3;
        int i4;
        int i5;
        Function2 function22;
        int i6;
        boolean z;
        ComposableLambdaImpl composableLambdaImpl2;
        Function2 function23;
        RecomposeScopeImpl r;
        Function2 function24;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(751418049);
        if ((i2 & 1) == 0) {
            j2 = j;
            if (gapComposer.e(j2)) {
                i3 = 4;
                i4 = i | i3;
                i5 = i2 & 2;
                if (i5 == 0) {
                    i4 |= 48;
                } else if ((i & 48) == 0) {
                    function22 = function2;
                    if (gapComposer.h(function22)) {
                        i6 = 32;
                    } else {
                        i6 = 16;
                    }
                    i4 |= i6;
                    if ((i4 & 147) != 146) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (gapComposer.N(i4 & 1, z)) {
                        gapComposer.S();
                        if ((i & 1) != 0 && !gapComposer.x()) {
                            gapComposer.Q();
                            if ((i2 & 1) != 0) {
                                i4 &= -15;
                            }
                        } else {
                            if ((i2 & 1) != 0) {
                                j2 = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).i;
                                i4 &= -15;
                            }
                            if (i5 != 0) {
                                function24 = null;
                                gapComposer.q();
                                composableLambdaImpl2 = composableLambdaImpl;
                                FadeOutNavigationBarKt.a(j2, ComposableLambdaKt.b(-715297402, new w0(j2, function24, composableLambdaImpl2), gapComposer), gapComposer, (i4 & 14) | 48, 0);
                                function23 = function24;
                            }
                        }
                        function24 = function22;
                        gapComposer.q();
                        composableLambdaImpl2 = composableLambdaImpl;
                        FadeOutNavigationBarKt.a(j2, ComposableLambdaKt.b(-715297402, new w0(j2, function24, composableLambdaImpl2), gapComposer), gapComposer, (i4 & 14) | 48, 0);
                        function23 = function24;
                    } else {
                        composableLambdaImpl2 = composableLambdaImpl;
                        gapComposer.Q();
                        function23 = function22;
                    }
                    long j3 = j2;
                    r = gapComposer.r();
                    if (r != null) {
                        r.d = new te(j3, function23, composableLambdaImpl2, i, i2);
                        return;
                    }
                    return;
                }
                function22 = function2;
                if ((i4 & 147) != 146) {
                }
                if (gapComposer.N(i4 & 1, z)) {
                }
                long j32 = j2;
                r = gapComposer.r();
                if (r != null) {
                }
            }
        } else {
            j2 = j;
        }
        i3 = 2;
        i4 = i | i3;
        i5 = i2 & 2;
        if (i5 == 0) {
        }
        function22 = function2;
        if ((i4 & 147) != 146) {
        }
        if (gapComposer.N(i4 & 1, z)) {
        }
        long j322 = j2;
        r = gapComposer.r();
        if (r != null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00bc  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x003a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void c(Modifier modifier, String str, TextStyle textStyle, Composer composer, int i, int i2) {
        TextStyle textStyle2;
        int i3;
        int i4;
        boolean z;
        Modifier modifier2;
        TextStyle textStyle3;
        RecomposeScopeImpl r;
        TextStyle textStyle4;
        Modifier modifier3;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1629471177);
        int i6 = i | 6;
        if ((i & 48) == 0) {
            if (gapComposer.f(str)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i6 |= i5;
        }
        if ((i2 & 4) == 0) {
            textStyle2 = textStyle;
            if (gapComposer.f(textStyle2)) {
                i3 = 256;
                i4 = i6 | i3;
                if ((i4 & 147) == 146) {
                    z = true;
                } else {
                    z = false;
                }
                if (!gapComposer.N(i4 & 1, z)) {
                    gapComposer.S();
                    if ((i & 1) != 0 && !gapComposer.x()) {
                        gapComposer.Q();
                        if ((i2 & 4) != 0) {
                            i4 &= -897;
                        }
                        textStyle4 = textStyle2;
                        modifier3 = modifier;
                    } else {
                        int i7 = i2 & 4;
                        Modifier.Companion companion = Modifier.Companion.b;
                        if (i7 != 0) {
                            textStyle2 = TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).d, TextUnitKt.d(18), FontWeight.u, 0L, 0L, null, LineBreak.c, 14647288);
                            i4 &= -897;
                        }
                        textStyle4 = textStyle2;
                        modifier3 = companion;
                    }
                    gapComposer.q();
                    PlatformTextKt.c(str, modifier3, textStyle4, 2, false, 1, 0, null, gapComposer, ((i4 >> 3) & 14) | 1597488 | (i4 & 896), 424);
                    modifier2 = modifier3;
                    textStyle3 = textStyle4;
                } else {
                    gapComposer.Q();
                    modifier2 = modifier;
                    textStyle3 = textStyle2;
                }
                r = gapComposer.r();
                if (r == null) {
                    r.d = new z3(modifier2, str, textStyle3, i, i2, 3);
                    return;
                }
                return;
            }
        } else {
            textStyle2 = textStyle;
        }
        i3 = 128;
        i4 = i6 | i3;
        if ((i4 & 147) == 146) {
        }
        if (!gapComposer.N(i4 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0222  */
    /* JADX WARN: Removed duplicated region for block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0214  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void d(Modifier modifier, long j, Function2 function2, Function2 function22, Function0 function0, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        int i5;
        Function2 function23;
        int i6;
        Function2 function24;
        int i7;
        int i8;
        int i9;
        boolean z;
        long j2;
        Modifier modifier3;
        Function2 function25;
        Function2 function26;
        RecomposeScopeImpl r;
        Modifier modifier4;
        Integer num;
        int i10;
        long j3;
        Function2 function27;
        boolean z2;
        Object obj;
        Integer num2;
        boolean z3;
        Unit unit;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1210712441);
        int i11 = i2 & 1;
        if (i11 != 0) {
            i4 = i | 6;
            modifier2 = modifier;
        } else {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i4 = i3 | i;
        }
        int i12 = i4 | 16;
        int i13 = i2 & 4;
        if (i13 != 0) {
            i12 = i4 | 400;
        } else if ((i & 384) == 0) {
            Function2 function28 = function2;
            if (gapComposer.h(function28)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i12 |= i5;
            function23 = function28;
            i6 = i2 & 8;
            if (i6 == 0) {
                i12 |= 3072;
            } else if ((i & 3072) == 0) {
                function24 = function22;
                if (gapComposer.h(function24)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i12 |= i7;
                if (gapComposer.h(function0)) {
                    i8 = 16384;
                } else {
                    i8 = 8192;
                }
                i9 = i12 | i8;
                if ((i9 & 9363) != 9362) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposer.N(i9 & 1, z)) {
                    gapComposer.S();
                    if ((i & 1) != 0 && !gapComposer.x()) {
                        gapComposer.Q();
                        Modifier modifier5 = modifier2;
                        i10 = i9 & (-113);
                        modifier4 = modifier5;
                        j3 = j;
                        num = 0;
                        function27 = function23;
                    } else {
                        if (i11 != 0) {
                            modifier4 = Modifier.Companion.b;
                        } else {
                            modifier4 = modifier2;
                        }
                        num = 0;
                        long j4 = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).d;
                        i10 = i9 & (-113);
                        Function2 function29 = function23;
                        if (i13 != 0) {
                            function29 = null;
                        }
                        if (i6 != 0) {
                            function24 = null;
                        }
                        j3 = j4;
                        function27 = function29;
                    }
                    Function2 function210 = function24;
                    gapComposer.q();
                    Modifier f = PaddingKt.f(SizeKt.e(SizeKt.d(SystemBarsMetricsKt.c(gapComposer, modifier4), 1.0f), 60.0f), 8.0f, 0.0f, 2);
                    RowMeasurePolicy a = RowKt.a(Arrangement.d, Alignment.Companion.k, gapComposer, 54);
                    long j5 = j3;
                    int hashCode = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l = gapComposer.l();
                    Modifier c = ComposedModifierKt.c(gapComposer, f);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    boolean z4 = gapComposer.S;
                    x9 x9Var = LayoutNode.b0;
                    if (z4) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    e6 e6Var = ComposeUiNode.Companion.d;
                    Updater.c(gapComposer, a, e6Var);
                    e6 e6Var2 = ComposeUiNode.Companion.c;
                    Updater.c(gapComposer, l, e6Var2);
                    Integer valueOf = Integer.valueOf(hashCode);
                    e6 e6Var3 = ComposeUiNode.Companion.e;
                    Updater.c(gapComposer, valueOf, e6Var3);
                    Updater.b(gapComposer);
                    e6 e6Var4 = ComposeUiNode.Companion.b;
                    Updater.c(gapComposer, c, e6Var4);
                    VectorPainter b = VectorPainterKt.b(ArrowBackKt.a(), gapComposer);
                    if ((i10 & 57344) == 16384) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Object K = gapComposer.K();
                    ButtonRowItem.IconSpacer iconSpacer = ButtonRowItem.IconSpacer.a;
                    if (z2 || K == Composer.Companion.a) {
                        if (function0 != null) {
                            obj = new ButtonRowItem.Icon(b, function0);
                        } else {
                            obj = iconSpacer;
                        }
                        K = CollectionsKt.B(obj);
                        gapComposer.g0(K);
                    }
                    Modifier modifier6 = modifier4;
                    a(null, j5, (List) K, gapComposer, 0, 1);
                    SpacerKt.a(gapComposer, SizeKt.n(8.0f));
                    if (function27 == null) {
                        gapComposer.W(-1082295361);
                        z3 = false;
                        gapComposer.p(false);
                        num2 = num;
                    } else {
                        gapComposer.W(-1082295360);
                        Modifier a2 = RowScopeInstance.a.a();
                        MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
                        int hashCode2 = Long.hashCode(gapComposer.T);
                        PersistentCompositionLocalMap l2 = gapComposer.l();
                        Modifier c2 = ComposedModifierKt.c(gapComposer, a2);
                        gapComposer.Z();
                        if (gapComposer.S) {
                            gapComposer.k(x9Var);
                        } else {
                            gapComposer.j0();
                        }
                        Updater.c(gapComposer, d, e6Var);
                        Updater.c(gapComposer, l2, e6Var2);
                        q.s(hashCode2, gapComposer, e6Var3, gapComposer);
                        Updater.c(gapComposer, c2, e6Var4);
                        num2 = num;
                        function27.n(gapComposer, num2);
                        gapComposer.p(true);
                        z3 = false;
                        gapComposer.p(false);
                    }
                    SpacerKt.a(gapComposer, SizeKt.n(8.0f));
                    if (function210 == null) {
                        gapComposer.W(-1082070952);
                        gapComposer.p(z3);
                        unit = null;
                    } else {
                        gapComposer.W(-1082070951);
                        function210.n(gapComposer, num2);
                        gapComposer.p(z3);
                        unit = Unit.a;
                    }
                    if (unit == null) {
                        gapComposer.W(-1082053994);
                        a(null, 0L, CollectionsKt.B(iconSpacer), gapComposer, 384, 3);
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-450547646);
                        gapComposer.p(false);
                    }
                    gapComposer.p(true);
                    modifier3 = modifier6;
                    function25 = function27;
                    j2 = j5;
                    function26 = function210;
                } else {
                    gapComposer.Q();
                    j2 = j;
                    modifier3 = modifier2;
                    function25 = function23;
                    function26 = function24;
                }
                r = gapComposer.r();
                if (r != null) {
                    r.d = new ad(modifier3, j2, function25, function26, function0, i, i2);
                    return;
                }
                return;
            }
            function24 = function22;
            if (gapComposer.h(function0)) {
            }
            i9 = i12 | i8;
            if ((i9 & 9363) != 9362) {
            }
            if (gapComposer.N(i9 & 1, z)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        function23 = function2;
        i6 = i2 & 8;
        if (i6 == 0) {
        }
        function24 = function22;
        if (gapComposer.h(function0)) {
        }
        i9 = i12 | i8;
        if ((i9 & 9363) != 9362) {
        }
        if (gapComposer.N(i9 & 1, z)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }
}
