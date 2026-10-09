package kotlinx.coroutines;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DisposeOnCancel implements CancelHandler {
    public final DisposableHandle j;

    public DisposeOnCancel(DisposableHandle disposableHandle) {
        this.j = disposableHandle;
    }

    @Override // kotlinx.coroutines.CancelHandler
    public final void b(Throwable th) {
        this.j.a();
    }

    public final String toString() {
        return "DisposeOnCancel[" + this.j + ']';
    }
}
