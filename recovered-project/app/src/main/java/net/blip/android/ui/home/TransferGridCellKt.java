package net.blip.android.ui.home;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.AspectRatioKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.compose.material.ProgressIndicatorDefaults;
import androidx.compose.material.ProgressIndicatorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.ZIndexModifierKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import bsarchive.Metadata;
import defpackage.e6;
import defpackage.q;
import defpackage.u;
import defpackage.x9;
import java.util.Map;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.transfer.TransferThumbnailStackKt;
import net.blip.libblip.Peer;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.AvatarKt;
import net.blip.shared.PlatformTextKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferGridCellKt {
    public static final void a(Modifier modifier, Transfer transfer, Peer peer, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        boolean z;
        boolean z2;
        String str;
        boolean z3;
        Transfer transfer2 = transfer;
        Transfer.Status status = transfer2.w;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1521761020);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i5 = i | i2;
        if (gapComposer.h(transfer2)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i6 = i5 | i3;
        if (gapComposer.h(peer)) {
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
            Modifier e = PaddingKt.e(modifier, 12.0f, 12.0f);
            BiasAlignment biasAlignment = Alignment.Companion.a;
            MeasurePolicy d = BoxKt.d(biasAlignment, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, e);
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
            Updater.c(gapComposer, d, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var2);
            Integer valueOf = Integer.valueOf(hashCode);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer, valueOf, e6Var3);
            Updater.b(gapComposer);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c, e6Var4);
            ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.n, gapComposer, 48);
            int hashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c2 = ComposedModifierKt.c(gapComposer, companion);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a, e6Var);
            Updater.c(gapComposer, l2, e6Var2);
            q.s(hashCode2, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c2, e6Var4);
            MeasurePolicy d2 = BoxKt.d(Alignment.Companion.h, false);
            int hashCode3 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l3 = gapComposer.l();
            Modifier c3 = ComposedModifierKt.c(gapComposer, companion);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d2, e6Var);
            Updater.c(gapComposer, l3, e6Var2);
            q.s(hashCode3, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c3, e6Var4);
            TransferThumbnailStackKt.a(AspectRatioKt.a(companion), transfer2, gapComposer, (i7 & 112) | 6);
            if (peer != null) {
                gapComposer.W(1147363034);
                Modifier k = SizeKt.k(OffsetKt.c(ZIndexModifierKt.a(companion, 1.0f), 14.0f, 1), 50.0f);
                MeasurePolicy d3 = BoxKt.d(Alignment.Companion.e, false);
                int hashCode4 = Long.hashCode(gapComposer.T);
                PersistentCompositionLocalMap l4 = gapComposer.l();
                Modifier c4 = ComposedModifierKt.c(gapComposer, k);
                gapComposer.Z();
                if (gapComposer.S) {
                    gapComposer.k(x9Var);
                } else {
                    gapComposer.j0();
                }
                Updater.c(gapComposer, d3, e6Var);
                Updater.c(gapComposer, l4, e6Var2);
                q.s(hashCode4, gapComposer, e6Var3, gapComposer);
                Updater.c(gapComposer, c4, e6Var4);
                AvatarKt.d(SizeKt.c(PaddingKt.d(companion, 5.0f), 1.0f), null, peer, null, gapComposer, (i7 & 896) | 6, 10);
                State b = AnimateAsStateKt.b(Transfer_DerivedKt.a(transfer), ProgressIndicatorDefaults.a, gapComposer, 3072, 20);
                if (Transfer_DerivedKt.c(transfer)) {
                    gapComposer.W(48861170);
                    Modifier c5 = SizeKt.c(companion, 1.0f);
                    MeasurePolicy d4 = BoxKt.d(biasAlignment, false);
                    int hashCode5 = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l5 = gapComposer.l();
                    Modifier c6 = ComposedModifierKt.c(gapComposer, c5);
                    gapComposer.Z();
                    if (gapComposer.S) {
                        gapComposer.k(x9Var);
                    } else {
                        gapComposer.j0();
                    }
                    Updater.c(gapComposer, d4, e6Var);
                    Updater.c(gapComposer, l5, e6Var2);
                    q.s(hashCode5, gapComposer, e6Var3, gapComposer);
                    Updater.c(gapComposer, c6, e6Var4);
                    if (status == Transfer.Status.r) {
                        gapComposer.W(-1757535838);
                        gapComposer = gapComposer;
                        ProgressIndicatorKt.a(((Number) b.getValue()).floatValue(), SizeKt.c(companion, 1.0f), 0L, 3.0f, 0L, 1, gapComposer, 3120);
                        z3 = false;
                        gapComposer.p(false);
                    } else {
                        gapComposer.W(-1757170441);
                        ProgressIndicatorKt.b(SizeKt.c(companion, 1.0f), 0L, 3.0f, 0L, 1, gapComposer, 390, 10);
                        gapComposer = gapComposer;
                        z3 = false;
                        gapComposer.p(false);
                    }
                    z2 = true;
                    gapComposer.p(true);
                    gapComposer.p(z3);
                } else {
                    gapComposer = gapComposer;
                    z2 = true;
                    z3 = false;
                    gapComposer.W(49775081);
                    gapComposer.p(false);
                }
                gapComposer.p(z2);
                gapComposer.p(z3);
            } else {
                z2 = true;
                gapComposer.W(1149037096);
                gapComposer.p(false);
            }
            gapComposer.p(z2);
            SpacerKt.a(gapComposer, SizeKt.e(companion, 14.0f));
            String str2 = Strings.a;
            String e2 = StringsKt.e(transfer);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidTextStylesKt.a;
            TextStyle textStyle = ((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b;
            long d5 = TextUnitKt.d(16);
            FontWeight fontWeight = FontWeight.t;
            long b2 = TextUnitKt.b(1.3d);
            int i8 = LineBreak.c;
            PlatformTextKt.c(e2, null, TextStyle.a(textStyle, 0L, d5, fontWeight, 0L, b2, null, i8, 14516217), 2, false, 2, 0, null, gapComposer, 1597440, 426);
            transfer2 = transfer;
            Transfer.Direction direction = transfer2.v;
            if (peer == null || (str = peer.b()) == null) {
                str = "unknown peer";
            }
            String str3 = null;
            Map map = null;
            switch (status.ordinal()) {
                case 1:
                    if (peer == null) {
                        str3 = "Select a device or person";
                        break;
                    } else {
                        Metadata metadata = transfer2.p;
                        if (metadata != null) {
                            map = metadata.m;
                        }
                        if (map != null && !map.isEmpty()) {
                            str3 = "Ready to send to ".concat(str);
                            break;
                        } else {
                            str3 = "Add items to send";
                            break;
                        }
                    }
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    str3 = "Processing content…";
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    if (direction == Transfer.Direction.o) {
                        str3 = "Waiting for ".concat(str);
                        break;
                    } else {
                        str3 = "From ".concat(str);
                        break;
                    }
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    if (direction == Transfer.Direction.o) {
                        str3 = "Sending to ".concat(str);
                        break;
                    } else {
                        str3 = "From ".concat(str);
                        break;
                    }
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    if (direction == Transfer.Direction.o) {
                        str3 = "Sent to ".concat(str);
                        break;
                    } else {
                        str3 = "From ".concat(str);
                        break;
                    }
                case KeyModifiers.a /* 9 */:
                    str3 = StringsKt.b(transfer, peer);
                    break;
            }
            String str4 = str3;
            if (str4 == null) {
                gapComposer.W(-945899213);
                gapComposer.p(false);
            } else {
                gapComposer.W(-945899212);
                SpacerKt.a(gapComposer, SizeKt.e(companion, 3.0f));
                PlatformTextKt.c(str4, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(dynamicProvidableCompositionLocal)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).e, TextUnitKt.d(12), FontWeight.q, 0L, 0L, null, i8, 14647288), 2, false, 2, 0, null, gapComposer, 1597440, 426);
                gapComposer.p(false);
            }
            gapComposer.p(true);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new u(modifier, transfer2, peer, i, 16);
        }
    }
}
