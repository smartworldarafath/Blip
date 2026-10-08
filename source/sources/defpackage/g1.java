package defpackage;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.foundation.ScrollState;
import androidx.compose.material.AndroidMenu_androidKt;
import androidx.compose.material.MenuKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.window.PopupProperties;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g1 implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ MutableTransitionState k;
    public final /* synthetic */ MutableState l;
    public final /* synthetic */ ScrollState m;
    public final /* synthetic */ Modifier n;
    public final /* synthetic */ ComposableLambdaImpl o;

    public /* synthetic */ g1(MutableTransitionState mutableTransitionState, MutableState mutableState, ScrollState scrollState, Modifier modifier, ComposableLambdaImpl composableLambdaImpl) {
        this.k = mutableTransitionState;
        this.l = mutableState;
        this.m = scrollState;
        this.n = modifier;
        this.o = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        switch (i) {
            case 0:
                Composer composer = (Composer) obj;
                int intValue = ((Integer) obj2).intValue();
                PopupProperties popupProperties = AndroidMenu_androidKt.a;
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    MenuKt.a(this.k, this.l, this.m, this.n, this.o, gapComposer, 48);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                ((Integer) obj2).getClass();
                MenuKt.a(this.k, this.l, this.m, this.n, this.o, (Composer) obj, RecomposeScopeImplKt.a(49));
                return unit;
        }
    }

    public /* synthetic */ g1(MutableTransitionState mutableTransitionState, MutableState mutableState, ScrollState scrollState, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.k = mutableTransitionState;
        this.l = mutableState;
        this.m = scrollState;
        this.n = modifier;
        this.o = composableLambdaImpl;
    }
}
