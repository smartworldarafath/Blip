package io.sentry.transport;

import java.util.concurrent.locks.AbstractQueuedSynchronizer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReusableCountLatch {
    public final Sync a = new Sync();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Sync extends AbstractQueuedSynchronizer {
        public static final /* synthetic */ int j = 0;

        public Sync() {
            setState(0);
        }

        public static int a(Sync sync) {
            return sync.getState();
        }

        public static void b(Sync sync) {
            int state;
            do {
                state = sync.getState();
            } while (!sync.compareAndSetState(state, state + 1));
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        public final int tryAcquireShared(int i) {
            if (getState() == 0) {
                return 1;
            }
            return -1;
        }

        @Override // java.util.concurrent.locks.AbstractQueuedSynchronizer
        public final boolean tryReleaseShared(int i) {
            int state;
            int i2;
            do {
                state = getState();
                if (state == 0) {
                    return false;
                }
                i2 = state - 1;
            } while (!compareAndSetState(state, i2));
            if (i2 != 0) {
                return false;
            }
            return true;
        }
    }

    public final void a() {
        int i = Sync.j;
        this.a.releaseShared(1);
    }
}
