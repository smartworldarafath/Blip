package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import com.google.android.datatransport.Encoding;
import com.google.android.datatransport.Priority;
import com.google.android.datatransport.runtime.EncodedPayload;
import com.google.android.datatransport.runtime.EventInternal;
import com.google.android.datatransport.runtime.ProtoEncoderDoNotUse;
import com.google.android.datatransport.runtime.TransportContext;
import com.google.android.datatransport.runtime.backends.BackendRegistry;
import com.google.android.datatransport.runtime.backends.BackendRequest;
import com.google.android.datatransport.runtime.backends.BackendResponse;
import com.google.android.datatransport.runtime.backends.TransportBackend;
import com.google.android.datatransport.runtime.firebase.transport.ClientMetrics;
import com.google.android.datatransport.runtime.logging.Logging;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.Uploader;
import com.google.android.datatransport.runtime.scheduling.persistence.ClientHealthMetricsStore;
import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.PersistedEvent;
import com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore;
import com.google.android.datatransport.runtime.scheduling.persistence.a;
import com.google.android.datatransport.runtime.scheduling.persistence.e;
import com.google.android.datatransport.runtime.scheduling.persistence.f;
import com.google.android.datatransport.runtime.synchronization.SynchronizationGuard;
import com.google.android.datatransport.runtime.time.Clock;
import com.google.firebase.encoders.proto.ProtobufEncoder;
import defpackage.n5;
import defpackage.p;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.ListIterator;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Uploader {
    public final Context a;
    public final BackendRegistry b;
    public final EventStore c;
    public final WorkScheduler d;
    public final Executor e;
    public final SynchronizationGuard f;
    public final Clock g;
    public final Clock h;
    public final ClientHealthMetricsStore i;

    public Uploader(Context context, BackendRegistry backendRegistry, EventStore eventStore, WorkScheduler workScheduler, Executor executor, SynchronizationGuard synchronizationGuard, Clock clock, Clock clock2, ClientHealthMetricsStore clientHealthMetricsStore) {
        this.a = context;
        this.b = backendRegistry;
        this.c = eventStore;
        this.d = workScheduler;
        this.e = executor;
        this.f = synchronizationGuard;
        this.g = clock;
        this.h = clock2;
        this.i = clientHealthMetricsStore;
    }

    public final void a(final TransportContext transportContext, int i) {
        BackendResponse a;
        TransportBackend a2 = this.b.a(transportContext.b());
        BackendResponse.e(0L);
        final long j = 0;
        while (true) {
            final int i2 = 0;
            SynchronizationGuard.CriticalSection criticalSection = new SynchronizationGuard.CriticalSection(this) { // from class: bi
                public final /* synthetic */ Uploader k;

                {
                    this.k = this;
                }

                @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                public final Object m() {
                    Boolean bool;
                    int i3 = i2;
                    final TransportContext transportContext2 = transportContext;
                    Uploader uploader = this.k;
                    switch (i3) {
                        case 0:
                            SQLiteEventStore sQLiteEventStore = (SQLiteEventStore) uploader.c;
                            SQLiteDatabase h = sQLiteEventStore.h();
                            h.beginTransaction();
                            try {
                                Long n = SQLiteEventStore.n(h, transportContext2);
                                if (n == null) {
                                    bool = Boolean.FALSE;
                                } else {
                                    bool = (Boolean) SQLiteEventStore.P(sQLiteEventStore.h().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{n.toString()}), new a(2));
                                }
                                h.setTransactionSuccessful();
                                h.endTransaction();
                                bool.getClass();
                                return bool;
                            } catch (Throwable th) {
                                h.endTransaction();
                                throw th;
                            }
                        default:
                            final SQLiteEventStore sQLiteEventStore2 = (SQLiteEventStore) uploader.c;
                            sQLiteEventStore2.getClass();
                            return (Iterable) sQLiteEventStore2.q(new SQLiteEventStore.Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.d
                                @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
                                public final Object apply(Object obj) {
                                    SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                    SQLiteEventStore sQLiteEventStore3 = SQLiteEventStore.this;
                                    AutoValue_EventStoreConfig autoValue_EventStoreConfig = (AutoValue_EventStoreConfig) sQLiteEventStore3.m;
                                    int i4 = autoValue_EventStoreConfig.c;
                                    TransportContext transportContext3 = transportContext2;
                                    ArrayList v = sQLiteEventStore3.v(sQLiteDatabase, transportContext3, i4);
                                    for (Priority priority : Priority.values()) {
                                        if (priority != transportContext3.d()) {
                                            int size = autoValue_EventStoreConfig.c - v.size();
                                            if (size <= 0) {
                                                break;
                                            }
                                            v.addAll(sQLiteEventStore3.v(sQLiteDatabase, transportContext3.f(priority), size));
                                        }
                                    }
                                    HashMap hashMap = new HashMap();
                                    StringBuilder sb = new StringBuilder("event_id IN (");
                                    for (int i5 = 0; i5 < v.size(); i5++) {
                                        sb.append(((AutoValue_PersistedEvent) ((PersistedEvent) v.get(i5))).a);
                                        if (i5 < v.size() - 1) {
                                            sb.append(',');
                                        }
                                    }
                                    sb.append(')');
                                    SQLiteEventStore.P(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new f(2, hashMap));
                                    ListIterator listIterator = v.listIterator();
                                    while (listIterator.hasNext()) {
                                        PersistedEvent persistedEvent = (PersistedEvent) listIterator.next();
                                        if (hashMap.containsKey(Long.valueOf(((AutoValue_PersistedEvent) persistedEvent).a))) {
                                            AutoValue_PersistedEvent autoValue_PersistedEvent = (AutoValue_PersistedEvent) persistedEvent;
                                            long j2 = autoValue_PersistedEvent.a;
                                            EventInternal.Builder k = autoValue_PersistedEvent.c.k();
                                            for (SQLiteEventStore.Metadata metadata : (Set) hashMap.get(Long.valueOf(j2))) {
                                                k.a(metadata.a, metadata.b);
                                            }
                                            listIterator.set(new AutoValue_PersistedEvent(j2, autoValue_PersistedEvent.b, k.b()));
                                        }
                                    }
                                    return v;
                                }
                            });
                    }
                }
            };
            SQLiteEventStore sQLiteEventStore = (SQLiteEventStore) this.f;
            if (((Boolean) sQLiteEventStore.E(criticalSection)).booleanValue()) {
                final int i3 = 1;
                final Iterable iterable = (Iterable) sQLiteEventStore.E(new SynchronizationGuard.CriticalSection(this) { // from class: bi
                    public final /* synthetic */ Uploader k;

                    {
                        this.k = this;
                    }

                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object m() {
                        Boolean bool;
                        int i32 = i3;
                        final TransportContext transportContext2 = transportContext;
                        Uploader uploader = this.k;
                        switch (i32) {
                            case 0:
                                SQLiteEventStore sQLiteEventStore2 = (SQLiteEventStore) uploader.c;
                                SQLiteDatabase h = sQLiteEventStore2.h();
                                h.beginTransaction();
                                try {
                                    Long n = SQLiteEventStore.n(h, transportContext2);
                                    if (n == null) {
                                        bool = Boolean.FALSE;
                                    } else {
                                        bool = (Boolean) SQLiteEventStore.P(sQLiteEventStore2.h().rawQuery("SELECT 1 FROM events WHERE context_id = ? LIMIT 1", new String[]{n.toString()}), new a(2));
                                    }
                                    h.setTransactionSuccessful();
                                    h.endTransaction();
                                    bool.getClass();
                                    return bool;
                                } catch (Throwable th) {
                                    h.endTransaction();
                                    throw th;
                                }
                            default:
                                final SQLiteEventStore sQLiteEventStore22 = (SQLiteEventStore) uploader.c;
                                sQLiteEventStore22.getClass();
                                return (Iterable) sQLiteEventStore22.q(new SQLiteEventStore.Function() { // from class: com.google.android.datatransport.runtime.scheduling.persistence.d
                                    @Override // com.google.android.datatransport.runtime.scheduling.persistence.SQLiteEventStore.Function
                                    public final Object apply(Object obj) {
                                        SQLiteDatabase sQLiteDatabase = (SQLiteDatabase) obj;
                                        SQLiteEventStore sQLiteEventStore3 = SQLiteEventStore.this;
                                        AutoValue_EventStoreConfig autoValue_EventStoreConfig = (AutoValue_EventStoreConfig) sQLiteEventStore3.m;
                                        int i4 = autoValue_EventStoreConfig.c;
                                        TransportContext transportContext3 = transportContext2;
                                        ArrayList v = sQLiteEventStore3.v(sQLiteDatabase, transportContext3, i4);
                                        for (Priority priority : Priority.values()) {
                                            if (priority != transportContext3.d()) {
                                                int size = autoValue_EventStoreConfig.c - v.size();
                                                if (size <= 0) {
                                                    break;
                                                }
                                                v.addAll(sQLiteEventStore3.v(sQLiteDatabase, transportContext3.f(priority), size));
                                            }
                                        }
                                        HashMap hashMap = new HashMap();
                                        StringBuilder sb = new StringBuilder("event_id IN (");
                                        for (int i5 = 0; i5 < v.size(); i5++) {
                                            sb.append(((AutoValue_PersistedEvent) ((PersistedEvent) v.get(i5))).a);
                                            if (i5 < v.size() - 1) {
                                                sb.append(',');
                                            }
                                        }
                                        sb.append(')');
                                        SQLiteEventStore.P(sQLiteDatabase.query("event_metadata", new String[]{"event_id", "name", "value"}, sb.toString(), null, null, null, null), new f(2, hashMap));
                                        ListIterator listIterator = v.listIterator();
                                        while (listIterator.hasNext()) {
                                            PersistedEvent persistedEvent = (PersistedEvent) listIterator.next();
                                            if (hashMap.containsKey(Long.valueOf(((AutoValue_PersistedEvent) persistedEvent).a))) {
                                                AutoValue_PersistedEvent autoValue_PersistedEvent = (AutoValue_PersistedEvent) persistedEvent;
                                                long j2 = autoValue_PersistedEvent.a;
                                                EventInternal.Builder k = autoValue_PersistedEvent.c.k();
                                                for (SQLiteEventStore.Metadata metadata : (Set) hashMap.get(Long.valueOf(j2))) {
                                                    k.a(metadata.a, metadata.b);
                                                }
                                                listIterator.set(new AutoValue_PersistedEvent(j2, autoValue_PersistedEvent.b, k.b()));
                                            }
                                        }
                                        return v;
                                    }
                                });
                        }
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return;
                }
                if (a2 == null) {
                    Logging.a("Uploader", "Unknown backend for %s, deleting event batch for it...", transportContext);
                    a = BackendResponse.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((PersistedEvent) it.next()).a());
                    }
                    if (transportContext.e()) {
                        ClientHealthMetricsStore clientHealthMetricsStore = this.i;
                        Objects.requireNonNull(clientHealthMetricsStore);
                        ClientMetrics clientMetrics = (ClientMetrics) sQLiteEventStore.E(new p(19, clientHealthMetricsStore));
                        EventInternal.Builder a3 = EventInternal.a();
                        a3.f(this.g.a());
                        a3.h(this.h.a());
                        a3.g("GDT_CLIENT_METRICS");
                        Encoding encoding = new Encoding("proto");
                        clientMetrics.getClass();
                        ProtobufEncoder protobufEncoder = ProtoEncoderDoNotUse.a;
                        protobufEncoder.getClass();
                        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                        try {
                            protobufEncoder.a(clientMetrics, byteArrayOutputStream);
                        } catch (IOException unused) {
                        }
                        a3.e(new EncodedPayload(encoding, byteArrayOutputStream.toByteArray()));
                        arrayList.add(a2.b(a3.b()));
                    }
                    BackendRequest.Builder a4 = BackendRequest.a();
                    a4.b(arrayList);
                    a4.c(transportContext.c());
                    a = a2.a(a4.a());
                }
                if (a.c() == BackendResponse.Status.k) {
                    final Uploader uploader = this;
                    final TransportContext transportContext2 = transportContext;
                    sQLiteEventStore.E(new SynchronizationGuard.CriticalSection() { // from class: ci
                        @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                        public final Object m() {
                            Uploader uploader2 = Uploader.this;
                            SQLiteEventStore sQLiteEventStore2 = (SQLiteEventStore) uploader2.c;
                            sQLiteEventStore2.getClass();
                            Iterable iterable2 = iterable;
                            if (iterable2.iterator().hasNext()) {
                                String concat = "UPDATE events SET num_attempts = num_attempts + 1 WHERE _id in ".concat(SQLiteEventStore.O(iterable2));
                                SQLiteDatabase h = sQLiteEventStore2.h();
                                h.beginTransaction();
                                try {
                                    h.compileStatement(concat).execute();
                                    SQLiteEventStore.P(h.rawQuery("SELECT COUNT(*), transport_name FROM events WHERE num_attempts >= 16 GROUP BY transport_name", null), new f(1, sQLiteEventStore2));
                                    h.compileStatement("DELETE FROM events WHERE num_attempts >= 16").execute();
                                    h.setTransactionSuccessful();
                                } finally {
                                    h.endTransaction();
                                }
                            }
                            sQLiteEventStore2.q(new e(uploader2.g.a() + j, transportContext2));
                            return null;
                        }
                    });
                    ((JobInfoScheduler) uploader.d).a(transportContext2, i + 1, true);
                    return;
                }
                Uploader uploader2 = this;
                TransportContext transportContext3 = transportContext;
                sQLiteEventStore.E(new n5(8, uploader2, iterable));
                if (a.c() == BackendResponse.Status.j) {
                    long max = Math.max(j, a.b());
                    if (transportContext3.e()) {
                        sQLiteEventStore.E(new p(21, uploader2));
                    }
                    j = max;
                } else if (a.c() == BackendResponse.Status.m) {
                    HashMap hashMap = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String i4 = ((PersistedEvent) it2.next()).a().i();
                        if (!hashMap.containsKey(i4)) {
                            hashMap.put(i4, 1);
                        } else {
                            hashMap.put(i4, Integer.valueOf(((Integer) hashMap.get(i4)).intValue() + 1));
                        }
                    }
                    sQLiteEventStore.E(new n5(9, uploader2, hashMap));
                }
                this = uploader2;
                transportContext = transportContext3;
            } else {
                final Uploader uploader3 = this;
                final TransportContext transportContext4 = transportContext;
                sQLiteEventStore.E(new SynchronizationGuard.CriticalSection() { // from class: di
                    @Override // com.google.android.datatransport.runtime.synchronization.SynchronizationGuard.CriticalSection
                    public final Object m() {
                        Uploader uploader4 = Uploader.this;
                        EventStore eventStore = uploader4.c;
                        long a5 = uploader4.g.a() + j;
                        SQLiteEventStore sQLiteEventStore2 = (SQLiteEventStore) eventStore;
                        sQLiteEventStore2.getClass();
                        sQLiteEventStore2.q(new e(a5, transportContext4));
                        return null;
                    }
                });
                return;
            }
        }
    }
}
