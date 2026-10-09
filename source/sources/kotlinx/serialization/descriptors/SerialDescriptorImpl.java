package kotlinx.serialization.descriptors;

import defpackage.kb;
import defpackage.r1;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.internal.CachedNames;
import kotlinx.serialization.internal.Platform_commonKt;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptorKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SerialDescriptorImpl implements SerialDescriptor, CachedNames {
    public final String a;
    public final SerialKind b;
    public final int c;
    public final HashSet d;
    public final String[] e;
    public final SerialDescriptor[] f;
    public final List[] g;
    public final boolean[] h;
    public final Map i;
    public final SerialDescriptor[] j;
    public final Lazy k;

    public SerialDescriptorImpl(String str, SerialKind serialKind, int i, List list, ClassSerialDescriptorBuilder classSerialDescriptorBuilder) {
        this.a = str;
        this.b = serialKind;
        this.c = i;
        ArrayList arrayList = classSerialDescriptorBuilder.b;
        this.d = CollectionsKt.V(arrayList);
        int i2 = 0;
        String[] strArr = (String[]) arrayList.toArray(new String[0]);
        this.e = strArr;
        this.f = Platform_commonKt.a(classSerialDescriptorBuilder.d);
        this.g = (List[]) classSerialDescriptorBuilder.e.toArray(new List[0]);
        ArrayList arrayList2 = classSerialDescriptorBuilder.f;
        arrayList2.getClass();
        boolean[] zArr = new boolean[arrayList2.size()];
        Iterator it = arrayList2.iterator();
        while (it.hasNext()) {
            zArr[i2] = ((Boolean) it.next()).booleanValue();
            i2++;
        }
        this.h = zArr;
        strArr.getClass();
        IndexingIterable indexingIterable = new IndexingIterable(new r1(4, strArr));
        ArrayList arrayList3 = new ArrayList(CollectionsKt.m(indexingIterable, 10));
        Iterator it2 = indexingIterable.iterator();
        while (true) {
            IndexingIterator indexingIterator = (IndexingIterator) it2;
            if (indexingIterator.j.hasNext()) {
                IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                arrayList3.add(new Pair(indexedValue.b, Integer.valueOf(indexedValue.a)));
            } else {
                this.i = MapsKt.h(arrayList3);
                this.j = Platform_commonKt.a(list);
                this.k = LazyKt.b(new kb(15, this));
                return;
            }
        }
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String a() {
        return this.a;
    }

    @Override // kotlinx.serialization.internal.CachedNames
    public final Set b() {
        return this.d;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int d(String str) {
        str.getClass();
        Integer num = (Integer) this.i.get(str);
        if (num != null) {
            return num.intValue();
        }
        return -3;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialKind e() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof SerialDescriptorImpl) {
                SerialDescriptor serialDescriptor = (SerialDescriptor) obj;
                if (this.a.equals(serialDescriptor.a()) && Arrays.equals(this.j, ((SerialDescriptorImpl) obj).j)) {
                    int f = serialDescriptor.f();
                    int i = this.c;
                    if (i == f) {
                        for (int i2 = 0; i2 < i; i2++) {
                            SerialDescriptor[] serialDescriptorArr = this.f;
                            if (Intrinsics.a(serialDescriptorArr[i2].a(), serialDescriptor.j(i2).a()) && Intrinsics.a(serialDescriptorArr[i2].e(), serialDescriptor.j(i2).e())) {
                            }
                        }
                        return true;
                    }
                }
            }
            return false;
        }
        return true;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final int f() {
        return this.c;
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final String g(int i) {
        return this.e[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List getAnnotations() {
        return EmptyList.j;
    }

    public final int hashCode() {
        return ((Number) this.k.getValue()).intValue();
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final List i(int i) {
        return this.g[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final SerialDescriptor j(int i) {
        return this.f[i];
    }

    @Override // kotlinx.serialization.descriptors.SerialDescriptor
    public final boolean k(int i) {
        return this.h[i];
    }

    public final String toString() {
        return PluginGeneratedSerialDescriptorKt.b(this);
    }
}
