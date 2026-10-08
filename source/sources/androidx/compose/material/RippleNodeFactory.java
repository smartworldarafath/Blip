package androidx.compose.material;

import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorProducer;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.unit.Dp;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class RippleNodeFactory implements IndicationNodeFactory {
    public final boolean a;
    public final float b;
    public final long c;

    public RippleNodeFactory(boolean z, float f, long j) {
        this.a = z;
        this.b = f;
        this.c = j;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final DelegatableNode a(InteractionSource interactionSource) {
        return new DelegatingThemeAwareRippleNode(interactionSource, this.a, this.b, new ColorProducer() { // from class: androidx.compose.material.RippleNodeFactory$create$colorProducer$1
            @Override // androidx.compose.ui.graphics.ColorProducer
            public final long a() {
                return RippleNodeFactory.this.c;
            }
        });
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof RippleNodeFactory) {
            RippleNodeFactory rippleNodeFactory = (RippleNodeFactory) obj;
            if (this.a != rippleNodeFactory.a || !Dp.b(this.b, rippleNodeFactory.b)) {
                return false;
            }
            return Color.c(this.c, rippleNodeFactory.c);
        }
        return false;
    }

    @Override // androidx.compose.foundation.IndicationNodeFactory
    public final int hashCode() {
        int a = q.a(this.b, Boolean.hashCode(this.a) * 31, 961);
        int i = Color.i;
        return Long.hashCode(this.c) + a;
    }
}
