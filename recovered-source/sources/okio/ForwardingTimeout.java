package okio;

import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ForwardingTimeout extends Timeout {
    public Timeout e;

    public ForwardingTimeout(Timeout timeout) {
        timeout.getClass();
        this.e = timeout;
    }

    @Override // okio.Timeout
    public final Timeout a() {
        return this.e.a();
    }

    @Override // okio.Timeout
    public final Timeout b() {
        return this.e.b();
    }

    @Override // okio.Timeout
    public final long c() {
        return this.e.c();
    }

    @Override // okio.Timeout
    public final Timeout d(long j) {
        return this.e.d(j);
    }

    @Override // okio.Timeout
    public final boolean e() {
        return this.e.e();
    }

    @Override // okio.Timeout
    public final void f() {
        this.e.f();
    }

    @Override // okio.Timeout
    public final Timeout g(long j) {
        TimeUnit.MILLISECONDS.getClass();
        return this.e.g(j);
    }
}
