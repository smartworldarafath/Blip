package androidx.compose.runtime.internal;

import androidx.compose.runtime.GapRememberObserverHolder;
import androidx.compose.runtime.RememberObserver;
import androidx.compose.runtime.RememberObserverHolder;
import androidx.compose.runtime.collection.MutableVector;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PausedCompositionRemembers implements RememberObserver {
    public final Set j;
    public final MutableVector k = new MutableVector(new RememberObserverHolder[16]);

    public PausedCompositionRemembers(Set set) {
        this.j = set;
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void c() {
        MutableVector mutableVector = this.k;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        for (int i2 = 0; i2 < i; i2++) {
            RememberObserver rememberObserver = ((GapRememberObserverHolder) ((RememberObserverHolder) objArr[i2])).a;
            this.j.remove(rememberObserver);
            rememberObserver.c();
        }
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void a() {
    }

    @Override // androidx.compose.runtime.RememberObserver
    public final void b() {
    }
}
