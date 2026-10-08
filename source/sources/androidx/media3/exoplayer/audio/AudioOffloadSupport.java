package androidx.media3.exoplayer.audio;

import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AudioOffloadSupport {
    public static final AudioOffloadSupport d = new Object().a();
    public final boolean a;
    public final boolean b;
    public final boolean c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public boolean a;
        public boolean b;
        public boolean c;

        public final AudioOffloadSupport a() {
            if (!this.a && (this.b || this.c)) {
                u2.l("Secondary offload attribute fields are true but primary isFormatSupported is false");
                return null;
            }
            return new AudioOffloadSupport(this);
        }
    }

    public AudioOffloadSupport(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && AudioOffloadSupport.class == obj.getClass()) {
                AudioOffloadSupport audioOffloadSupport = (AudioOffloadSupport) obj;
                if (this.a == audioOffloadSupport.a && this.b == audioOffloadSupport.b && this.c == audioOffloadSupport.c) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return ((this.a ? 1 : 0) << 2) + ((this.b ? 1 : 0) << 1) + (this.c ? 1 : 0);
    }
}
