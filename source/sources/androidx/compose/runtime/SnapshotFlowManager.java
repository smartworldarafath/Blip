package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.MultiSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SnapshotFlowManager {
    public SnapshotFlowManagerImpl a;

    public final Object a(Channel channel, Function0 function0) {
        SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager;
        SendChannel sendChannel;
        int i;
        if (this.a == null) {
            PreconditionsKt.b("Called runAndWatch on a manager that has been disposed of");
        }
        SnapshotFlowManagerImpl snapshotFlowManagerImpl = this.a;
        if ((snapshotFlowManagerImpl instanceof SingleSubscriptionSnapshotFlowManager) && (sendChannel = (singleSubscriptionSnapshotFlowManager = (SingleSubscriptionSnapshotFlowManager) snapshotFlowManagerImpl).f) != null && !sendChannel.equals(channel)) {
            MultiSubscriptionSnapshotFlowManager multiSubscriptionSnapshotFlowManager = new MultiSubscriptionSnapshotFlowManager();
            SendChannel sendChannel2 = singleSubscriptionSnapshotFlowManager.f;
            if (sendChannel2 == null) {
                PreconditionsKt.b("promote must only be called when a manager is managing subscriptions for one channel and needs to start managing them for a second");
            }
            MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.d;
            ArrayList arrayList = multiSubscriptionSnapshotFlowManager.c;
            if (mutableScatterSet == null) {
                Object obj = singleSubscriptionSnapshotFlowManager.b;
                obj.getClass();
                arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(obj, sendChannel2));
            } else {
                Object[] objArr = mutableScatterSet.b;
                long[] jArr = mutableScatterSet.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j = jArr[i2];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i3 = 8;
                            int i4 = 8 - ((~(i2 - length)) >>> 31);
                            int i5 = 0;
                            while (i5 < i4) {
                                if ((j & 255) < 128) {
                                    i = i3;
                                    arrayList.add(new MultiSubscriptionSnapshotFlowManager.Add(objArr[(i2 << 3) + i5], sendChannel2));
                                } else {
                                    i = i3;
                                }
                                j >>= i;
                                i5++;
                                i3 = i;
                            }
                            if (i4 != i3) {
                                break;
                            }
                        }
                        if (i2 == length) {
                            break;
                        }
                        i2++;
                    }
                }
            }
            multiSubscriptionSnapshotFlowManager.b();
            singleSubscriptionSnapshotFlowManager.c();
            this.a = multiSubscriptionSnapshotFlowManager;
        }
        SnapshotFlowManagerImpl snapshotFlowManagerImpl2 = this.a;
        snapshotFlowManagerImpl2.getClass();
        Snapshot u = SnapshotKt.i().u(snapshotFlowManagerImpl2.d(channel));
        snapshotFlowManagerImpl2.a(channel);
        try {
            Snapshot j2 = u.j();
            try {
                Object a = function0.a();
                u.c();
                snapshotFlowManagerImpl2.b();
                return a;
            } finally {
                Snapshot.q(j2);
            }
        } catch (Throwable th) {
            u.c();
            throw th;
        }
    }
}
