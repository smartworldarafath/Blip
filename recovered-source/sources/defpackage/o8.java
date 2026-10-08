package defpackage;

import androidx.compose.ui.focus.FocusTargetNode;
import java.util.Collection;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class o8 implements Function1 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ int k;
    public final /* synthetic */ Object l;

    public /* synthetic */ o8(int i, Collection collection) {
        this.k = i;
        this.l = collection;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        boolean f1;
        int i = this.j;
        Object obj2 = this.l;
        int i2 = this.k;
        switch (i) {
            case 0:
                f1 = ((FocusTargetNode) obj).f1(i2);
                ((Ref$ObjectRef) obj2).j = Boolean.valueOf(f1);
                break;
            default:
                f1 = ((List) obj).addAll(i2, (Collection) obj2);
                break;
        }
        return Boolean.valueOf(f1);
    }

    public /* synthetic */ o8(Ref$ObjectRef ref$ObjectRef, int i) {
        this.l = ref$ObjectRef;
        this.k = i;
    }
}
