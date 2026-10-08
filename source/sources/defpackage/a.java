package defpackage;

import androidx.compose.foundation.AbstractClickableNode;
import androidx.compose.foundation.Indication;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ AbstractClickableNode k;

    public /* synthetic */ a(AbstractClickableNode abstractClickableNode, int i) {
        this.j = i;
        this.k = abstractClickableNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        DelegatableNode delegatableNode;
        int i = this.j;
        AbstractClickableNode abstractClickableNode = this.k;
        switch (i) {
            case 0:
                Indication indication = (Indication) CompositionLocalConsumerModifierNodeKt.a(abstractClickableNode, IndicationKt.a);
                if (!(indication instanceof IndicationNodeFactory)) {
                    InlineClassHelperKt.a("clickable only supports IndicationNodeFactory instances provided to LocalIndication, but Indication was provided instead. Either migrate the Indication implementation to implement IndicationNodeFactory, or use the other clickable overload that takes an Indication parameter, and explicitly pass LocalIndication.current there. The Indication instance provided here was: " + indication);
                }
                IndicationNodeFactory indicationNodeFactory = abstractClickableNode.H;
                IndicationNodeFactory indicationNodeFactory2 = (IndicationNodeFactory) indication;
                abstractClickableNode.H = indicationNodeFactory2;
                if (indicationNodeFactory != null && !Intrinsics.a(indicationNodeFactory2, indicationNodeFactory) && ((delegatableNode = abstractClickableNode.K) != null || !abstractClickableNode.R)) {
                    if (delegatableNode != null) {
                        abstractClickableNode.Z0(delegatableNode);
                    }
                    abstractClickableNode.K = null;
                    abstractClickableNode.j1();
                }
                return Unit.a;
            default:
                abstractClickableNode.n1();
                return Boolean.TRUE;
        }
    }
}
