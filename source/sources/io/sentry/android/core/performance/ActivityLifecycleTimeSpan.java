package io.sentry.android.core.performance;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ActivityLifecycleTimeSpan implements Comparable<ActivityLifecycleTimeSpan> {
    public final TimeSpan j = new Object();
    public final TimeSpan k = new Object();

    @Override // java.lang.Comparable
    public final int compareTo(ActivityLifecycleTimeSpan activityLifecycleTimeSpan) {
        ActivityLifecycleTimeSpan activityLifecycleTimeSpan2 = activityLifecycleTimeSpan;
        int compare = Long.compare(this.j.l, activityLifecycleTimeSpan2.j.l);
        if (compare == 0) {
            return Long.compare(this.k.l, activityLifecycleTimeSpan2.k.l);
        }
        return compare;
    }
}
