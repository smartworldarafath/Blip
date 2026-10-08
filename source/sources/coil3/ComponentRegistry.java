package coil3;

import coil3.ComponentRegistry;
import coil3.decode.Decoder;
import coil3.fetch.Fetcher;
import coil3.map.Mapper;
import defpackage.p0;
import defpackage.p5;
import defpackage.r1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComponentRegistry {
    public final List a;
    public final List b;
    public final List c;
    public List d;
    public List e;
    public final Lazy f;
    public final Lazy g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public final ArrayList a;
        public final ArrayList b;
        public final ArrayList c;
        public final ArrayList d;
        public final ArrayList e;

        public Builder(ComponentRegistry componentRegistry) {
            this.a = CollectionsKt.Y(componentRegistry.a);
            this.b = CollectionsKt.Y(componentRegistry.b);
            this.c = CollectionsKt.Y(componentRegistry.c);
            List list = (List) componentRegistry.f.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(new r1(8, (Pair) it.next()));
            }
            this.d = arrayList;
            List list2 = (List) componentRegistry.g.getValue();
            ArrayList arrayList2 = new ArrayList();
            Iterator it2 = list2.iterator();
            while (it2.hasNext()) {
                arrayList2.add(new p5((Decoder.Factory) it2.next(), 0));
            }
            this.e = arrayList2;
        }

        public final void a(Fetcher.Factory factory, ClassReference classReference) {
            this.d.add(new p0(8, factory, classReference));
        }

        public final void b(Mapper mapper, ClassReference classReference) {
            this.b.add(new Pair(mapper, classReference));
        }
    }

    public ComponentRegistry(List list, List list2, List list3, List list4, List list5) {
        this.a = list;
        this.b = list2;
        this.c = list3;
        this.d = list4;
        this.e = list5;
        final int i = 0;
        this.f = LazyKt.b(new Function0(this) { // from class: o5
            public final /* synthetic */ ComponentRegistry k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i2 = i;
                EmptyList emptyList = EmptyList.j;
                int i3 = 0;
                ComponentRegistry componentRegistry = this.k;
                switch (i2) {
                    case 0:
                        List list6 = componentRegistry.d;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i3 < size) {
                            CollectionsKt.g(arrayList, (List) ((Function0) list6.get(i3)).a());
                            i3++;
                        }
                        componentRegistry.d = emptyList;
                        return arrayList;
                    default:
                        List list7 = componentRegistry.e;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i3 < size2) {
                            CollectionsKt.g(arrayList2, (List) ((Function0) list7.get(i3)).a());
                            i3++;
                        }
                        componentRegistry.e = emptyList;
                        return arrayList2;
                }
            }
        });
        final int i2 = 1;
        this.g = LazyKt.b(new Function0(this) { // from class: o5
            public final /* synthetic */ ComponentRegistry k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function0
            public final Object a() {
                int i22 = i2;
                EmptyList emptyList = EmptyList.j;
                int i3 = 0;
                ComponentRegistry componentRegistry = this.k;
                switch (i22) {
                    case 0:
                        List list6 = componentRegistry.d;
                        ArrayList arrayList = new ArrayList();
                        int size = list6.size();
                        while (i3 < size) {
                            CollectionsKt.g(arrayList, (List) ((Function0) list6.get(i3)).a());
                            i3++;
                        }
                        componentRegistry.d = emptyList;
                        return arrayList;
                    default:
                        List list7 = componentRegistry.e;
                        ArrayList arrayList2 = new ArrayList();
                        int size2 = list7.size();
                        while (i3 < size2) {
                            CollectionsKt.g(arrayList2, (List) ((Function0) list7.get(i3)).a());
                            i3++;
                        }
                        componentRegistry.e = emptyList;
                        return arrayList2;
                }
            }
        });
    }
}
