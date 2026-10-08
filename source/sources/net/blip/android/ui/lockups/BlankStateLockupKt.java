package net.blip.android.ui.lockups;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.a3;
import defpackage.e6;
import defpackage.n;
import defpackage.q;
import defpackage.x9;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.TextButtonKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BlankStateLockupKt {
    /* JADX WARN: Removed duplicated region for block: B:13:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00cd  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x030e  */
    /* JADX WARN: Removed duplicated region for block: B:64:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x02ff  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0065  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(Modifier modifier, ImageVector imageVector, String str, String str2, String str3, Function2 function2, Function0 function0, Composer composer, int i, int i2) {
        Modifier modifier2;
        int i3;
        int i4;
        ImageVector imageVector2;
        int i5;
        int i6;
        String str4;
        int i7;
        int i8;
        String str5;
        int i9;
        int i10;
        Function2 function22;
        int i11;
        int i12;
        Function0 function02;
        int i13;
        int i14;
        boolean z;
        GapComposer gapComposer;
        String str6;
        ImageVector imageVector3;
        String str7;
        RecomposeScopeImpl r;
        Modifier modifier3;
        String str8;
        String str9;
        Function0 function03;
        Function2 function23;
        e6 e6Var;
        Modifier modifier4;
        ImageVector imageVector4;
        String str10;
        String str11;
        boolean z2;
        GapComposer gapComposer2;
        GapComposer gapComposer3 = (GapComposer) composer;
        gapComposer3.X(-1654628769);
        int i15 = i2 & 1;
        if (i15 != 0) {
            i3 = i | 6;
            modifier2 = modifier;
        } else if ((i & 6) == 0) {
            modifier2 = modifier;
            if (gapComposer3.f(modifier2)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            modifier2 = modifier;
            i3 = i;
        }
        int i16 = i2 & 2;
        if (i16 != 0) {
            i6 = i3 | 48;
            imageVector2 = imageVector;
        } else {
            imageVector2 = imageVector;
            if (gapComposer3.f(imageVector2)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i6 = i3 | i5;
        }
        int i17 = i2 & 8;
        if (i17 != 0) {
            i6 |= 3072;
        } else if ((i & 3072) == 0) {
            str4 = str2;
            if (gapComposer3.f(str4)) {
                i7 = 2048;
            } else {
                i7 = 1024;
            }
            i6 |= i7;
            i8 = i2 & 16;
            if (i8 == 0) {
                i6 |= 24576;
            } else if ((i & 24576) == 0) {
                str5 = str3;
                if (gapComposer3.f(str5)) {
                    i9 = 16384;
                } else {
                    i9 = 8192;
                }
                i6 |= i9;
                i10 = i2 & 32;
                if (i10 != 0) {
                    i6 |= 196608;
                } else if ((196608 & i) == 0) {
                    function22 = function2;
                    if (gapComposer3.h(function22)) {
                        i11 = 131072;
                    } else {
                        i11 = 65536;
                    }
                    i6 |= i11;
                    i12 = i2 & 64;
                    if (i12 == 0) {
                        i6 |= 1572864;
                    } else if ((1572864 & i) == 0) {
                        function02 = function0;
                        if (gapComposer3.h(function02)) {
                            i13 = 1048576;
                        } else {
                            i13 = 524288;
                        }
                        i6 |= i13;
                        i14 = i6;
                        if ((i14 & 599187) != 599186) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (gapComposer3.N(i14 & 1, z)) {
                            Modifier.Companion companion = Modifier.Companion.b;
                            if (i15 != 0) {
                                modifier3 = companion;
                            } else {
                                modifier3 = modifier2;
                            }
                            if (i16 != 0) {
                                imageVector2 = null;
                            }
                            if (i17 != 0) {
                                str8 = null;
                            } else {
                                str8 = str4;
                            }
                            if (i8 != 0) {
                                str9 = null;
                            } else {
                                str9 = str5;
                            }
                            if (i10 != 0) {
                                function22 = null;
                            }
                            if (i12 != 0) {
                                Object K = gapComposer3.K();
                                if (K == Composer.Companion.a) {
                                    K = new n(19);
                                    gapComposer3.g0(K);
                                }
                                function03 = (Function0) K;
                            } else {
                                function03 = function02;
                            }
                            Modifier c = SizeKt.c(modifier3, 1.0f);
                            ColumnMeasurePolicy a = ColumnKt.a(Arrangement.c, Alignment.Companion.n, gapComposer3, 54);
                            int hashCode = Long.hashCode(gapComposer3.T);
                            PersistentCompositionLocalMap l = gapComposer3.l();
                            Modifier c2 = ComposedModifierKt.c(gapComposer3, c);
                            ComposeUiNode.b.getClass();
                            gapComposer3.Z();
                            boolean z3 = gapComposer3.S;
                            x9 x9Var = LayoutNode.b0;
                            if (z3) {
                                gapComposer3.k(x9Var);
                            } else {
                                gapComposer3.j0();
                            }
                            e6 e6Var2 = ComposeUiNode.Companion.d;
                            Updater.c(gapComposer3, a, e6Var2);
                            e6 e6Var3 = ComposeUiNode.Companion.c;
                            Updater.c(gapComposer3, l, e6Var3);
                            Integer valueOf = Integer.valueOf(hashCode);
                            e6 e6Var4 = ComposeUiNode.Companion.e;
                            Updater.c(gapComposer3, valueOf, e6Var4);
                            Updater.b(gapComposer3);
                            e6 e6Var5 = ComposeUiNode.Companion.b;
                            Updater.c(gapComposer3, c2, e6Var5);
                            if (imageVector2 == null) {
                                gapComposer3.W(324510344);
                                gapComposer3.p(false);
                                modifier4 = modifier3;
                                imageVector4 = imageVector2;
                                function23 = function22;
                                e6Var = e6Var5;
                            } else {
                                gapComposer3.W(324510345);
                                function23 = function22;
                                Modifier modifier5 = modifier3;
                                ImageVector imageVector5 = imageVector2;
                                e6Var = e6Var5;
                                modifier4 = modifier5;
                                ImageKt.b(imageVector5, "", SizeKt.k(companion, 36.0f), ColorFilter.Companion.a(((AndroidColors) gapComposer3.j(AndroidColorsKt.a)).f), gapComposer3, ((i14 >> 3) & 14) | 432, 56);
                                imageVector4 = imageVector5;
                                SpacerKt.a(gapComposer3, SizeKt.k(companion, 14.0f));
                                gapComposer3.p(false);
                            }
                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
                            TextStyle textStyle = ((AndroidTextStyles) gapComposer3.j(dynamicProvidableCompositionLocal)).b;
                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = AndroidColorsKt.a;
                            long j = ((AndroidColors) gapComposer3.j(dynamicProvidableCompositionLocal2)).f;
                            long d = TextUnitKt.d(16);
                            FontWeight fontWeight = FontWeight.t;
                            long d2 = TextUnitKt.d(22);
                            int i18 = LineBreak.c;
                            TextStyle a2 = TextStyle.a(textStyle, j, d, fontWeight, 0L, d2, null, i18, 14516216);
                            e6 e6Var6 = e6Var;
                            Function2 function24 = function23;
                            PlatformTextKt.c(str, null, a2, 0, false, 0, 0, null, gapComposer3, 6, 506);
                            GapComposer gapComposer4 = gapComposer3;
                            SpacerKt.a(gapComposer4, SizeKt.k(companion, 4.0f));
                            if (str8 == null) {
                                gapComposer4.W(325279237);
                                gapComposer4.p(false);
                                str10 = str8;
                            } else {
                                gapComposer4.W(325279238);
                                TextStyle a3 = TextStyle.a(((AndroidTextStyles) gapComposer4.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer4.j(dynamicProvidableCompositionLocal2)).f, TextUnitKt.d(14), null, 0L, TextUnitKt.d(22), null, i18, 14516220);
                                String str12 = str8;
                                PlatformTextKt.c(str12, null, a3, 0, false, 0, 0, null, gapComposer4, 0, 506);
                                str10 = str12;
                                gapComposer4 = gapComposer4;
                                gapComposer4.p(false);
                            }
                            if (str9 == null) {
                                gapComposer4.W(325694234);
                                gapComposer4.p(false);
                                function22 = function24;
                                gapComposer2 = gapComposer4;
                                str11 = str9;
                                function02 = function03;
                                z2 = true;
                            } else {
                                gapComposer4.W(325694235);
                                SpacerKt.a(gapComposer4, SizeKt.k(companion, 6.0f));
                                MeasurePolicy d3 = BoxKt.d(Alignment.Companion.a, false);
                                int hashCode2 = Long.hashCode(gapComposer4.T);
                                PersistentCompositionLocalMap l2 = gapComposer4.l();
                                Modifier c3 = ComposedModifierKt.c(gapComposer4, companion);
                                gapComposer4.Z();
                                if (gapComposer4.S) {
                                    gapComposer4.k(x9Var);
                                } else {
                                    gapComposer4.j0();
                                }
                                Updater.c(gapComposer4, d3, e6Var2);
                                Updater.c(gapComposer4, l2, e6Var3);
                                q.s(hashCode2, gapComposer4, e6Var4, gapComposer4);
                                Updater.c(gapComposer4, c3, e6Var6);
                                function22 = function24;
                                GapComposer gapComposer5 = gapComposer4;
                                str11 = str9;
                                Function0 function04 = function03;
                                z2 = true;
                                TextButtonKt.a(null, str11, TextUnitKt.d(14), function04, gapComposer5, ((i14 >> 9) & 7168) | 384);
                                function02 = function04;
                                gapComposer2 = gapComposer5;
                                if (function22 == null) {
                                    gapComposer2.W(12775232);
                                } else {
                                    gapComposer2.W(12775233);
                                    function22.n(gapComposer2, 0);
                                }
                                gapComposer2.p(false);
                                gapComposer2.p(true);
                                gapComposer2.p(false);
                            }
                            gapComposer2.p(z2);
                            str7 = str11;
                            gapComposer = gapComposer2;
                            str6 = str10;
                            modifier2 = modifier4;
                            imageVector3 = imageVector4;
                        } else {
                            gapComposer3.Q();
                            String str13 = str4;
                            gapComposer = gapComposer3;
                            str6 = str13;
                            imageVector3 = imageVector2;
                            str7 = str5;
                        }
                        Function2 function25 = function22;
                        Function0 function05 = function02;
                        r = gapComposer.r();
                        if (r != null) {
                            r.d = new a3(modifier2, imageVector3, str, str6, str7, function25, function05, i, i2, 1);
                            return;
                        }
                        return;
                    }
                    function02 = function0;
                    i14 = i6;
                    if ((i14 & 599187) != 599186) {
                    }
                    if (gapComposer3.N(i14 & 1, z)) {
                    }
                    Function2 function252 = function22;
                    Function0 function052 = function02;
                    r = gapComposer.r();
                    if (r != null) {
                    }
                }
                function22 = function2;
                i12 = i2 & 64;
                if (i12 == 0) {
                }
                function02 = function0;
                i14 = i6;
                if ((i14 & 599187) != 599186) {
                }
                if (gapComposer3.N(i14 & 1, z)) {
                }
                Function2 function2522 = function22;
                Function0 function0522 = function02;
                r = gapComposer.r();
                if (r != null) {
                }
            }
            str5 = str3;
            i10 = i2 & 32;
            if (i10 != 0) {
            }
            function22 = function2;
            i12 = i2 & 64;
            if (i12 == 0) {
            }
            function02 = function0;
            i14 = i6;
            if ((i14 & 599187) != 599186) {
            }
            if (gapComposer3.N(i14 & 1, z)) {
            }
            Function2 function25222 = function22;
            Function0 function05222 = function02;
            r = gapComposer.r();
            if (r != null) {
            }
        }
        str4 = str2;
        i8 = i2 & 16;
        if (i8 == 0) {
        }
        str5 = str3;
        i10 = i2 & 32;
        if (i10 != 0) {
        }
        function22 = function2;
        i12 = i2 & 64;
        if (i12 == 0) {
        }
        function02 = function0;
        i14 = i6;
        if ((i14 & 599187) != 599186) {
        }
        if (gapComposer3.N(i14 & 1, z)) {
        }
        Function2 function252222 = function22;
        Function0 function052222 = function02;
        r = gapComposer.r();
        if (r != null) {
        }
    }
}
