package defpackage;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class y4 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ ArrayList k;

    public /* synthetic */ y4(int i, ArrayList arrayList) {
        this.j = i;
        this.k = arrayList;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i;
        int size;
        int i2 = this.j;
        ArrayList arrayList = this.k;
        switch (i2) {
            case 0:
                return arrayList.iterator();
            default:
                if (arrayList.isEmpty()) {
                    return EmptyList.j;
                }
                if (((CharSequence) CollectionsKt.s(arrayList)).length() == 0 && arrayList.size() > 1) {
                    i = 1;
                } else {
                    i = 0;
                }
                if (((CharSequence) CollectionsKt.z(arrayList)).length() == 0) {
                    size = arrayList.size() - 1;
                } else {
                    size = arrayList.size();
                }
                return arrayList.subList(i, size);
        }
    }
}
