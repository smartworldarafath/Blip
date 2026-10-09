package com.google.android.datatransport.runtime;

import com.google.android.datatransport.runtime.scheduling.persistence.EventStore;
import java.io.Closeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class TransportRuntimeComponent implements Closeable {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((EventStore) ((DaggerTransportRuntimeComponent) this).o.get()).close();
    }
}
