package io.sentry;

import io.sentry.protocol.SdkVersion;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.SampleRateUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryReplayOptions extends SentryMaskingOptions {
    public static final List u = Collections.unmodifiableList(Arrays.asList("Content-Type", "Content-Length", "Accept"));
    public volatile boolean c;
    public Double d;
    public Double e;
    public SentryReplayQuality f;
    public int g;
    public long h;
    public long i;
    public long j;
    public boolean k;
    public SdkVersion l;
    public boolean m;
    public ScreenshotStrategyType n;
    public boolean o;
    public List p;
    public List q;
    public boolean r;
    public List s;
    public List t;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum SentryReplayQuality {
        LOW(0.8f, 50000, 10),
        MEDIUM(1.0f, 75000, 30),
        HIGH(1.0f, 100000, 50);

        public final int bitRate;
        public final int screenshotQuality;
        public final float sizeScale;

        SentryReplayQuality(float f, int i, int i2) {
            this.sizeScale = f;
            this.bitRate = i;
            this.screenshotQuality = i2;
        }

        public String serializedName() {
            return name().toLowerCase(Locale.ROOT);
        }
    }

    @Override // io.sentry.SentryMaskingOptions
    public final void b(boolean z) {
        if (!z) {
            d();
        }
        super.b(z);
    }

    @Override // io.sentry.SentryMaskingOptions
    public final void c(boolean z) {
        if (!z) {
            d();
        }
        super.c(z);
    }

    @Override // io.sentry.SentryMaskingOptions
    public final void d() {
        if (!this.c) {
            this.c = true;
            IntegrationUtils.a("ReplayCustomMasking");
        }
    }

    public final List e() {
        return this.p;
    }

    public final List f() {
        return this.q;
    }

    public final List g() {
        return this.s;
    }

    public final List h() {
        return this.t;
    }

    public final Double i() {
        return this.e;
    }

    public final Double j() {
        return this.d;
    }

    public final boolean k() {
        return this.o;
    }

    public final boolean l() {
        return this.r;
    }

    public final void m(boolean z) {
        this.o = z;
    }

    public final void n(boolean z) {
        this.m = z;
    }

    public final void o(boolean z) {
        this.r = z;
    }

    public final void p(ArrayList arrayList) {
        this.p = Collections.unmodifiableList(new ArrayList(arrayList));
    }

    public final void q(ArrayList arrayList) {
        this.q = Collections.unmodifiableList(new ArrayList(arrayList));
    }

    public final void r(ArrayList arrayList) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(u);
        linkedHashSet.addAll(arrayList);
        this.s = Collections.unmodifiableList(new ArrayList(linkedHashSet));
    }

    public final void s(ArrayList arrayList) {
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        linkedHashSet.addAll(u);
        linkedHashSet.addAll(arrayList);
        this.t = Collections.unmodifiableList(new ArrayList(linkedHashSet));
    }

    public final void t(Double d) {
        if (SampleRateUtils.c(d, true)) {
            this.e = d;
        } else {
            d.g("The value ", d, " is not valid. Use null to disable or values >= 0.0 and <= 1.0.");
        }
    }

    public final void u(Double d) {
        if (SampleRateUtils.c(d, true)) {
            this.d = d;
        } else {
            d.g("The value ", d, " is not valid. Use null to disable or values >= 0.0 and <= 1.0.");
        }
    }
}
