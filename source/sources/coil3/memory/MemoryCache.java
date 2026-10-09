package coil3.memory;

import coil3.Image;
import coil3.util.Collections_jvmCommonKt;
import defpackage.hb;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MemoryCache {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public hb a;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Key {
        public final String a;
        public final Map b;

        public Key(String str, Map map) {
            this.a = str;
            this.b = Collections_jvmCommonKt.b(map);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Key) {
                Key key = (Key) obj;
                if (Intrinsics.a(this.a, key.a) && Intrinsics.a(this.b, key.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Key(key=" + this.a + ", extras=" + this.b + ")";
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Value {
        public final Image a;
        public final Map b;

        public Value(Image image, Map map) {
            this.a = image;
            this.b = Collections_jvmCommonKt.b(map);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Value) {
                Value value = (Value) obj;
                if (Intrinsics.a(this.a, value.a) && Intrinsics.a(this.b, value.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            return this.b.hashCode() + (this.a.hashCode() * 31);
        }

        public final String toString() {
            return "Value(image=" + this.a + ", extras=" + this.b + ")";
        }
    }
}
