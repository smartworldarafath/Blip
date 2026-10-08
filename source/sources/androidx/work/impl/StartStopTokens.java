package androidx.work.impl;

import androidx.work.impl.model.WorkGenerationalId;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface StartStopTokens {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static StartStopTokens a(boolean z) {
            StartStopTokensImpl startStopTokensImpl = new StartStopTokensImpl();
            if (z) {
                return new SynchronizedStartStopTokensImpl(startStopTokensImpl);
            }
            return startStopTokensImpl;
        }
    }

    StartStopToken a(WorkGenerationalId workGenerationalId);

    boolean b(WorkGenerationalId workGenerationalId);

    StartStopToken c(WorkGenerationalId workGenerationalId);

    List remove(String str);
}
