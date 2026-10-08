package net.blip.android.ui.home;

import android.content.Context;
import androidx.compose.material.AndroidAlertDialog_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.cd;
import defpackage.r7;
import java.util.Arrays;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.home.TransferCancellationDialogKt;
import net.blip.libblip.Core;
import net.blip.libblip.Transfer_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.PlatformTextKt;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferCancellationDialogKt {
    public static final void a(final MutableState mutableState, Composer composer, final int i) {
        int i2;
        boolean z;
        GapComposer gapComposer;
        boolean z2;
        int i3;
        mutableState.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(-1453079905);
        final int i4 = 2;
        if ((i & 6) == 0) {
            if (gapComposer2.f(mutableState)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i2 = i3 | i;
        } else {
            i2 = i;
        }
        final int i5 = 0;
        final int i6 = 1;
        if ((i2 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer2.N(i2 & 1, z)) {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ProvideSharedCompositionLocalsKt.d;
            defpackage.c cVar = ((Core) gapComposer2.j(dynamicProvidableCompositionLocal)).b;
            State b = ProvideSharedCompositionLocalsKt.b(dynamicProvidableCompositionLocal, gapComposer2);
            Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
            String str = (String) mutableState.getValue();
            if (str == null) {
                RecomposeScopeImpl r = gapComposer2.r();
                if (r != null) {
                    r.d = new Function2() { // from class: mh
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            int i7 = i5;
                            Unit unit = Unit.a;
                            int i8 = i;
                            MutableState mutableState2 = mutableState;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).intValue();
                            switch (i7) {
                                case 0:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                case 1:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                default:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                            }
                        }
                    };
                    return;
                }
                return;
            }
            final Transfer transfer = (Transfer) b.B.get(str);
            if (transfer == null) {
                RecomposeScopeImpl r2 = gapComposer2.r();
                if (r2 != null) {
                    r2.d = new Function2() { // from class: mh
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            int i7 = i6;
                            Unit unit = Unit.a;
                            int i8 = i;
                            MutableState mutableState2 = mutableState;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).intValue();
                            switch (i7) {
                                case 0:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                case 1:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                default:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                            }
                        }
                    };
                    return;
                }
                return;
            }
            if (!Transfer_DerivedKt.c(transfer)) {
                mutableState.setValue(null);
                RecomposeScopeImpl r3 = gapComposer2.r();
                if (r3 != null) {
                    r3.d = new Function2() { // from class: mh
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            int i7 = i4;
                            Unit unit = Unit.a;
                            int i8 = i;
                            MutableState mutableState2 = mutableState;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).intValue();
                            switch (i7) {
                                case 0:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                case 1:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                                default:
                                    TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                                    return unit;
                            }
                        }
                    };
                    return;
                }
                return;
            }
            if ((i2 & 14) == 4) {
                z2 = true;
            } else {
                z2 = false;
            }
            Object K = gapComposer2.K();
            if (z2 || K == Composer.Companion.a) {
                K = new cd(mutableState, 25);
                gapComposer2.g0(K);
            }
            gapComposer = gapComposer2;
            AndroidAlertDialog_androidKt.b((Function0) K, ComposableLambdaKt.b(-1965949209, new r7(transfer, cVar, str, mutableState, context, 7), gapComposer2), null, ComposableLambdaKt.b(1784145513, new Function2() { // from class: nh
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i7 = i5;
                    Unit unit = Unit.a;
                    boolean z3 = false;
                    Transfer transfer2 = transfer;
                    switch (i7) {
                        case 0:
                            Composer composer2 = (Composer) obj;
                            int intValue = ((Integer) obj2).intValue();
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (gapComposer3.N(intValue & 1, z3)) {
                                String str2 = Strings.a;
                                PlatformTextKt.c(StringsKt.e(transfer2), null, TextStyle.a(((AndroidTextStyles) gapComposer3.j(AndroidTextStylesKt.a)).a, 0L, TextUnitKt.d(18), null, 0L, 0L, null, 0, 16777213), 0, false, 0, 0, null, gapComposer3, 0, 506);
                            } else {
                                gapComposer3.Q();
                            }
                            return unit;
                        default:
                            Composer composer3 = (Composer) obj;
                            int intValue2 = ((Integer) obj2).intValue();
                            if ((intValue2 & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer4 = (GapComposer) composer3;
                            if (gapComposer4.N(intValue2 & 1, z3)) {
                                PlatformTextKt.c(q.i("Transferring, ", String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(Transfer_DerivedKt.a(transfer2) * 100.0f)}, 1)), "% complete"), null, TextStyle.a(((AndroidTextStyles) gapComposer4.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer4.j(AndroidColorsKt.a)).e, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer4, 0, 506);
                            } else {
                                gapComposer4.Q();
                            }
                            return unit;
                    }
                }
            }, gapComposer2), ComposableLambdaKt.b(1511709226, new Function2() { // from class: nh
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i7 = i6;
                    Unit unit = Unit.a;
                    boolean z3 = false;
                    Transfer transfer2 = transfer;
                    switch (i7) {
                        case 0:
                            Composer composer2 = (Composer) obj;
                            int intValue = ((Integer) obj2).intValue();
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer3 = (GapComposer) composer2;
                            if (gapComposer3.N(intValue & 1, z3)) {
                                String str2 = Strings.a;
                                PlatformTextKt.c(StringsKt.e(transfer2), null, TextStyle.a(((AndroidTextStyles) gapComposer3.j(AndroidTextStylesKt.a)).a, 0L, TextUnitKt.d(18), null, 0L, 0L, null, 0, 16777213), 0, false, 0, 0, null, gapComposer3, 0, 506);
                            } else {
                                gapComposer3.Q();
                            }
                            return unit;
                        default:
                            Composer composer3 = (Composer) obj;
                            int intValue2 = ((Integer) obj2).intValue();
                            if ((intValue2 & 3) != 2) {
                                z3 = true;
                            }
                            GapComposer gapComposer4 = (GapComposer) composer3;
                            if (gapComposer4.N(intValue2 & 1, z3)) {
                                PlatformTextKt.c(q.i("Transferring, ", String.format("%.1f", Arrays.copyOf(new Object[]{Float.valueOf(Transfer_DerivedKt.a(transfer2) * 100.0f)}, 1)), "% complete"), null, TextStyle.a(((AndroidTextStyles) gapComposer4.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer4.j(AndroidColorsKt.a)).e, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer4, 0, 506);
                            } else {
                                gapComposer4.Q();
                            }
                            return unit;
                    }
                }
            }, gapComposer2), null, 0L, 0L, null, gapComposer, 27696, 484);
        } else {
            gapComposer = gapComposer2;
            gapComposer.Q();
        }
        RecomposeScopeImpl r4 = gapComposer.r();
        if (r4 != null) {
            final int i7 = 3;
            r4.d = new Function2() { // from class: mh
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i72 = i7;
                    Unit unit = Unit.a;
                    int i8 = i;
                    MutableState mutableState2 = mutableState;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).intValue();
                    switch (i72) {
                        case 0:
                            TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                            return unit;
                        case 1:
                            TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                            return unit;
                        case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                            return unit;
                        default:
                            TransferCancellationDialogKt.a(mutableState2, composer2, RecomposeScopeImplKt.a(i8 | 1));
                            return unit;
                    }
                }
            };
        }
    }
}
