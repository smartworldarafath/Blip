package defpackage;

import java.util.Comparator;
import kotlin.comparisons.ComparisonsKt;
import kotlin.jvm.functions.Function1;
import net.blip.libblip.Users_DerivedKt$recentContacts$$inlined$thenBy$1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class c5 implements Comparator {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ c5(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = this.j;
        Object obj3 = this.k;
        switch (i) {
            case 0:
                Users_DerivedKt$recentContacts$$inlined$thenBy$1 users_DerivedKt$recentContacts$$inlined$thenBy$1 = (Users_DerivedKt$recentContacts$$inlined$thenBy$1) obj3;
                if (obj == null) {
                    if (obj2 == null) {
                        return 0;
                    }
                    return 1;
                }
                if (obj2 == null) {
                    return -1;
                }
                return users_DerivedKt$recentContacts$$inlined$thenBy$1.compare(obj, obj2);
            default:
                for (Function1 function1 : (Function1[]) obj3) {
                    int b = ComparisonsKt.b((Comparable) function1.b(obj), (Comparable) function1.b(obj2));
                    if (b != 0) {
                        return b;
                    }
                }
                return 0;
        }
    }
}
