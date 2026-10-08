package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import defpackage.q;
import io.sentry.d;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.SortedSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImmutableSet<E> extends ImmutableCollection<E> implements Set<E> {
    public static final /* synthetic */ int l = 0;
    public transient ImmutableList k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder<E> extends ImmutableCollection.ArrayBasedBuilder<E> {
        public Builder() {
            super(4);
        }

        @Override // com.google.common.collect.ImmutableCollection.Builder
        public final /* bridge */ /* synthetic */ ImmutableCollection.Builder a(Object obj) {
            h(obj);
            return this;
        }

        public final void h(Object obj) {
            obj.getClass();
            c(obj);
        }

        public final void i(List list) {
            list.getClass();
            e(list);
        }

        public final ImmutableSet j() {
            int i = this.b;
            if (i != 0) {
                Object[] objArr = this.a;
                if (i != 1) {
                    ImmutableSet l = ImmutableSet.l(i, objArr);
                    this.b = l.size();
                    this.c = true;
                    return l;
                }
                Object obj = objArr[0];
                Objects.requireNonNull(obj);
                int i2 = ImmutableSet.l;
                return new SingletonImmutableSet(obj);
            }
            int i3 = ImmutableSet.l;
            return RegularImmutableSet.s;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.ImmutableSet$Builder, com.google.common.collect.ImmutableCollection$ArrayBasedBuilder] */
    public static Builder j() {
        return new ImmutableCollection.ArrayBasedBuilder(4);
    }

    public static int k(int i) {
        int max = Math.max(i, 2);
        boolean z = true;
        if (max < 751619276) {
            int highestOneBit = Integer.highestOneBit(max - 1) << 1;
            while (highestOneBit * 0.7d < max) {
                highestOneBit <<= 1;
            }
            return highestOneBit;
        }
        if (max >= 1073741824) {
            z = false;
        }
        Preconditions.d("collection too large", z);
        return 1073741824;
    }

    public static ImmutableSet l(int i, Object... objArr) {
        if (i != 0) {
            if (i != 1) {
                int k = k(i);
                Object[] objArr2 = new Object[k];
                int i2 = k - 1;
                int i3 = 0;
                int i4 = 0;
                for (int i5 = 0; i5 < i; i5++) {
                    Object obj = objArr[i5];
                    if (obj != null) {
                        int hashCode = obj.hashCode();
                        int a = Hashing.a(hashCode);
                        while (true) {
                            int i6 = a & i2;
                            Object obj2 = objArr2[i6];
                            if (obj2 == null) {
                                objArr[i4] = obj;
                                objArr2[i6] = obj;
                                i3 += hashCode;
                                i4++;
                                break;
                            }
                            if (obj2.equals(obj)) {
                                break;
                            }
                            a++;
                        }
                    } else {
                        d.f(q.g(i5, "at index "));
                        return null;
                    }
                }
                Arrays.fill(objArr, i4, i, (Object) null);
                if (i4 == 1) {
                    Object obj3 = objArr[0];
                    Objects.requireNonNull(obj3);
                    return new SingletonImmutableSet(obj3);
                }
                if (k(i4) < k / 2) {
                    return l(i4, objArr);
                }
                int length = objArr.length;
                if (i4 < (length >> 1) + (length >> 2)) {
                    objArr = Arrays.copyOf(objArr, i4);
                }
                return new RegularImmutableSet(i3, i2, i4, objArr, objArr2);
            }
            Object obj4 = objArr[0];
            Objects.requireNonNull(obj4);
            return new SingletonImmutableSet(obj4);
        }
        return RegularImmutableSet.s;
    }

    public static ImmutableSet m(Collection collection) {
        if ((collection instanceof ImmutableSet) && !(collection instanceof SortedSet)) {
            ImmutableSet immutableSet = (ImmutableSet) collection;
            if (!immutableSet.g()) {
                return immutableSet;
            }
        }
        Object[] array = collection.toArray();
        return l(array.length, array);
    }

    public static ImmutableSet o(Object[] objArr) {
        int length = objArr.length;
        if (length != 0) {
            if (length != 1) {
                return l(objArr.length, (Object[]) objArr.clone());
            }
            return new SingletonImmutableSet(objArr[0]);
        }
        return RegularImmutableSet.s;
    }

    public static ImmutableSet r() {
        return RegularImmutableSet.s;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public ImmutableList b() {
        ImmutableList immutableList = this.k;
        if (immutableList == null) {
            ImmutableList p = p();
            this.k = p;
            return p;
        }
        return immutableList;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ImmutableSet) && (this instanceof RegularImmutableSet) && (((ImmutableSet) obj) instanceof RegularImmutableSet) && ((RegularImmutableSet) this).n != obj.hashCode()) {
            return false;
        }
        return Sets.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return Sets.c(this);
    }

    public ImmutableList p() {
        Object[] array = toArray();
        UnmodifiableListIterator unmodifiableListIterator = ImmutableList.k;
        return ImmutableList.j(array.length, array);
    }
}
