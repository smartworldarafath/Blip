package net.blip.android.ui.home;

import android.content.Context;
import androidx.compose.material.AndroidAlertDialog_androidKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.a1;
import defpackage.cd;
import defpackage.d4;
import defpackage.r7;
import defpackage.w;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.home.TransferRemovalDialogKt;
import net.blip.libblip.Core;
import net.blip.libblip.frontend.State;
import net.blip.libblip.frontend.Transfer;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import net.blip.shared.Strings;
import net.blip.shared.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransferRemovalDialogKt {
    public static final void a(final MutableState mutableState, final ArrayList arrayList, Composer composer, final int i) {
        int i2;
        boolean z;
        RecomposeScopeImpl r;
        Function2 function2;
        mutableState.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1346245449);
        if (gapComposer.f(arrayList)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i3 = i2 | i;
        final int i4 = 1;
        if ((i3 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            if (!((Boolean) mutableState.getValue()).booleanValue()) {
                r = gapComposer.r();
                if (r != null) {
                    function2 = new Function2(mutableState, arrayList, i, i4) { // from class: sh
                        public final /* synthetic */ int j;
                        public final /* synthetic */ MutableState k;
                        public final /* synthetic */ ArrayList l;

                        {
                            this.j = i4;
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            int i5 = this.j;
                            Unit unit = Unit.a;
                            ArrayList arrayList2 = this.l;
                            MutableState mutableState2 = this.k;
                            Composer composer2 = (Composer) obj;
                            ((Integer) obj2).getClass();
                            switch (i5) {
                                case 0:
                                    TransferRemovalDialogKt.a(mutableState2, arrayList2, composer2, RecomposeScopeImplKt.a(7));
                                    return unit;
                                default:
                                    TransferRemovalDialogKt.a(mutableState2, arrayList2, composer2, RecomposeScopeImplKt.a(7));
                                    return unit;
                            }
                        }
                    };
                    r.d = function2;
                }
                return;
            }
            defpackage.c cVar = ((Core) gapComposer.j(ProvideSharedCompositionLocalsKt.d)).b;
            Context context = (Context) gapComposer.j(AndroidCompositionLocals_androidKt.b);
            MutableState k = SnapshotStateKt.k(arrayList, gapComposer);
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = new cd(mutableState, 27);
                gapComposer.g0(K);
            }
            AndroidAlertDialog_androidKt.b((Function0) K, ComposableLambdaKt.b(1962346351, new d4(k, cVar, mutableState, context), gapComposer), null, ComposableSingletons$TransferRemovalDialogKt.h, ComposableSingletons$TransferRemovalDialogKt.i, null, 0L, 0L, null, gapComposer, 27696, 484);
        } else {
            gapComposer.Q();
        }
        r = gapComposer.r();
        if (r != null) {
            final int i5 = 0;
            function2 = new Function2(mutableState, arrayList, i, i5) { // from class: sh
                public final /* synthetic */ int j;
                public final /* synthetic */ MutableState k;
                public final /* synthetic */ ArrayList l;

                {
                    this.j = i5;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    int i52 = this.j;
                    Unit unit = Unit.a;
                    ArrayList arrayList2 = this.l;
                    MutableState mutableState2 = this.k;
                    Composer composer2 = (Composer) obj;
                    ((Integer) obj2).getClass();
                    switch (i52) {
                        case 0:
                            TransferRemovalDialogKt.a(mutableState2, arrayList2, composer2, RecomposeScopeImplKt.a(7));
                            return unit;
                        default:
                            TransferRemovalDialogKt.a(mutableState2, arrayList2, composer2, RecomposeScopeImplKt.a(7));
                            return unit;
                    }
                }
            };
            r.d = function2;
        }
    }

    public static final void b(MutableState mutableState, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer;
        RecomposeScopeImpl r;
        a1 a1Var;
        mutableState.getClass();
        GapComposer gapComposer2 = (GapComposer) composer;
        gapComposer2.X(1138227865);
        if ((i & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer2.N(i & 1, z)) {
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ProvideSharedCompositionLocalsKt.d;
            defpackage.c cVar = ((Core) gapComposer2.j(dynamicProvidableCompositionLocal)).b;
            State b = ProvideSharedCompositionLocalsKt.b(dynamicProvidableCompositionLocal, gapComposer2);
            Context context = (Context) gapComposer2.j(AndroidCompositionLocals_androidKt.b);
            String str = (String) mutableState.getValue();
            if (str == null) {
                r = gapComposer2.r();
                if (r != null) {
                    a1Var = new a1(mutableState, i, 4);
                } else {
                    return;
                }
            } else {
                Transfer transfer = (Transfer) b.B.get(str);
                int i2 = 5;
                if (transfer == null) {
                    r = gapComposer2.r();
                    if (r != null) {
                        a1Var = new a1(mutableState, i, i2);
                    } else {
                        return;
                    }
                } else {
                    String str2 = Strings.a;
                    String e = StringsKt.e(transfer);
                    Object K = gapComposer2.K();
                    if (K == Composer.Companion.a) {
                        K = new cd(mutableState, 29);
                        gapComposer2.g0(K);
                    }
                    gapComposer = gapComposer2;
                    AndroidAlertDialog_androidKt.b((Function0) K, ComposableLambdaKt.b(-2091945759, new r7(cVar, str, mutableState, context, e, 8), gapComposer2), null, ComposableLambdaKt.b(-1603898653, new w(e, i2), gapComposer2), ComposableSingletons$TransferRemovalDialogKt.d, null, 0L, 0L, null, gapComposer, 27696, 484);
                }
            }
            r.d = a1Var;
        }
        gapComposer = gapComposer2;
        gapComposer.Q();
        r = gapComposer.r();
        if (r != null) {
            a1Var = new a1(mutableState, i, 6);
            r.d = a1Var;
        }
    }
}
