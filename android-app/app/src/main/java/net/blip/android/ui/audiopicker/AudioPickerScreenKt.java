package net.blip.android.ui.audiopicker;

import android.content.Context;
import android.os.Build;
import androidx.compose.animation.AnimatedContentKt;
import androidx.compose.animation.AnimatedContentScope;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValuesImpl;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.lazy.LazyDslKt;
import androidx.compose.material.ProgressIndicatorKt;
import androidx.compose.material.icons.automirrored.rounded.HelpOutlineKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.navigation.NavHostController;
import defpackage.a0;
import defpackage.g3;
import defpackage.h;
import defpackage.h3;
import defpackage.k3;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function4;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.audiopicker.ListState;
import net.blip.android.ui.lockups.BlankStateLockupKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.navigation.NavResultWriter;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.android.ui.util.NuancedPermissionState;
import net.blip.android.ui.util.NuancedPermissionStateKt;
import racra.compose.smooth_corner_rect_library.AbsoluteSmoothCornerShape;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AudioPickerScreenKt {
    public static final void a(Modifier modifier, final float f, final Function1 function1, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        boolean z;
        final NuancedPermissionState c;
        Object loaded;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(554664239);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i5 = i | i2;
        if (gapComposer.c(f)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i6 = i5 | i3;
        if (gapComposer.h(function1)) {
            i4 = 256;
        } else {
            i4 = 128;
        }
        int i7 = i6 | i4;
        if ((i7 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i7 & 1, z)) {
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            Object K = gapComposer.K();
            Object obj = Composer.Companion.a;
            if (K == obj) {
                K = SnapshotStateKt.g(null);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            if (Build.VERSION.SDK_INT >= 33) {
                gapComposer.W(-212192259);
                c = NuancedPermissionStateKt.c("android.permission.READ_MEDIA_AUDIO", gapComposer);
                gapComposer.p(false);
            } else {
                gapComposer.W(-212081992);
                c = NuancedPermissionStateKt.c("android.permission.READ_EXTERNAL_STORAGE", gapComposer);
                gapComposer.p(false);
            }
            boolean z2 = c.a;
            Object K2 = gapComposer.K();
            if (K2 == obj) {
                Object absoluteSmoothCornerShape = new AbsoluteSmoothCornerShape(12.0f, 60, 12.0f, 60, 12.0f, 60, 12.0f, 60);
                gapComposer.g0(absoluteSmoothCornerShape);
                K2 = absoluteSmoothCornerShape;
            }
            final AbsoluteSmoothCornerShape absoluteSmoothCornerShape2 = (AbsoluteSmoothCornerShape) K2;
            Boolean valueOf = Boolean.valueOf(z2);
            boolean h = gapComposer.h(c) | gapComposer.h(context);
            Object K3 = gapComposer.K();
            if (h || K3 == obj) {
                K3 = new AudioPickerScreenKt$AudioList$1$1(c, context, mutableState, null);
                gapComposer.g0(K3);
            }
            EffectsKt.e(gapComposer, valueOf, (Function2) K3);
            if (!z2) {
                loaded = ListState.NoPermission.a;
            } else if (((List) mutableState.getValue()) == null) {
                loaded = ListState.Loading.a;
            } else {
                List list = (List) mutableState.getValue();
                list.getClass();
                loaded = new ListState.Loaded(list);
            }
            Object K4 = gapComposer.K();
            if (K4 == obj) {
                K4 = new h(17);
                gapComposer.g0(K4);
            }
            AnimatedContentKt.b(loaded, modifier, (Function1) K4, null, "", null, ComposableLambdaKt.b(-933711352, new Function4() { // from class: j3
                @Override // kotlin.jvm.functions.Function4
                public final Object j(Object obj2, Object obj3, Object obj4, Object obj5) {
                    Composer composer2 = (Composer) obj4;
                    ((Integer) obj5).getClass();
                    ((AnimatedContentScope) obj2).getClass();
                    obj3.getClass();
                    boolean z3 = obj3 instanceof ListState.Loading;
                    e6 e6Var = ComposeUiNode.Companion.b;
                    e6 e6Var2 = ComposeUiNode.Companion.e;
                    e6 e6Var3 = ComposeUiNode.Companion.c;
                    e6 e6Var4 = ComposeUiNode.Companion.d;
                    Modifier.Companion companion = Modifier.Companion.b;
                    float f2 = f;
                    Function0 function0 = LayoutNode.b0;
                    BiasAlignment biasAlignment = Alignment.Companion.e;
                    if (z3) {
                        GapComposer gapComposer2 = (GapComposer) composer2;
                        gapComposer2.W(-1986586712);
                        Modifier h2 = PaddingKt.h(companion, 0.0f, 0.0f, 0.0f, f2, 7);
                        MeasurePolicy d = BoxKt.d(biasAlignment, false);
                        int hashCode = Long.hashCode(gapComposer2.T);
                        PersistentCompositionLocalMap l = gapComposer2.l();
                        Modifier c2 = ComposedModifierKt.c(gapComposer2, h2);
                        ComposeUiNode.b.getClass();
                        gapComposer2.Z();
                        if (gapComposer2.S) {
                            gapComposer2.k(function0);
                        } else {
                            gapComposer2.j0();
                        }
                        Updater.c(gapComposer2, d, e6Var4);
                        Updater.c(gapComposer2, l, e6Var3);
                        Updater.c(gapComposer2, Integer.valueOf(hashCode), e6Var2);
                        Updater.b(gapComposer2);
                        Updater.c(gapComposer2, c2, e6Var);
                        ProgressIndicatorKt.b(null, ((AndroidColors) gapComposer2.j(AndroidColorsKt.a)).b, 0.0f, 0L, 1, gapComposer2, 0, 13);
                        gapComposer2.p(true);
                        gapComposer2.p(false);
                    } else {
                        boolean z4 = obj3 instanceof ListState.NoPermission;
                        Object obj6 = Composer.Companion.a;
                        if (z4) {
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            gapComposer3.W(-1986200173);
                            Modifier h3 = PaddingKt.h(companion, 0.0f, 0.0f, 0.0f, f2, 7);
                            MeasurePolicy d2 = BoxKt.d(biasAlignment, false);
                            int hashCode2 = Long.hashCode(gapComposer3.T);
                            PersistentCompositionLocalMap l2 = gapComposer3.l();
                            Modifier c3 = ComposedModifierKt.c(gapComposer3, h3);
                            ComposeUiNode.b.getClass();
                            gapComposer3.Z();
                            if (gapComposer3.S) {
                                gapComposer3.k(function0);
                            } else {
                                gapComposer3.j0();
                            }
                            Updater.c(gapComposer3, d2, e6Var4);
                            Updater.c(gapComposer3, l2, e6Var3);
                            Updater.c(gapComposer3, Integer.valueOf(hashCode2), e6Var2);
                            Updater.b(gapComposer3);
                            Updater.c(gapComposer3, c3, e6Var);
                            Modifier e = PaddingKt.e(companion, 64.0f, 48.0f);
                            ImageVector a = HelpOutlineKt.a();
                            NuancedPermissionState nuancedPermissionState = c;
                            boolean h4 = gapComposer3.h(nuancedPermissionState);
                            Object K5 = gapComposer3.K();
                            if (h4 || K5 == obj6) {
                                K5 = new l3(nuancedPermissionState, 0);
                                gapComposer3.g0(K5);
                            }
                            BlankStateLockupKt.a(e, a, "Can't show audio files", "Blip doesn't have permission to show the audio files on your phone", "Allow", null, (Function0) K5, gapComposer3, 28038, 32);
                            gapComposer3.p(true);
                            gapComposer3.p(false);
                        } else if (obj3 instanceof ListState.Loaded) {
                            GapComposer gapComposer4 = (GapComposer) composer2;
                            gapComposer4.W(-1985461040);
                            if (((ListState.Loaded) obj3).a.isEmpty()) {
                                gapComposer4.W(-1985475517);
                                Modifier h5 = PaddingKt.h(companion, 0.0f, 0.0f, 0.0f, f2, 7);
                                MeasurePolicy d3 = BoxKt.d(biasAlignment, false);
                                int hashCode3 = Long.hashCode(gapComposer4.T);
                                PersistentCompositionLocalMap l3 = gapComposer4.l();
                                Modifier c4 = ComposedModifierKt.c(gapComposer4, h5);
                                ComposeUiNode.b.getClass();
                                gapComposer4.Z();
                                if (gapComposer4.S) {
                                    gapComposer4.k(function0);
                                } else {
                                    gapComposer4.j0();
                                }
                                Updater.c(gapComposer4, d3, e6Var4);
                                Updater.c(gapComposer4, l3, e6Var3);
                                Updater.c(gapComposer4, Integer.valueOf(hashCode3), e6Var2);
                                Updater.b(gapComposer4);
                                Updater.c(gapComposer4, c4, e6Var);
                                BlankStateLockupKt.a(PaddingKt.e(companion, 64.0f, 48.0f), HelpOutlineKt.a(), "Nothing to display", "No audio files found on this phone", null, null, null, gapComposer4, 3462, 112);
                                gapComposer4.p(true);
                                gapComposer4.p(false);
                            } else {
                                gapComposer4.W(-1984892562);
                                Modifier c5 = SizeKt.c(companion, 1.0f);
                                PaddingValuesImpl paddingValuesImpl = new PaddingValuesImpl(8.0f, 8.0f, 8.0f, f2 + 8.0f);
                                boolean h6 = gapComposer4.h(obj3);
                                Function1 function12 = function1;
                                boolean f3 = h6 | gapComposer4.f(function12);
                                Object K6 = gapComposer4.K();
                                if (f3 || K6 == obj6) {
                                    K6 = new p2(obj3, function12, absoluteSmoothCornerShape2, 1);
                                    gapComposer4.g0(K6);
                                }
                                LazyDslKt.a(6, 506, null, null, null, paddingValuesImpl, null, gapComposer4, null, c5, (Function1) K6, false);
                                gapComposer4.p(false);
                            }
                            gapComposer4.p(false);
                        } else {
                            GapComposer gapComposer5 = (GapComposer) composer2;
                            gapComposer5.W(-1982919846);
                            gapComposer5.p(false);
                        }
                    }
                    return Unit.a;
                }
            }, gapComposer), gapComposer, ((i7 << 3) & 112) | 1597824, 40);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new k3(modifier, f, function1, i, 0);
        }
    }

    public static final void b(NavResultWriter navResultWriter, Composer composer, int i) {
        int i2;
        boolean z;
        navResultWriter.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1775792050);
        if (gapComposer.f(navResultWriter)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i;
        if ((i3 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            NavHostController navHostController = (NavHostController) gapComposer.j(NavigationRootKt.a);
            ScreenLockupKt.b(0L, ComposableLambdaKt.b(961797230, new g3(navHostController, 0), gapComposer), ComposableLambdaKt.b(1435316173, new a0(4, navResultWriter, navHostController), gapComposer), gapComposer, 432, 1);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new h3(navResultWriter, i);
        }
    }
}
