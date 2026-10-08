package androidx.navigationevent;

import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavigationEventTransitionState {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Idle extends NavigationEventTransitionState {
        public static final Idle a = new Object();

        public final String toString() {
            return "Idle()";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InProgress extends NavigationEventTransitionState {
        public final NavigationEvent a;
        public final int b;

        public InProgress(NavigationEvent navigationEvent, int i) {
            navigationEvent.getClass();
            this.a = navigationEvent;
            this.b = i;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj != null && InProgress.class == obj.getClass()) {
                    InProgress inProgress = (InProgress) obj;
                    if (this.b == inProgress.b && Intrinsics.a(this.a, inProgress.a)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return this.a.hashCode() + (this.b * 31);
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("InProgress(latestEvent=");
            sb.append(this.a);
            sb.append(", direction=");
            return q.j(sb, this.b, ')');
        }
    }
}
