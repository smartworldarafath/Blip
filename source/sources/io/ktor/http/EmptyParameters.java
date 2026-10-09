package io.ktor.http;

import java.util.Set;
import kotlin.collections.EmptySet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EmptyParameters implements Parameters {
    public static final EmptyParameters b = new Object();

    @Override // io.ktor.util.StringValues
    public final Set a() {
        return EmptySet.j;
    }

    @Override // io.ktor.util.StringValues
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof Parameters) && ((Parameters) obj).isEmpty()) {
            return true;
        }
        return false;
    }

    @Override // io.ktor.util.StringValues
    public final boolean isEmpty() {
        return true;
    }

    public final String toString() {
        return "Parameters " + EmptySet.j;
    }
}
