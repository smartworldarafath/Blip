package androidx.compose.runtime.snapshots;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapshotApplyResult {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Failure extends SnapshotApplyResult {
        public final MutableSnapshot a;

        public Failure(MutableSnapshot mutableSnapshot) {
            this.a = mutableSnapshot;
        }

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public final void a() {
            this.a.c();
            throw new Exception();
        }
    }

    public abstract void a();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Success extends SnapshotApplyResult {
        public static final Success a = new Object();

        @Override // androidx.compose.runtime.snapshots.SnapshotApplyResult
        public final void a() {
        }
    }
}
