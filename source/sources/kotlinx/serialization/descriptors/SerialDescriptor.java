package kotlinx.serialization.descriptors;

import java.util.List;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SerialDescriptor {
    String a();

    default boolean c() {
        return false;
    }

    int d(String str);

    SerialKind e();

    int f();

    String g(int i);

    default List getAnnotations() {
        return EmptyList.j;
    }

    default boolean h() {
        return false;
    }

    List i(int i);

    SerialDescriptor j(int i);

    boolean k(int i);
}
