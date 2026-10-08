package defpackage;

import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.JobInfoScheduler;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.WorkScheduler;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.synchronization.SynchronizationException;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class zh implements Runnable {
    public final /* synthetic */ Uploader j;
    public final /* synthetic */ TransportContext k;
    public final /* synthetic */ int l;
    public final /* synthetic */ Runnable m;

    public /* synthetic */ zh(Uploader uploader, TransportContext transportContext, int i, Runnable runnable) {
        this.j = uploader;
        this.k = transportContext;
        this.l = i;
        this.m = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        final TransportContext transportContext = this.k;
        final int i = this.l;
        Runnable runnable = this.m;
        final Uploader uploader = this.j;
        SynchronizationGuard synchronizationGuard = uploader.f;
        try {
            try {
                EventStore eventStore = uploader.c;
                Objects.requireNonNull(eventStore);
                ((SQLiteEventStore) synchronizationGuard).E(new p(20, eventStore));
                NetworkInfo activeNetworkInfo = ((ConnectivityManager) uploader.a.getSystemService("connectivity")).getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                    uploader.a(transportContext, i);
                } else {
                    ((SQLiteEventStore) synchronizationGuard).E(new SynchronizationGuard.CriticalSection() { // from class: ai
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object m() {
                            WorkScheduler workScheduler = Uploader.this.d;
                            ((JobInfoScheduler) workScheduler).a(transportContext, i + 1, false);
                            return null;
                        }
                    });
                }
                runnable.run();
            } catch (SynchronizationException unused) {
                ((JobInfoScheduler) uploader.d).a(transportContext, i + 1, false);
                runnable.run();
            }
        } catch (Throwable th) {
            runnable.run();
            throw th;
        }
    }
}
