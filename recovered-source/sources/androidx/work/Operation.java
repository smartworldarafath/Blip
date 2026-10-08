package androidx.work;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Operation {
    public static final State.SUCCESS a = new Object();
    public static final State.IN_PROGRESS b = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class State {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class FAILURE extends State {
            public final Throwable a;

            public FAILURE(Throwable th) {
                this.a = th;
            }

            public final String toString() {
                return "FAILURE (" + this.a.getMessage() + ")";
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class IN_PROGRESS extends State {
            public final String toString() {
                return "IN_PROGRESS";
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class SUCCESS extends State {
            public final String toString() {
                return "SUCCESS";
            }
        }
    }
}
