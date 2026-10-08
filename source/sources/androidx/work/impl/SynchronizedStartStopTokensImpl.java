package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SynchronizedStartStopTokensImpl implements StartStopTokens {
    public final StartStopTokens a;
    public final Object b = new Object();

    public SynchronizedStartStopTokensImpl(StartStopTokens startStopTokens) {
        this.a = startStopTokens;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final StartStopToken a(WorkGenerationalId workGenerationalId) {
        StartStopToken a;
        synchronized (this.b) {
            a = ((StartStopTokensImpl) this.a).a(workGenerationalId);
        }
        return a;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final boolean b(WorkGenerationalId workGenerationalId) {
        boolean containsKey;
        synchronized (this.b) {
            containsKey = ((StartStopTokensImpl) this.a).a.containsKey(workGenerationalId);
        }
        return containsKey;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final StartStopToken c(WorkGenerationalId workGenerationalId) {
        StartStopToken c;
        workGenerationalId.getClass();
        synchronized (this.b) {
            c = ((StartStopTokensImpl) this.a).c(workGenerationalId);
        }
        return c;
    }

    @Override // androidx.work.impl.StartStopTokens
    public final List remove(String str) {
        List remove;
        str.getClass();
        synchronized (this.b) {
            remove = ((StartStopTokensImpl) this.a).remove(str);
        }
        return remove;
    }
}
