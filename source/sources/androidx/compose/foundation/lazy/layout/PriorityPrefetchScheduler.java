package androidx.compose.foundation.lazy.layout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface PriorityPrefetchScheduler extends PrefetchScheduler {
    @Override // androidx.compose.foundation.lazy.layout.PrefetchScheduler
    default void a(PrefetchRequest prefetchRequest) {
        AndroidPrefetchScheduler androidPrefetchScheduler = (AndroidPrefetchScheduler) this;
        androidPrefetchScheduler.k.add(new PriorityTask(1, prefetchRequest));
        if (!androidPrefetchScheduler.l) {
            androidPrefetchScheduler.l = true;
            androidPrefetchScheduler.j.post(androidPrefetchScheduler);
        }
    }
}
