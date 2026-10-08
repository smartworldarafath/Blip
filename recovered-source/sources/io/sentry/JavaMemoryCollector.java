package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JavaMemoryCollector implements IPerformanceSnapshotCollector {
    public final Runtime a = Runtime.getRuntime();

    @Override // io.sentry.IPerformanceSnapshotCollector
    public final void a(PerformanceCollectionData performanceCollectionData) {
        Runtime runtime = this.a;
        performanceCollectionData.b = Long.valueOf(runtime.totalMemory() - runtime.freeMemory());
    }

    @Override // io.sentry.IPerformanceSnapshotCollector
    public final void c() {
    }
}
