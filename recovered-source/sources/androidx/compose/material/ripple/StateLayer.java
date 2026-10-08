package androidx.compose.material.ripple;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.material.b;
import java.util.ArrayList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class StateLayer {
    public final boolean a;
    public final b b;
    public final Animatable c = AnimatableKt.a(0.0f);
    public final ArrayList d = new ArrayList();
    public Interaction e;

    public StateLayer(boolean z, b bVar) {
        this.a = z;
        this.b = bVar;
    }
}
