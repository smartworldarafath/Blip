package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TracesSamplingDecision {
    public final Boolean a;
    public final Double b;
    public final Double c;
    public final Boolean d;
    public final Double e;

    public TracesSamplingDecision(Boolean bool, Double d, Double d2, Boolean bool2, Double d3) {
        boolean z;
        this.a = bool;
        this.b = d;
        this.c = d2;
        if (bool.booleanValue() && bool2.booleanValue()) {
            z = true;
        } else {
            z = false;
        }
        this.d = Boolean.valueOf(z);
        this.e = d3;
    }

    public TracesSamplingDecision(Boolean bool, Double d) {
        this(bool, d, null, Boolean.FALSE, null);
    }
}
