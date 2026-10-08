package androidx.compose.foundation.gestures;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DragEvent {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DragCancelled extends DragEvent {
        public static final DragCancelled a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DragDelta extends DragEvent {
        public final long a;
        public final boolean b;

        public DragDelta(long j, boolean z) {
            this.a = j;
            this.b = z;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DragStarted extends DragEvent {
        public final long a;

        public DragStarted(long j) {
            this.a = j;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class DragStopped extends DragEvent {
        public final long a;
        public final boolean b;

        public DragStopped(long j, boolean z) {
            this.a = j;
            this.b = z;
        }
    }
}
