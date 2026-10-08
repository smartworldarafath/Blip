package androidx.compose.material;

import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.material.ripple.AndroidRippleNode;
import androidx.compose.material.ripple.RippleAlpha;
import androidx.compose.material.ripple.RippleNode;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorKt;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ DelegatingThemeAwareRippleNode k;

    public /* synthetic */ b(DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode, int i) {
        this.j = i;
        this.k = delegatingThemeAwareRippleNode;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.material.ripple.RippleNode, androidx.compose.material.ripple.AndroidRippleNode, androidx.compose.ui.node.DelegatableNode] */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        RippleAlpha rippleAlpha;
        int i = this.j;
        final DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode = this.k;
        switch (i) {
            case 0:
                RippleConfiguration rippleConfiguration = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode, RippleKt.a);
                AndroidRippleNode androidRippleNode = delegatingThemeAwareRippleNode.C;
                if (rippleConfiguration == null) {
                    if (androidRippleNode != null) {
                        delegatingThemeAwareRippleNode.Z0(androidRippleNode);
                    }
                    delegatingThemeAwareRippleNode.C = null;
                } else if (androidRippleNode == null) {
                    ColorProducer colorProducer = new ColorProducer() { // from class: androidx.compose.material.DelegatingThemeAwareRippleNode$attachNewRipple$calculateColor$1
                        @Override // androidx.compose.ui.graphics.ColorProducer
                        public final long a() {
                            ColorProducer colorProducer2;
                            DelegatingThemeAwareRippleNode delegatingThemeAwareRippleNode2 = DelegatingThemeAwareRippleNode.this;
                            colorProducer2 = delegatingThemeAwareRippleNode2.color;
                            long a = colorProducer2.a();
                            if (a != 16) {
                                return a;
                            }
                            RippleConfiguration rippleConfiguration2 = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode2, RippleKt.a);
                            if (rippleConfiguration2 != null) {
                                long j = rippleConfiguration2.a;
                                if (j != 16) {
                                    return j;
                                }
                            }
                            long j2 = ((Color) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode2, ContentColorKt.a)).a;
                            boolean g = ((Colors) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode2, ColorsKt.a)).g();
                            float e = ColorKt.e(j2);
                            if (!g && e < 0.5d) {
                                return Color.d;
                            }
                            return j2;
                        }
                    };
                    b bVar = new b(delegatingThemeAwareRippleNode, 1);
                    InteractionSource interactionSource = delegatingThemeAwareRippleNode.z;
                    boolean z = delegatingThemeAwareRippleNode.A;
                    float f = delegatingThemeAwareRippleNode.B;
                    TweenSpec tweenSpec = androidx.compose.material.ripple.RippleKt.a;
                    ?? rippleNode = new RippleNode(interactionSource, z, f, colorProducer, bVar);
                    delegatingThemeAwareRippleNode.Y0(rippleNode);
                    delegatingThemeAwareRippleNode.C = rippleNode;
                }
                return Unit.a;
            default:
                RippleConfiguration rippleConfiguration2 = (RippleConfiguration) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode, RippleKt.a);
                if (rippleConfiguration2 == null || (rippleAlpha = rippleConfiguration2.b) == null) {
                    long j = ((Color) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode, ContentColorKt.a)).a;
                    if (((Colors) CompositionLocalConsumerModifierNodeKt.a(delegatingThemeAwareRippleNode, ColorsKt.a)).g()) {
                        if (ColorKt.e(j) > 0.5d) {
                            return RippleKt.d;
                        }
                        return RippleKt.e;
                    }
                    return RippleKt.f;
                }
                return rippleAlpha;
        }
    }
}
