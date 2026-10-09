package androidx.compose.ui.window;

import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.OnGloballyPositionedModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a7;
import defpackage.n;
import defpackage.o;
import defpackage.q1;
import defpackage.s1;
import defpackage.t1;
import defpackage.u1;
import java.util.List;
import java.util.UUID;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidPopup_androidKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new n(9));
    public static final DynamicProvidableCompositionLocal b = new DynamicProvidableCompositionLocal(new n(10));

    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x0259  */
    /* JADX WARN: Removed duplicated region for block: B:81:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x006a  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x004e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(PopupPositionProvider popupPositionProvider, Function0 function0, PopupProperties popupProperties, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        int i3;
        Function0 function02;
        int i4;
        PopupProperties popupProperties2;
        int i5;
        boolean z;
        Function0 function03;
        RecomposeScopeImpl r;
        Function0 function04;
        String str;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        final LayoutDirection layoutDirection;
        int i12;
        int i13;
        int i14;
        PopupPositionProvider popupPositionProvider2 = popupPositionProvider;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1772091631);
        if ((i & 6) == 0) {
            if (gapComposer.f(popupPositionProvider2)) {
                i14 = 4;
            } else {
                i14 = 2;
            }
            i3 = i14 | i;
        } else {
            i3 = i;
        }
        int i15 = i2 & 2;
        if (i15 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            function02 = function0;
            if (gapComposer.h(function02)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i3 |= i4;
            if ((i & 384) != 0) {
                popupProperties2 = popupProperties;
                if (gapComposer.f(popupProperties2)) {
                    i13 = 256;
                } else {
                    i13 = 128;
                }
                i3 |= i13;
            } else {
                popupProperties2 = popupProperties;
            }
            if ((i & 3072) == 0) {
                if (gapComposer.h(composableLambdaImpl)) {
                    i12 = 2048;
                } else {
                    i12 = 1024;
                }
                i3 |= i12;
            }
            i5 = i3;
            if ((i5 & 1171) == 1170) {
                z = true;
            } else {
                z = false;
            }
            if (!gapComposer.N(i5 & 1, z)) {
                if (i15 != 0) {
                    function04 = null;
                } else {
                    function04 = function02;
                }
                View view = (View) gapComposer.j(AndroidCompositionLocals_androidKt.f);
                Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
                String str2 = (String) gapComposer.j(a);
                LayoutDirection layoutDirection2 = (LayoutDirection) gapComposer.j(CompositionLocalsKt.n);
                GapComposer.CompositionContextImpl b2 = ComposablesKt.b(gapComposer);
                MutableState k = SnapshotStateKt.k(composableLambdaImpl, gapComposer);
                Object[] objArr = new Object[0];
                Object K = gapComposer.K();
                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                Object obj = K;
                if (K == composer$Companion$Empty$1) {
                    n nVar = new n(11);
                    gapComposer.g0(nVar);
                    obj = nVar;
                }
                UUID uuid = (UUID) RememberSaveableKt.c(objArr, (Function0) obj, gapComposer);
                boolean booleanValue = ((Boolean) gapComposer.j(b)).booleanValue();
                Object K2 = gapComposer.K();
                if (K2 == composer$Companion$Empty$1) {
                    str = str2;
                    i6 = 0;
                    PopupLayout popupLayout = new PopupLayout(function04, popupProperties2, str, view, density, popupPositionProvider2, uuid, booleanValue);
                    popupPositionProvider2 = popupPositionProvider2;
                    popupLayout.n(b2, new ComposableLambdaImpl(-297523940, true, new t1(popupLayout, k, i6)));
                    gapComposer.g0(popupLayout);
                    K2 = popupLayout;
                } else {
                    str = str2;
                    i6 = 0;
                }
                final PopupLayout popupLayout2 = (PopupLayout) K2;
                boolean h = gapComposer.h(popupLayout2);
                int i16 = i5 & 112;
                if (i16 == 32) {
                    i7 = 1;
                } else {
                    i7 = i6;
                }
                int i17 = (h ? 1 : 0) | i7;
                int i18 = i5 & 896;
                if (i18 == 256) {
                    i8 = 1;
                } else {
                    i8 = i6;
                }
                int i19 = i17 | i8 | (gapComposer.f(str) ? 1 : 0) | (gapComposer.d(layoutDirection2.ordinal()) ? 1 : 0);
                Object K3 = gapComposer.K();
                if (i19 != 0 || K3 == composer$Companion$Empty$1) {
                    i9 = i5;
                    o oVar = new o(popupLayout2, function04, popupProperties, str, layoutDirection2);
                    gapComposer.g0(oVar);
                    K3 = oVar;
                } else {
                    i9 = i5;
                }
                EffectsKt.c(popupLayout2, (Function1) K3, gapComposer);
                boolean h2 = gapComposer.h(popupLayout2);
                if (i16 == 32) {
                    i10 = 1;
                } else {
                    i10 = i6;
                }
                int i20 = i10 | (h2 ? 1 : 0);
                if (i18 == 256) {
                    i11 = 1;
                } else {
                    i11 = i6;
                }
                int i21 = i20 | i11 | (gapComposer.f(str) ? 1 : 0) | (gapComposer.d(layoutDirection2.ordinal()) ? 1 : 0);
                Object K4 = gapComposer.K();
                if (i21 == 0 && K4 != composer$Companion$Empty$1) {
                    layoutDirection = layoutDirection2;
                } else {
                    q1 q1Var = new q1(popupLayout2, function04, popupProperties, str, layoutDirection2, 1);
                    layoutDirection = layoutDirection2;
                    gapComposer.g0(q1Var);
                    K4 = q1Var;
                }
                EffectsKt.g((Function0) K4, gapComposer);
                boolean h3 = gapComposer.h(popupLayout2);
                if ((i9 & 14) == 4) {
                    i6 = 1;
                }
                int i22 = (h3 ? 1 : 0) | i6;
                Object K5 = gapComposer.K();
                Object obj2 = K5;
                if (i22 != 0 || K5 == composer$Companion$Empty$1) {
                    defpackage.b bVar = new defpackage.b(1, popupLayout2, popupPositionProvider2);
                    gapComposer.g0(bVar);
                    obj2 = bVar;
                }
                EffectsKt.c(popupPositionProvider2, (Function1) obj2, gapComposer);
                boolean h4 = gapComposer.h(popupLayout2);
                Object K6 = gapComposer.K();
                Object obj3 = K6;
                if (h4 || K6 == composer$Companion$Empty$1) {
                    AndroidPopup_androidKt$Popup$5$1 androidPopup_androidKt$Popup$5$1 = new AndroidPopup_androidKt$Popup$5$1(popupLayout2, null);
                    gapComposer.g0(androidPopup_androidKt$Popup$5$1);
                    obj3 = androidPopup_androidKt$Popup$5$1;
                }
                EffectsKt.e(gapComposer, popupLayout2, (Function2) obj3);
                boolean h5 = gapComposer.h(popupLayout2);
                Object K7 = gapComposer.K();
                Object obj4 = K7;
                if (h5 || K7 == composer$Companion$Empty$1) {
                    s1 s1Var = new s1(popupLayout2, 1);
                    gapComposer.g0(s1Var);
                    obj4 = s1Var;
                }
                Modifier a2 = OnGloballyPositionedModifierKt.a(Modifier.Companion.b, (Function1) obj4);
                boolean h6 = gapComposer.h(popupLayout2) | gapComposer.d(layoutDirection.ordinal());
                Object K8 = gapComposer.K();
                Object obj5 = K8;
                if (h6 || K8 == composer$Companion$Empty$1) {
                    MeasurePolicy measurePolicy = new MeasurePolicy() { // from class: androidx.compose.ui.window.AndroidPopup_androidKt$Popup$8$1
                        @Override // androidx.compose.ui.layout.MeasurePolicy
                        public final MeasureResult a(MeasureScope measureScope, List list, long j) {
                            PopupLayout.this.setParentLayoutDirection(layoutDirection);
                            return MeasureScope.h0(measureScope, 0, 0, new a7(15));
                        }
                    };
                    gapComposer.g0(measurePolicy);
                    obj5 = measurePolicy;
                }
                MeasurePolicy measurePolicy2 = (MeasurePolicy) obj5;
                int hashCode = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l = gapComposer.l();
                Modifier c = ComposedModifierKt.c(gapComposer, a2);
                ComposeUiNode.b.getClass();
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(LayoutNode.b0);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, measurePolicy2, ComposeUiNode.Companion.d);
                Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
                Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                Updater.b(gapComposer);
                Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
                gapComposer.p(true);
                function03 = function04;
            } else {
                gapComposer.Q();
                function03 = function02;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new u1(popupPositionProvider2, function03, popupProperties, composableLambdaImpl, i, i2, 0);
                return;
            }
            return;
        }
        function02 = function0;
        if ((i & 384) != 0) {
        }
        if ((i & 3072) == 0) {
        }
        i5 = i3;
        if ((i5 & 1171) == 1170) {
        }
        if (!gapComposer.N(i5 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    public static final boolean b(View view) {
        WindowManager.LayoutParams layoutParams;
        ViewGroup.LayoutParams layoutParams2 = view.getRootView().getLayoutParams();
        if (layoutParams2 instanceof WindowManager.LayoutParams) {
            layoutParams = (WindowManager.LayoutParams) layoutParams2;
        } else {
            layoutParams = null;
        }
        if (layoutParams == null || (layoutParams.flags & 8192) == 0) {
            return false;
        }
        return true;
    }
}
