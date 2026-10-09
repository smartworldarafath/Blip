package androidx.media3.exoplayer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RendererConfiguration {
    public static final RendererConfiguration c = new RendererConfiguration(0, false);
    public final int a;
    public final boolean b;

    public RendererConfiguration(int i, boolean z) {
        this.a = i;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && RendererConfiguration.class == obj.getClass()) {
                RendererConfiguration rendererConfiguration = (RendererConfiguration) obj;
                if (this.a == rendererConfiguration.a && this.b == rendererConfiguration.b) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (this.a << 1) + (this.b ? 1 : 0);
    }
}
