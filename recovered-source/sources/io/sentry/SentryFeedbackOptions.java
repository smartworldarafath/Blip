package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryFeedbackOptions {
    public boolean a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public boolean f;
    public boolean g;
    public CharSequence h;
    public CharSequence i;
    public CharSequence j;
    public CharSequence k;
    public CharSequence l;
    public CharSequence m;
    public CharSequence n;
    public CharSequence o;
    public CharSequence p;
    public CharSequence q;
    public CharSequence r;
    public Runnable s;

    public final boolean a() {
        return this.c;
    }

    public final boolean b() {
        return this.a;
    }

    public final boolean c() {
        return this.f;
    }

    public final boolean d() {
        return this.d;
    }

    public final boolean e() {
        return this.b;
    }

    public final boolean f() {
        return this.e;
    }

    public final boolean g() {
        return this.g;
    }

    public final void h(boolean z) {
        this.c = z;
    }

    public final void i(boolean z) {
        this.a = z;
    }

    public final void j(boolean z) {
        this.f = z;
    }

    public final void k(boolean z) {
        this.d = z;
    }

    public final void l(boolean z) {
        this.b = z;
    }

    public final void m(boolean z) {
        this.e = z;
    }

    public final void n(boolean z) {
        this.g = z;
    }

    public final String toString() {
        return "SentryFeedbackOptions{isNameRequired=" + this.a + ", showName=" + this.b + ", isEmailRequired=" + this.c + ", showEmail=" + this.d + ", useSentryUser=" + this.e + ", showBranding=" + this.f + ", useShakeGesture=" + this.g + ", formTitle='" + ((Object) this.h) + "', submitButtonLabel='" + ((Object) this.i) + "', cancelButtonLabel='" + ((Object) this.j) + "', nameLabel='" + ((Object) this.k) + "', namePlaceholder='" + ((Object) this.l) + "', emailLabel='" + ((Object) this.m) + "', emailPlaceholder='" + ((Object) this.n) + "', isRequiredLabel='" + ((Object) this.o) + "', messageLabel='" + ((Object) this.p) + "', messagePlaceholder='" + ((Object) this.q) + "'}";
    }
}
