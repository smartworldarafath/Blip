package net.blip.android.ui.list;

import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.RippleKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.a3;
import defpackage.n;
import defpackage.z6;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.DividerKt;
import net.blip.android.ui.list.ListRowKt;
import net.blip.shared.ListRowBasicLockupKt;
import net.blip.shared.OutsetParentKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListRowKt {
    public static final void a(int i, Composer composer) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(984626536);
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            DividerKt.a(OutsetParentKt.a(Modifier.Companion.b, 8.0f), gapComposer, 0, 0);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z6(i, 11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x014a  */
    /* JADX WARN: Removed duplicated region for block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(Modifier modifier, Function2 function2, Function2 function22, MutableInteractionSource mutableInteractionSource, Function0 function0, Function0 function02, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        Function2 function23;
        int i5;
        int i6;
        int i7;
        Function0 function03;
        int i8;
        boolean z;
        Function2 function24;
        MutableInteractionSource mutableInteractionSource2;
        Modifier modifier3;
        Function2 function25;
        Function0 function04;
        RecomposeScopeImpl r;
        Modifier modifier4;
        Function2 function26;
        Function0 function05;
        boolean z2;
        Function0 function06;
        int i9;
        int i10;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-91868952);
        int i11 = i2 & 1;
        if (i11 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            if (gapComposer.f(modifier2)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i12 = i2 & 2;
        if (i12 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            function23 = function2;
            if (gapComposer.h(function23)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i3 |= i5;
            i6 = i3 | 3456;
            if ((i & 24576) == 0) {
                if (gapComposer.h(function0)) {
                    i10 = 16384;
                } else {
                    i10 = 8192;
                }
                i6 |= i10;
            }
            i7 = i2 & 32;
            if (i7 == 0) {
                i6 |= 196608;
            } else if ((196608 & i) == 0) {
                function03 = function02;
                if (gapComposer.h(function03)) {
                    i8 = 131072;
                } else {
                    i8 = 65536;
                }
                i6 |= i8;
                if ((1572864 & i) == 0) {
                    if (gapComposer.h(composableLambdaImpl)) {
                        i9 = 1048576;
                    } else {
                        i9 = 524288;
                    }
                    i6 |= i9;
                }
                if ((599187 & i6) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposer.N(i6 & 1, z)) {
                    if (i11 != 0) {
                        modifier4 = Modifier.Companion.b;
                    } else {
                        modifier4 = modifier2;
                    }
                    if (i12 != 0) {
                        function26 = ComposableSingletons$ListRowKt.a;
                    } else {
                        function26 = function23;
                    }
                    Object K = gapComposer.K();
                    Object obj = Composer.Companion.a;
                    if (K == obj) {
                        K = InteractionSourceKt.a();
                        gapComposer.g0(K);
                    }
                    MutableInteractionSource mutableInteractionSource3 = (MutableInteractionSource) K;
                    if (i7 != 0) {
                        function05 = null;
                    } else {
                        function05 = function03;
                    }
                    Modifier a = ClipKt.a(modifier4, RoundedCornerShapeKt.b(16.0f));
                    if (function0 != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    IndicationNodeFactory a2 = RippleKt.a(2, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).o, true);
                    if (function0 == null) {
                        gapComposer.W(-973085032);
                        Object K2 = gapComposer.K();
                        if (K2 == obj) {
                            K2 = new n(19);
                            gapComposer.g0(K2);
                        }
                        gapComposer.p(false);
                        function06 = (Function0) K2;
                    } else {
                        gapComposer.W(1908272469);
                        gapComposer.p(false);
                        function06 = function0;
                    }
                    int i13 = i6 << 3;
                    ComposableLambdaImpl composableLambdaImpl2 = ComposableSingletons$ListRowKt.b;
                    ListRowBasicLockupKt.a(PaddingKt.d(ClickableKt.c(a, mutableInteractionSource3, a2, z2, function05, function06, 440), 12.0f), function26, composableLambdaImpl2, composableLambdaImpl, gapComposer, (i13 & 7168) | (i13 & 896) | 48 | (57344 & (i6 >> 6)));
                    modifier3 = modifier4;
                    function25 = function26;
                    function24 = composableLambdaImpl2;
                    mutableInteractionSource2 = mutableInteractionSource3;
                    function04 = function05;
                } else {
                    gapComposer.Q();
                    function24 = function22;
                    mutableInteractionSource2 = mutableInteractionSource;
                    modifier3 = modifier2;
                    function25 = function23;
                    function04 = function03;
                }
                r = gapComposer.r();
                if (r != null) {
                    r.d = new a3(modifier3, function25, function24, mutableInteractionSource2, function0, function04, composableLambdaImpl, i, i2, 2);
                    return;
                }
                return;
            }
            function03 = function02;
            if ((1572864 & i) == 0) {
            }
            if ((599187 & i6) != 599186) {
            }
            if (gapComposer.N(i6 & 1, z)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        function23 = function2;
        i6 = i3 | 3456;
        if ((i & 24576) == 0) {
        }
        i7 = i2 & 32;
        if (i7 == 0) {
        }
        function03 = function02;
        if ((1572864 & i) == 0) {
        }
        if ((599187 & i6) != 599186) {
        }
        if (gapComposer.N(i6 & 1, z)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x006d  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x019e  */
    /* JADX WARN: Removed duplicated region for block: B:45:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0193  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void c(Modifier modifier, final String str, String str2, long j, Composer composer, final int i, final int i2) {
        final String str3;
        int i3;
        final long j2;
        boolean z;
        final Modifier modifier2;
        RecomposeScopeImpl r;
        String str4;
        int i4;
        long j3;
        Modifier modifier3;
        String str5;
        int i5;
        int i6;
        str.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1858677768);
        int i7 = i | 6;
        if ((i & 48) == 0) {
            if (gapComposer.f(str)) {
                i6 = 32;
            } else {
                i6 = 16;
            }
            i7 |= i6;
        }
        int i8 = i2 & 4;
        if (i8 != 0) {
            i7 |= 384;
        } else if ((i & 384) == 0) {
            str3 = str2;
            if (gapComposer.f(str3)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i7 |= i3;
            if ((i & 3072) != 0) {
                if ((i2 & 8) == 0) {
                    j2 = j;
                    if (gapComposer.e(j2)) {
                        i5 = 2048;
                        i7 |= i5;
                    }
                } else {
                    j2 = j;
                }
                i5 = 1024;
                i7 |= i5;
            } else {
                j2 = j;
            }
            if ((i7 & 1171) == 1170) {
                z = true;
            } else {
                z = false;
            }
            if (!gapComposer.N(i7 & 1, z)) {
                gapComposer.S();
                if ((i & 1) != 0 && !gapComposer.x()) {
                    gapComposer.Q();
                    if ((i2 & 8) != 0) {
                        i7 &= -7169;
                    }
                    str4 = str3;
                    j3 = j2;
                    i4 = i7;
                    modifier3 = modifier;
                } else {
                    if (i8 != 0) {
                        str4 = null;
                    } else {
                        str4 = str3;
                    }
                    int i9 = i2 & 8;
                    Modifier.Companion companion = Modifier.Companion.b;
                    if (i9 != 0) {
                        j3 = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).d;
                        i4 = i7 & (-7169);
                    } else {
                        i4 = i7;
                        j3 = j2;
                    }
                    modifier3 = companion;
                }
                gapComposer.q();
                ColumnMeasurePolicy a = ColumnKt.a(Arrangement.e(1.0f), Alignment.Companion.m, gapComposer, 6);
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
                DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
                long j4 = j3;
                PlatformTextKt.c(str, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, j3, TextUnitKt.d(16), FontWeight.t, 0L, 0L, null, LineBreak.c, 14680056), 2, false, 1, 0, null, gapComposer, ((i4 >> 3) & 14) | 1597440, 426);
                if (str4 == null) {
                    gapComposer.W(1166058426);
                    gapComposer.p(false);
                    str5 = str4;
                } else {
                    gapComposer.W(1166058427);
                    str5 = str4;
                    PlatformTextKt.c(str5, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).e, 0L, null, 0L, 0L, null, 0, 16777214), 0, false, 0, 0, null, gapComposer, (i4 >> 6) & 14, 506);
                    gapComposer.p(false);
                }
                gapComposer.p(true);
                modifier2 = modifier3;
                str3 = str5;
                j2 = j4;
            } else {
                gapComposer.Q();
                modifier2 = modifier;
            }
            r = gapComposer.r();
            if (r == null) {
                r.d = new Function2() { // from class: pa
                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj, Object obj2) {
                        ((Integer) obj2).getClass();
                        ListRowKt.c(Modifier.this, str, str3, j2, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                        return Unit.a;
                    }
                };
                return;
            }
            return;
        }
        str3 = str2;
        if ((i & 3072) != 0) {
        }
        if ((i7 & 1171) == 1170) {
        }
        if (!gapComposer.N(i7 & 1, z)) {
        }
        r = gapComposer.r();
        if (r == null) {
        }
    }
}
