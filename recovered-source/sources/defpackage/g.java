package defpackage;

import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.PersistentVectorBuilder;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class g implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Collection k;

    public /* synthetic */ g(int i, Collection collection) {
        this.j = i;
        this.k = collection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        boolean contains;
        int i = this.j;
        Collection<?> collection = this.k;
        switch (i) {
            case 0:
                contains = collection.contains(obj);
                break;
            case 1:
                int i2 = PersistentVectorBuilder.r;
                contains = collection.contains(obj);
                break;
            default:
                contains = ((List) obj).retainAll(collection);
                break;
        }
        return Boolean.valueOf(contains);
    }
}
