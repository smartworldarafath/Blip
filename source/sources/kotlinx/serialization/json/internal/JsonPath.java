package kotlinx.serialization.json.internal;

import java.util.Arrays;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.StructureKind;
import kotlinx.serialization.json.JsonConfiguration;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonPath {
    public final JsonConfiguration a;
    public Object[] b = new Object[8];
    public int[] c;
    public int d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RedactedKey {
        public static final RedactedKey a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Tombstone {
        public static final Tombstone a = new Object();
    }

    public JsonPath(JsonConfiguration jsonConfiguration) {
        this.a = jsonConfiguration;
        int[] iArr = new int[8];
        for (int i = 0; i < 8; i++) {
            iArr[i] = -1;
        }
        this.c = iArr;
        this.d = -1;
    }

    public final String a() {
        StringBuilder sb = new StringBuilder("$");
        int i = this.d + 1;
        for (int i2 = 0; i2 < i; i2++) {
            Object obj = this.b[i2];
            if (obj instanceof SerialDescriptor) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                boolean a = Intrinsics.a(serialDescriptor.e(), StructureKind.LIST.a);
                int[] iArr = this.c;
                if (a) {
                    if (iArr[i2] != -1) {
                        sb.append("[");
                        sb.append(this.c[i2]);
                        sb.append("]");
                    }
                } else {
                    int i3 = iArr[i2];
                    if (i3 >= 0) {
                        sb.append(".");
                        sb.append(serialDescriptor.g(i3));
                    }
                }
            } else if (obj == RedactedKey.a) {
                sb.append("[<debug info disabled>]");
            } else if (obj != Tombstone.a) {
                sb.append("['");
                sb.append(obj);
                sb.append("']");
            }
        }
        return sb.toString();
    }

    public final void b() {
        int i = this.d * 2;
        this.b = Arrays.copyOf(this.b, i);
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = -1;
        }
        ArraysKt.i(0, 0, 14, this.c, iArr);
        this.c = iArr;
    }

    public final String toString() {
        return a();
    }
}
