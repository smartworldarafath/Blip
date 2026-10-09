package kotlinx.serialization.internal;

import defpackage.jb;
import defpackage.u2;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.descriptors.StructureKind;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListLikeDescriptor implements SerialDescriptor {
    public final SerialDescriptor a;

    public ListLikeDescriptor(SerialDescriptor serialDescriptor) {
        this.a = serialDescriptor;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int d(String str) {
        str.getClass();
        Integer S = StringsKt.S(str);
        if (S != null) {
            return S.intValue();
        }
        u2.g(str.concat(" is not a valid list index"));
        return 0;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialKind e() {
        return StructureKind.LIST.a;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ListLikeDescriptor) {
                ListLikeDescriptor listLikeDescriptor = (ListLikeDescriptor) obj;
                if (Intrinsics.a(this.a, listLikeDescriptor.a) && Intrinsics.a(a(), listLikeDescriptor.a())) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int f() {
        return 1;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String g(int i) {
        return String.valueOf(i);
    }

    public final int hashCode() {
        return a().hashCode() + (this.a.hashCode() * 31);
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List i(int i) {
        if (i >= 0) {
            return EmptyList.j;
        }
        StringBuilder j = jb.j("Illegal index ", i, ", ");
        j.append(a());
        j.append(" expects only non-negative indices");
        throw new IllegalArgumentException(j.toString().toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor j(int i) {
        if (i >= 0) {
            return this.a;
        }
        StringBuilder j = jb.j("Illegal index ", i, ", ");
        j.append(a());
        j.append(" expects only non-negative indices");
        throw new IllegalArgumentException(j.toString().toString());
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean k(int i) {
        if (i >= 0) {
            return false;
        }
        StringBuilder j = jb.j("Illegal index ", i, ", ");
        j.append(a());
        j.append(" expects only non-negative indices");
        throw new IllegalArgumentException(j.toString().toString());
    }

    public final String toString() {
        return a() + '(' + this.a + ')';
    }
}
