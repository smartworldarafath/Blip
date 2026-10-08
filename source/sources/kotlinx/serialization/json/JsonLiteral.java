package kotlinx.serialization.json;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.internal.StringOpsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JsonLiteral extends JsonPrimitive {
    public final boolean j;
    public final String k;

    public JsonLiteral(String str, boolean z) {
        str.getClass();
        this.j = z;
        this.k = str.toString();
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String b() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && JsonLiteral.class == obj.getClass()) {
                JsonLiteral jsonLiteral = (JsonLiteral) obj;
                if (this.j == jsonLiteral.j && Intrinsics.a(this.k, jsonLiteral.k)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.k.hashCode() + (Boolean.hashCode(this.j) * 31);
    }

    @Override // kotlinx.serialization.json.JsonPrimitive
    public final String toString() {
        boolean z = this.j;
        String str = this.k;
        if (z) {
            StringBuilder sb = new StringBuilder();
            StringOpsKt.a(sb, str);
            return sb.toString();
        }
        return str;
    }
}
