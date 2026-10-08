package net.blip.shared;

import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Paintable {
    public final Function2 a;

    public Paintable(Function2 function2) {
        this.a = function2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof Paintable) || !this.a.equals(((Paintable) obj).a)) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "Paintable(builder=" + this.a + ")";
    }
}
