package defpackage;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.ComposeViewContext;
import androidx.compose.ui.platform.CompositionLocalsKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class i6 implements Function2 {
    public final /* synthetic */ int j = 0;
    public final /* synthetic */ ComposeViewContext k;
    public final /* synthetic */ AndroidComposeView l;
    public final /* synthetic */ ComposableLambdaImpl m;

    public /* synthetic */ i6(AndroidComposeView androidComposeView, ComposeViewContext composeViewContext, ComposableLambdaImpl composableLambdaImpl) {
        this.l = androidComposeView;
        this.k = composeViewContext;
        this.m = composableLambdaImpl;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        ComposableLambdaImpl composableLambdaImpl = this.m;
        AndroidComposeView androidComposeView = this.l;
        ComposeViewContext composeViewContext = this.k;
        Composer composer = (Composer) obj;
        Integer num = (Integer) obj2;
        switch (i) {
            case 0:
                int intValue = num.intValue();
                if ((intValue & 3) != 2) {
                    z = true;
                } else {
                    z = false;
                }
                GapComposer gapComposer = (GapComposer) composer;
                if (gapComposer.N(intValue & 1, z)) {
                    gapComposer.W(866651995);
                    CompositionLocalsKt.a(androidComposeView, composeViewContext.l, composableLambdaImpl, gapComposer, 0);
                    gapComposer.p(false);
                } else {
                    gapComposer.Q();
                }
                return unit;
            default:
                num.getClass();
                composeViewContext.a(androidComposeView, composableLambdaImpl, composer, RecomposeScopeImplKt.a(1));
                return unit;
        }
    }

    public /* synthetic */ i6(ComposeViewContext composeViewContext, AndroidComposeView androidComposeView, ComposableLambdaImpl composableLambdaImpl, int i) {
        this.k = composeViewContext;
        this.l = androidComposeView;
        this.m = composableLambdaImpl;
    }
}
