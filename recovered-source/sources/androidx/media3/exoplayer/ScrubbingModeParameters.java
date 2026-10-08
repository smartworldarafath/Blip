package androidx.media3.exoplayer;

import com.google.common.collect.ImmutableSet;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrubbingModeParameters {
    public static final ScrubbingModeParameters g;
    public final ImmutableSet a;
    public final boolean b;
    public final boolean c;
    public final boolean d;
    public final boolean e;
    public final boolean f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public ImmutableSet a;
        public boolean b;
        public boolean c;
        public boolean d;
        public boolean e;
        public boolean f;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.media3.exoplayer.ScrubbingModeParameters$Builder, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.a = ImmutableSet.l(2, 1, 5);
        obj.b = true;
        obj.c = true;
        obj.d = true;
        obj.e = true;
        obj.f = true;
        g = new ScrubbingModeParameters(obj);
    }

    public ScrubbingModeParameters(Builder builder) {
        this.a = builder.a;
        this.b = builder.b;
        this.c = builder.c;
        this.f = builder.d;
        this.d = builder.e;
        this.e = builder.f;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ScrubbingModeParameters) {
            ScrubbingModeParameters scrubbingModeParameters = (ScrubbingModeParameters) obj;
            if (this.a.equals(scrubbingModeParameters.a) && this.c == scrubbingModeParameters.c && this.f == scrubbingModeParameters.f && this.b == scrubbingModeParameters.b && this.d == scrubbingModeParameters.d && this.e == scrubbingModeParameters.e) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.a, null, null, Boolean.valueOf(this.b), Boolean.valueOf(this.c), Boolean.valueOf(this.f), Boolean.valueOf(this.d), Boolean.valueOf(this.e));
    }
}
