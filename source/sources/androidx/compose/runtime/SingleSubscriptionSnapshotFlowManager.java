package androidx.compose.runtime;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.p;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SingleSubscriptionSnapshotFlowManager extends SnapshotFlowManagerImpl {
    public Object b;
    public Object c;
    public MutableScatterSet d;
    public MutableScatterSet e;
    public SendChannel f;
    public final i g = new Function1() { // from class: androidx.compose.runtime.i
        @Override // kotlin.jvm.functions.Function1
        public final Object b(Object obj) {
            SingleSubscriptionSnapshotFlowManager singleSubscriptionSnapshotFlowManager = SingleSubscriptionSnapshotFlowManager.this;
            SendChannel sendChannel = singleSubscriptionSnapshotFlowManager.f;
            sendChannel.getClass();
            if (!Intrinsics.a(singleSubscriptionSnapshotFlowManager.f, sendChannel)) {
                PreconditionsKt.b("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
            }
            MutableScatterSet mutableScatterSet = singleSubscriptionSnapshotFlowManager.e;
            Object obj2 = singleSubscriptionSnapshotFlowManager.c;
            if (mutableScatterSet == null) {
                if (obj2 == null) {
                    singleSubscriptionSnapshotFlowManager.c = obj;
                } else {
                    MutableScatterSet mutableScatterSet2 = ScatterSetKt.a;
                    MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                    mutableScatterSet3.d(obj2);
                    mutableScatterSet3.d(obj);
                    singleSubscriptionSnapshotFlowManager.e = mutableScatterSet3;
                    singleSubscriptionSnapshotFlowManager.c = null;
                }
            } else {
                if (obj2 != null) {
                    PreconditionsKt.b("workingSoleWatchedObject must be null when workingWatchSet is non-null");
                }
                mutableScatterSet.d(obj);
            }
            return Unit.a;
        }
    };
    public final p h = Snapshot.Companion.d(new e(this, 1));

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void a(SendChannel sendChannel) {
        this.c = null;
        this.e = null;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void b() {
        synchronized (this.a) {
            try {
                this.b = this.c;
                if (this.e == null) {
                    this.d = null;
                } else {
                    if (this.d == null) {
                        MutableScatterSet mutableScatterSet = ScatterSetKt.a;
                        this.d = new MutableScatterSet();
                    }
                    MutableScatterSet mutableScatterSet2 = this.d;
                    this.d = this.e;
                    this.e = mutableScatterSet2;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void c() {
        this.h.a();
        this.c = null;
        this.e = null;
        synchronized (this.a) {
            this.f = null;
            this.b = null;
            this.d = null;
        }
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final Function1 d(SendChannel sendChannel) {
        SendChannel sendChannel2 = this.f;
        if (sendChannel2 != null && !sendChannel2.equals(sendChannel)) {
            PreconditionsKt.b("Requested a SingleSubscriptionSnapshotFlowManager to manage multiple subscriptions");
        }
        this.f = sendChannel;
        return this.g;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void e(Channel channel) {
        this.f = null;
        this.c = null;
        this.e = null;
        b();
    }
}
