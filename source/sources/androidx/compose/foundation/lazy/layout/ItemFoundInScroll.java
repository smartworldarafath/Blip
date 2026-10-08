package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.AnimationState;
import java.util.concurrent.CancellationException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ItemFoundInScroll extends CancellationException {
    public final int j;
    public final AnimationState k;

    public ItemFoundInScroll(int i, AnimationState animationState) {
        this.j = i;
        this.k = animationState;
    }
}
