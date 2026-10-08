package defpackage;

import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.DefaultScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import io.sentry.IScope;
import io.sentry.ITransaction;
import io.sentry.Scope;
import io.sentry.SentryLevel;
import io.sentry.android.core.internal.gestures.SentryGestureListener;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class l7 implements SynchronizationGuard.CriticalSection, Scope.IWithTransaction {
    public final /* synthetic */ Object j;
    public final /* synthetic */ Object k;
    public final /* synthetic */ Object l;

    public /* synthetic */ l7(Object obj, Object obj2, Object obj3) {
        this.j = obj;
        this.k = obj2;
        this.l = obj3;
    }

    @Override // io.sentry.Scope.IWithTransaction
    public void c(ITransaction iTransaction) {
        SentryGestureListener sentryGestureListener = (SentryGestureListener) this.j;
        IScope iScope = (IScope) this.k;
        ITransaction iTransaction2 = (ITransaction) this.l;
        if (iTransaction == null) {
            iScope.G(iTransaction2);
        } else {
            sentryGestureListener.l.getLogger().c(SentryLevel.DEBUG, "Transaction '%s' won't be bound to the Scope since there's one already in there.", iTransaction2.getName());
        }
    }

    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
    public Object m() {
        DefaultScheduler defaultScheduler = (DefaultScheduler) this.j;
        TransportContext transportContext = (TransportContext) this.k;
        ((SQLiteEventStore) defaultScheduler.d).w(transportContext, (EventInternal) this.l);
        ((JobInfoScheduler) defaultScheduler.a).a(transportContext, 1, false);
        return null;
    }
}
