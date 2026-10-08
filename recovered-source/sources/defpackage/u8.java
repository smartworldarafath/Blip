package defpackage;

import android.content.Context;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.navigation.NavHostController;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.lockups.ScreenLockupKt;
import net.blip.android.ui.transfer.TransferCreationScreenKt;
import net.blip.android.ui.transfer.TransferHeaderKt;
import net.blip.libblip.PeerPickerContent;
import net.blip.libblip.PeerPickerViewModel;
import net.blip.libblip.TransferChoosePeerViewModel;
import net.blip.libblip.frontend.Search;
import net.blip.libblip.frontend.Transfer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class u8 implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ MutableState k;
    public final /* synthetic */ State l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Object n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Object q;

    public /* synthetic */ u8(NavHostController navHostController, State state, List list, PagerState pagerState, Context context, Function1 function1, MutableState mutableState) {
        this.m = navHostController;
        this.l = state;
        this.n = list;
        this.o = pagerState;
        this.p = context;
        this.q = function1;
        this.k = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        boolean z2;
        int i = this.j;
        Unit unit = Unit.a;
        boolean z3 = false;
        Object obj3 = this.q;
        Object obj4 = this.p;
        Object obj5 = this.o;
        Object obj6 = this.n;
        Object obj7 = this.m;
        switch (i) {
            case 0:
                NavHostController navHostController = (NavHostController) obj7;
                List list = (List) obj6;
                PagerState pagerState = (PagerState) obj5;
                Context context = (Context) obj4;
                Function1 function1 = (Function1) obj3;
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                if ((intValue & 3) != 2) {
                    z3 = true;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z3)) {
                    long j = ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).m;
                    State state = this.l;
                    ScreenLockupKt.b(j, ComposableLambdaKt.b(928207981, new v8(navHostController, state, list, pagerState, context, function1), gapComposer), ComposableLambdaKt.b(1893770798, new r7(list, pagerState, state, context, this.k, 1), gapComposer), gapComposer, 432, 0);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                PeerPickerViewModel peerPickerViewModel = (PeerPickerViewModel) obj7;
                Function0 function0 = (Function0) obj6;
                TransferChoosePeerViewModel transferChoosePeerViewModel = (TransferChoosePeerViewModel) obj5;
                State state2 = (State) obj4;
                State state3 = (State) obj3;
                Composer composer2 = (Composer) obj;
                int intValue2 = ((Integer) obj2).intValue();
                if ((intValue2 & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer2 = (GapComposer) composer2;
                if (gapComposer2.N(intValue2 & 1, z)) {
                    Modifier c = SizeKt.c(Modifier.Companion.b, 1.0f);
                    ColumnMeasurePolicy a = ColumnKt.a(Arrangement.b, Alignment.Companion.m, gapComposer2, 0);
                    int hashCode = Long.hashCode(gapComposer2.T);
                    PersistentCompositionLocalMap l = gapComposer2.l();
                    Modifier c2 = ComposedModifierKt.c(gapComposer2, c);
                    ComposeUiNode.b.getClass();
                    gapComposer2.Z();
                    if (gapComposer2.S) {
                        gapComposer2.k(LayoutNode.b0);
                    } else {
                        gapComposer2.j0();
                    }
                    Updater.c(gapComposer2, a, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                    Updater.c(gapComposer2, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
                    Updater.b(gapComposer2);
                    Updater.c(gapComposer2, c2, ComposeUiNode.Companion.b);
                    Transfer transfer = (Transfer) this.k.getValue();
                    State state4 = this.l;
                    boolean booleanValue = ((Boolean) state4.getValue()).booleanValue();
                    PeerPickerContent peerPickerContent = (PeerPickerContent) state2.getValue();
                    peerPickerContent.getClass();
                    if ((peerPickerContent instanceof PeerPickerContent.SearchResults) && ((PeerPickerContent.SearchResults) peerPickerContent).c == Search.Status.n) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    String str = (String) state3.getValue();
                    boolean h = gapComposer2.h(peerPickerViewModel);
                    Object K = gapComposer2.K();
                    Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                    if (h || K == composer$Companion$Empty$1) {
                        K = new e9(peerPickerViewModel, 2);
                        gapComposer2.g0(K);
                    }
                    TransferHeaderKt.a(null, transfer, booleanValue, z2, str, (Function1) K, function0, gapComposer2, 0);
                    boolean booleanValue2 = ((Boolean) state4.getValue()).booleanValue();
                    boolean h2 = gapComposer2.h(transferChoosePeerViewModel);
                    Object K2 = gapComposer2.K();
                    if (h2 || K2 == composer$Companion$Empty$1) {
                        K2 = new oh(transferChoosePeerViewModel, 1);
                        gapComposer2.g0(K2);
                    }
                    TransferCreationScreenKt.a(booleanValue2, peerPickerViewModel, (Function1) K2, gapComposer2, 0);
                    gapComposer2.p(true);
                } else {
                    gapComposer2.Q();
                }
                return unit;
        }
    }

    public /* synthetic */ u8(PeerPickerViewModel peerPickerViewModel, Function0 function0, TransferChoosePeerViewModel transferChoosePeerViewModel, MutableState mutableState, MutableState mutableState2, MutableState mutableState3, MutableState mutableState4) {
        this.m = peerPickerViewModel;
        this.n = function0;
        this.o = transferChoosePeerViewModel;
        this.k = mutableState;
        this.l = mutableState2;
        this.p = mutableState3;
        this.q = mutableState4;
    }
}
