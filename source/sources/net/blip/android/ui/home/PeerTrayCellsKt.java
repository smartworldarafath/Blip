package net.blip.android.ui.home;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.interaction.PressInteractionKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.e6;
import defpackage.gd;
import defpackage.i2;
import defpackage.n;
import defpackage.q;
import defpackage.r4;
import defpackage.r7;
import defpackage.v7;
import defpackage.wc;
import defpackage.z6;
import defpackage.zc;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.home.PeerTrayCellsKt;
import net.blip.libblip.Peer;
import net.blip.shared.Paintable;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PeerTrayCellsKt {
    public static final void a(Modifier modifier, final boolean z, boolean z2, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        int i6;
        int i7;
        boolean z4;
        float f;
        float f2;
        boolean z5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1739909547);
        int i8 = i2 & 1;
        if (i8 != 0) {
            i4 = i | 6;
            modifier2 = modifier;
        } else {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i4 = i | i3;
        }
        if (gapComposer.g(z)) {
            i5 = 32;
        } else {
            i5 = 16;
        }
        int i9 = i4 | i5;
        int i10 = i2 & 4;
        if (i10 != 0) {
            i7 = i9 | 384;
            z3 = z2;
        } else {
            z3 = z2;
            if (gapComposer.g(z3)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i7 = i9 | i6;
        }
        if ((i7 & 1171) != 1170) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (gapComposer.N(i7 & 1, z4)) {
            Modifier.Companion companion = Modifier.Companion.b;
            if (i8 != 0) {
                modifier2 = companion;
            }
            if (i10 != 0) {
                z3 = false;
            }
            Pair pair = new Pair(Boolean.valueOf(z), Boolean.valueOf(z3));
            Boolean bool = Boolean.FALSE;
            if (pair.equals(new Pair(bool, bool))) {
                f = 0.0f;
            } else if (pair.equals(new Pair(Boolean.TRUE, bool))) {
                f = 0.2f;
            } else {
                f = 0.35f;
            }
            final State b = AnimateAsStateKt.b(f, AnimationSpecKt.c(200, 0, EasingKt.c, 2), gapComposer, 3072, 20);
            if (new Pair(Boolean.valueOf(z), Boolean.valueOf(z3)).equals(new Pair(bool, bool))) {
                f2 = 1.0f;
            } else {
                f2 = 1.4f;
            }
            final State b2 = AnimateAsStateKt.b(f2, AnimationSpecKt.c(200, 0, EasingKt.a, 2), gapComposer, 3072, 20);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(Boolean.valueOf(z));
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Boolean valueOf = Boolean.valueOf(z);
            if ((i7 & 112) == 32) {
                z5 = true;
            } else {
                z5 = false;
            }
            Object K2 = gapComposer.K();
            if (z5 || K2 == composer$Companion$Empty$1) {
                K2 = new PeerTrayCellsKt$CircularPressedState$1$1(z, mutableState, null);
                gapComposer.g0(K2);
            }
            EffectsKt.e(gapComposer, valueOf, (Function2) K2);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier2);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            final long j = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).b;
            Modifier a = AspectRatioKt.a(companion);
            boolean f3 = gapComposer.f(b) | gapComposer.f(b2) | gapComposer.e(j);
            Object K3 = gapComposer.K();
            if (f3 || K3 == composer$Companion$Empty$1) {
                K3 = new Function1() { // from class: hd
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        DrawScope drawScope = (DrawScope) obj;
                        drawScope.getClass();
                        float floatValue = ((Number) b.getValue()).floatValue();
                        DrawScope.J(drawScope, j, ((Number) b2.getValue()).floatValue() * Float.intBitsToFloat((int) (drawScope.i() >> 32)) * 0.5f, 0L, floatValue, 116);
                        return Unit.a;
                    }
                };
                gapComposer.g0(K3);
            }
            BoxKt.a(DrawModifierKt.b(a, (Function1) K3), gapComposer, 0);
            composableLambdaImpl.n(gapComposer, 6);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        final Modifier modifier3 = modifier2;
        final boolean z6 = z3;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2(z, z6, composableLambdaImpl, i, i2) { // from class: id
                public final /* synthetic */ boolean k;
                public final /* synthetic */ boolean l;
                public final /* synthetic */ ComposableLambdaImpl m;
                public final /* synthetic */ int n;

                {
                    this.n = i2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(3073);
                    PeerTrayCellsKt.a(Modifier.this, this.k, this.l, this.m, (Composer) obj, a2, this.n);
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:105:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0078  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x027c  */
    /* JADX WARN: Removed duplicated region for block: B:85:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:96:0x026b  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x007d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(Modifier modifier, final String str, Function1 function1, Function0 function0, Function0 function02, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        int i5;
        int i6;
        Function0 function03;
        int i7;
        int i8;
        Function0 function04;
        int i9;
        boolean z;
        final Modifier modifier3;
        GapComposer gapComposer;
        final Function0 function05;
        final Function0 function06;
        final Function1 function12;
        RecomposeScopeImpl r;
        Modifier modifier4;
        final Function1 function13;
        final Function0 function07;
        boolean z2;
        boolean z3;
        boolean z4;
        int i10;
        int i11;
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(2004558828);
        int i12 = i2 & 1;
        if (i12 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            if (gapComposer2.f(modifier2)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer2.f(str)) {
                i11 = 32;
            } else {
                i11 = 16;
            }
            i3 |= i11;
        }
        int i13 = i2 & 4;
        if (i13 != 0) {
            i3 |= 384;
        } else if ((i & 384) == 0) {
            if (gapComposer2.h(function1)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i3 |= i5;
            i6 = i2 & 8;
            if (i6 == 0) {
                i3 |= 3072;
            } else if ((i & 3072) == 0) {
                function03 = function0;
                if (gapComposer2.h(function03)) {
                    i7 = 2048;
                } else {
                    i7 = 1024;
                }
                i3 |= i7;
                i8 = i2 & 16;
                if (i8 != 0) {
                    i3 |= 24576;
                } else if ((i & 24576) == 0) {
                    function04 = function02;
                    if (gapComposer2.h(function04)) {
                        i9 = 16384;
                    } else {
                        i9 = 8192;
                    }
                    i3 |= i9;
                    if ((196608 & i) == 0) {
                        if (gapComposer2.h(composableLambdaImpl)) {
                            i10 = 131072;
                        } else {
                            i10 = 65536;
                        }
                        i3 |= i10;
                    }
                    if ((74899 & i3) == 74898) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!gapComposer2.N(i3 & 1, z)) {
                        Modifier.Companion companion = Modifier.Companion.b;
                        if (i12 != 0) {
                            modifier4 = companion;
                        } else {
                            modifier4 = modifier2;
                        }
                        Object obj = Composer.Companion.a;
                        if (i13 != 0) {
                            Object K = gapComposer2.K();
                            if (K == obj) {
                                K = new wc(1);
                                gapComposer2.g0(K);
                            }
                            function13 = (Function1) K;
                        } else {
                            function13 = function1;
                        }
                        if (i6 != 0) {
                            Object K2 = gapComposer2.K();
                            if (K2 == obj) {
                                K2 = new n(19);
                                gapComposer2.g0(K2);
                            }
                            function07 = (Function0) K2;
                        } else {
                            function07 = function03;
                        }
                        if (i8 != 0) {
                            Object K3 = gapComposer2.K();
                            if (K3 == obj) {
                                K3 = new n(19);
                                gapComposer2.g0(K3);
                            }
                            function04 = (Function0) K3;
                        }
                        Object K4 = gapComposer2.K();
                        if (K4 == obj) {
                            K4 = InteractionSourceKt.a();
                            gapComposer2.g0(K4);
                        }
                        MutableInteractionSource mutableInteractionSource = (MutableInteractionSource) K4;
                        MutableState a = PressInteractionKt.a(mutableInteractionSource, gapComposer2);
                        Boolean bool = (Boolean) a.getValue();
                        bool.getClass();
                        int i14 = i3 & 896;
                        if (i14 == 256) {
                            z2 = true;
                        } else {
                            z2 = false;
                        }
                        boolean f = z2 | gapComposer2.f(a);
                        Object K5 = gapComposer2.K();
                        if (f || K5 == obj) {
                            K5 = new PeerTrayCellsKt$PeerTrayBaseCell$4$1(function13, a, null);
                            gapComposer2.g0(K5);
                        }
                        EffectsKt.e(gapComposer2, bool, (Function2) K5);
                        Modifier h = PaddingKt.h(modifier4, 0.0f, 10.0f, 0.0f, 10.0f, 5);
                        Modifier modifier5 = modifier4;
                        if (i14 == 256) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        if ((i3 & 7168) == 2048) {
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        boolean z5 = z3 | z4;
                        Object K6 = gapComposer2.K();
                        if (z5 || K6 == obj) {
                            K6 = new Function0() { // from class: net.blip.android.ui.home.g
                                @Override // kotlin.jvm.functions.Function0
                                public final Object a() {
                                    DefaultScheduler defaultScheduler = Dispatchers.a;
                                    BuildersKt.c(CoroutineScopeKt.a(MainDispatcherLoader.a), null, null, new PeerTrayCellsKt$PeerTrayBaseCell$5$1$1(function13, function07, null), 3);
                                    return Unit.a;
                                }
                            };
                            gapComposer2.g0(K6);
                        }
                        Function0 function08 = function04;
                        Modifier c = ClickableKt.c(h, mutableInteractionSource, null, false, function08, (Function0) K6, 444);
                        ColumnMeasurePolicy a2 = ColumnKt.a(Arrangement.b, Alignment.Companion.n, gapComposer2, 48);
                        int hashCode = Long.hashCode(gapComposer2.T);
                        PersistentCompositionLocalMap l = gapComposer2.l();
                        Modifier c2 = ComposedModifierKt.c(gapComposer2, c);
                        ComposeUiNode.b.getClass();
                        gapComposer2.Z();
                        boolean z6 = gapComposer2.S;
                        Function0 function09 = LayoutNode.b0;
                        if (z6) {
                            gapComposer2.k(function09);
                        } else {
                            gapComposer2.j0();
                        }
                        e6 e6Var = ComposeUiNode.Companion.d;
                        Updater.c(gapComposer2, a2, e6Var);
                        e6 e6Var2 = ComposeUiNode.Companion.c;
                        Updater.c(gapComposer2, l, e6Var2);
                        Integer valueOf = Integer.valueOf(hashCode);
                        e6 e6Var3 = ComposeUiNode.Companion.e;
                        Updater.c(gapComposer2, valueOf, e6Var3);
                        Updater.b(gapComposer2);
                        e6 e6Var4 = ComposeUiNode.Companion.b;
                        Updater.c(gapComposer2, c2, e6Var4);
                        Modifier h2 = PaddingKt.h(companion, 10.0f, 0.0f, 10.0f, 8.0f, 2);
                        MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                        int hashCode2 = Long.hashCode(gapComposer2.T);
                        PersistentCompositionLocalMap l2 = gapComposer2.l();
                        Modifier c3 = ComposedModifierKt.c(gapComposer2, h2);
                        gapComposer2.Z();
                        Function1 function14 = function13;
                        if (gapComposer2.S) {
                            gapComposer2.k(function09);
                        } else {
                            gapComposer2.j0();
                        }
                        Updater.c(gapComposer2, d, e6Var);
                        Updater.c(gapComposer2, l2, e6Var2);
                        q.s(hashCode2, gapComposer2, e6Var3, gapComposer2);
                        Updater.c(gapComposer2, c3, e6Var4);
                        composableLambdaImpl.n(gapComposer2, Integer.valueOf((i3 >> 15) & 14));
                        gapComposer2.p(true);
                        gapComposer = gapComposer2;
                        PlatformTextKt.c(str, null, TextStyle.a(((AndroidTextStyles) gapComposer2.j(AndroidTextStylesKt.a)).b, 0L, TextUnitKt.d(12), FontWeight.q, 0L, TextUnitKt.b(1.3d), null, LineBreak.c, 14516217), 2, false, 2, 0, null, gapComposer, ((i3 >> 3) & 14) | 1597440, 426);
                        gapComposer.p(true);
                        function05 = function07;
                        function12 = function14;
                        function06 = function08;
                        modifier3 = modifier5;
                    } else {
                        gapComposer2.Q();
                        modifier3 = modifier2;
                        gapComposer = gapComposer2;
                        function05 = function03;
                        function06 = function04;
                        function12 = function1;
                    }
                    r = gapComposer.r();
                    if (r == null) {
                        r.d = new Function2() { // from class: jd
                            @Override // kotlin.jvm.functions.Function2
                            public final Object n(Object obj2, Object obj3) {
                                ((Integer) obj3).getClass();
                                PeerTrayCellsKt.b(Modifier.this, str, function12, function05, function06, composableLambdaImpl, (Composer) obj2, RecomposeScopeImplKt.a(i | 1), i2);
                                return Unit.a;
                            }
                        };
                        return;
                    }
                    return;
                }
                function04 = function02;
                if ((196608 & i) == 0) {
                }
                if ((74899 & i3) == 74898) {
                }
                if (!gapComposer2.N(i3 & 1, z)) {
                }
                r = gapComposer.r();
                if (r == null) {
                }
            }
            function03 = function0;
            i8 = i2 & 16;
            if (i8 != 0) {
            }
            function04 = function02;
            if ((196608 & i) == 0) {
            }
            if ((74899 & i3) == 74898) {
            }
            if (!gapComposer2.N(i3 & 1, z)) {
            }
            r = gapComposer.r();
            if (r == null) {
            }
        }
        i6 = i2 & 8;
        if (i6 == 0) {
        }
        function03 = function0;
        i8 = i2 & 16;
        if (i8 != 0) {
        }
        function04 = function02;
        if ((196608 & i) == 0) {
        }
        if ((74899 & i3) == 74898) {
        }
        if (!gapComposer2.N(i3 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }

    public static final void c(Modifier modifier, Paintable paintable, ImageVector imageVector, String str, Function0 function0, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        Modifier modifier2;
        imageVector.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1891990976);
        int i4 = i | 6;
        if (gapComposer.f(paintable)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i5 = i4 | i2;
        if (gapComposer.h(function0)) {
            i3 = 16384;
        } else {
            i3 = 8192;
        }
        int i6 = i5 | i3;
        if ((i6 & 9235) != 9234) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i6 & 1, z)) {
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = new i2(mutableState, 11);
                gapComposer.g0(K2);
            }
            Modifier.Companion companion = Modifier.Companion.b;
            b(companion, str, (Function1) K2, function0, null, ComposableLambdaKt.b(959262627, new zc(mutableState, paintable), gapComposer), gapComposer, 197046 | ((i6 >> 3) & 7168), 16);
            modifier2 = companion;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r7(modifier2, paintable, imageVector, str, function0, i, 3);
        }
    }

    public static final void d(Peer peer, boolean z, Function0 function0, Function0 function02, Composer composer, int i) {
        int i2;
        boolean z2;
        Function0 function03;
        Function0 function04;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        peer.getClass();
        function0.getClass();
        function02.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-2102781666);
        int i8 = i & 6;
        Modifier.Companion companion = Modifier.Companion.b;
        if (i8 == 0) {
            if (gapComposer.f(companion)) {
                i7 = 4;
            } else {
                i7 = 2;
            }
            i2 = i7 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(peer)) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i2 |= i6;
        }
        if ((i & 384) == 0) {
            if (gapComposer.g(z)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i2 |= i5;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.h(function0)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i2 |= i4;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.h(function02)) {
                i3 = 16384;
            } else {
                i3 = 8192;
            }
            i2 |= i3;
        }
        if ((i2 & 9363) != 9362) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i2 & 1, z2)) {
            Object K = gapComposer.K();
            Object obj = Composer.Companion.a;
            if (K == obj) {
                K = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            String b = peer.b();
            Object K2 = gapComposer.K();
            if (K2 == obj) {
                K2 = new i2(mutableState, 12);
                gapComposer.g0(K2);
            }
            b(companion, b, (Function1) K2, function0, function02, ComposableLambdaKt.b(-1908178175, new v7(z, mutableState, peer), gapComposer), gapComposer, (i2 & 14) | 196992 | (i2 & 7168) | (i2 & 57344), 0);
            function04 = function0;
            function03 = function02;
        } else {
            function03 = function02;
            function04 = function0;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new gd(peer, z, function04, function03, i);
        }
    }

    public static final void e(Modifier modifier, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1542841823);
        int i2 = i | 6;
        if ((i2 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            b(null, "", null, null, null, ComposableLambdaKt.b(-1195992636, new z6(18), gapComposer), gapComposer, 196656, 29);
            modifier = Modifier.Companion.b;
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new r4(modifier, i, 3);
        }
    }
}
