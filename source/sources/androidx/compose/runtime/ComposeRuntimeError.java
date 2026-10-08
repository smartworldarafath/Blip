package androidx.compose.runtime;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComposeRuntimeError extends IllegalStateException {
    public final String j;

    public ComposeRuntimeError(String str) {
        this.j = str;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        return this.j;
    }
}
