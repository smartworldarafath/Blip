package kotlinx.serialization.internal;

import defpackage.fe;
import defpackage.jb;
import defpackage.u2;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MapLikeDescriptor implements SerialDescriptor {
    public final SerialDescriptor a;
    public final SerialDescriptor b;

    public MapLikeDescriptor(SerialDescriptor serialDescriptor, SerialDescriptor serialDescriptor2) {
        this.a = serialDescriptor;
        this.b = serialDescriptor2;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String a() {
        return "kotlin.collections.LinkedHashMap";
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int d(String str) {
        str.getClass();
        Integer S = StringsKt.S(str);
        if (S != null) {
            return S.intValue();
        }
        u2.g(str.concat(" is not a valid map index"));
        return 0;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialKind e() {
        return StructureKind.MAP.a;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof MapLikeDescriptor) {
                MapLikeDescriptor mapLikeDescriptor = (MapLikeDescriptor) obj;
                if (!this.a.equals(mapLikeDescriptor.a) || !this.b.equals(mapLikeDescriptor.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int f() {
        return 2;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String g(int i) {
        return String.valueOf(i);
    }

    public final int hashCode() {
        return this.b.hashCode() + ((this.a.hashCode() + 710441009) * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List i(int i) {
        if (i >= 0) {
            return EmptyList.j;
        }
        fe.l(jb.d("Illegal index ", i, ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
        return null;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor j(int i) {
        if (i >= 0) {
            int i2 = i % 2;
            if (i2 != 0) {
                if (i2 == 1) {
                    return this.b;
                }
                u2.l("Unreached");
                return null;
            }
            return this.a;
        }
        fe.l(jb.d("Illegal index ", i, ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
        return null;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean k(int i) {
        if (i >= 0) {
            return false;
        }
        fe.l(jb.d("Illegal index ", i, ", kotlin.collections.LinkedHashMap expects only non-negative indices"));
        return false;
    }

    public final String toString() {
        return "kotlin.collections.LinkedHashMap(" + this.a + ", " + this.b + ')';
    }
}
