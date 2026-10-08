package androidx.compose.runtime;

import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposablesKt {
    public static final int a(Composer composer) {
        composer.getClass();
        return Long.hashCode(((GapComposer) composer).T);
    }

    public static final GapComposer.CompositionContextImpl b(Composer composer) {
        RememberObserverHolder rememberObserverHolder;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.T(206, ComposerKt.e);
        if (gapComposer.S) {
            SlotWriter.z(gapComposer.I);
        }
        Object C = gapComposer.C();
        if (C instanceof RememberObserverHolder) {
            rememberObserverHolder = (RememberObserverHolder) C;
        } else {
            rememberObserverHolder = null;
        }
        if (rememberObserverHolder == null) {
            rememberObserverHolder = new GapRememberObserverHolder(new GapComposer.CompositionContextHolder(new GapComposer.CompositionContextImpl(gapComposer.T, gapComposer.q, gapComposer.C, gapComposer.h.C)), -1);
            gapComposer.h0(rememberObserverHolder);
        }
        RememberObserver rememberObserver = ((GapRememberObserverHolder) rememberObserverHolder).a;
        rememberObserver.getClass();
        GapComposer.CompositionContextImpl compositionContextImpl = ((GapComposer.CompositionContextHolder) rememberObserver).j;
        ((SnapshotMutableStateImpl) compositionContextImpl.f).setValue(gapComposer.l());
        gapComposer.p(false);
        return compositionContextImpl;
    }
}
