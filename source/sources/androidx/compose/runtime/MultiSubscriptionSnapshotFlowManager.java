package androidx.compose.runtime;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.MultiSubscriptionSnapshotFlowManager;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.p;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.channels.Channel;
import kotlinx.coroutines.channels.SendChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MultiSubscriptionSnapshotFlowManager extends SnapshotFlowManagerImpl {
    public final MutableScatterMap b = ScopeMap.b();
    public final ArrayList c = new ArrayList();
    public final MutableScatterMap d = new MutableScatterMap();
    public final p e = Snapshot.Companion.d(new e(this, 0));

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Add implements SubscriptionChange {
        public final Object a;
        public final SendChannel b;

        public Add(Object obj, SendChannel sendChannel) {
            this.a = obj;
            this.b = sendChannel;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RemoveScope implements SubscriptionChange {
        public final SendChannel a;

        public RemoveScope(SendChannel sendChannel) {
            this.a = sendChannel;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface SubscriptionChange {
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void a(SendChannel sendChannel) {
        this.c.add(new RemoveScope(sendChannel));
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void b() {
        synchronized (this.a) {
            try {
                ArrayList arrayList = this.c;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    SubscriptionChange subscriptionChange = (SubscriptionChange) arrayList.get(i);
                    if (subscriptionChange instanceof Add) {
                        ScopeMap.a(this.b, ((Add) subscriptionChange).a, ((Add) subscriptionChange).b);
                    } else if (subscriptionChange instanceof RemoveScope) {
                        ScopeMap.d(this.b, ((RemoveScope) subscriptionChange).a);
                    } else {
                        throw new RuntimeException();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.c.clear();
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void c() {
        this.e.a();
        this.c.clear();
        this.d.h();
        synchronized (this.a) {
            this.b.h();
        }
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final Function1 d(final SendChannel sendChannel) {
        MutableScatterMap mutableScatterMap = this.d;
        Function1 function1 = (Function1) mutableScatterMap.e(sendChannel);
        if (function1 == null) {
            function1 = new Function1() { // from class: androidx.compose.runtime.d
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    MultiSubscriptionSnapshotFlowManager.this.c.add(new MultiSubscriptionSnapshotFlowManager.Add(obj, sendChannel));
                    return Unit.a;
                }
            };
            int j = mutableScatterMap.j(sendChannel);
            if (j < 0) {
                j = ~j;
            }
            Object[] objArr = mutableScatterMap.c;
            Object obj = objArr[j];
            mutableScatterMap.b[j] = sendChannel;
            objArr[j] = function1;
        }
        return function1;
    }

    @Override // androidx.compose.runtime.SnapshotFlowManagerImpl
    public final void e(Channel channel) {
        this.d.m(channel);
        a(channel);
        b();
    }
}
