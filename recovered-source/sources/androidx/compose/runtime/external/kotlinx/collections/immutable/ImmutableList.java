package androidx.compose.runtime.external.kotlinx.collections.immutable;

import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import java.util.Collection;
import java.util.List;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ImmutableList<E> extends List<E>, Collection, KMappedMarker {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SubList<E> extends AbstractList<E> implements ImmutableList<E> {
        public final ImmutableList j;
        public final int k;
        public final int l;

        public SubList(ImmutableList immutableList, int i, int i2) {
            this.j = immutableList;
            this.k = i;
            ListImplementation.c(i, i2, immutableList.size());
            this.l = i2 - i;
        }

        @Override // kotlin.collections.AbstractCollection
        public final int b() {
            return this.l;
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final Object get(int i) {
            ListImplementation.a(i, this.l);
            return this.j.get(this.k + i);
        }

        @Override // kotlin.collections.AbstractList, java.util.List
        public final List subList(int i, int i2) {
            ListImplementation.c(i, i2, this.l);
            int i3 = this.k;
            return new SubList(this.j, i + i3, i3 + i2);
        }
    }

    @Override // java.util.List
    default ImmutableList subList(int i, int i2) {
        return new SubList(this, i, i2);
    }
}
