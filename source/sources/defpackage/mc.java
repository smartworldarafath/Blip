package defpackage;

import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class mc implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ boolean k;

    public /* synthetic */ mc(int i, boolean z) {
        this.j = i;
        this.k = z;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        int i2 = 50;
        boolean z = this.k;
        ((Integer) obj).getClass();
        switch (i) {
            case 0:
                if (!z) {
                    i2 = -50;
                }
                return Integer.valueOf(i2);
            default:
                if (z) {
                    i2 = -50;
                }
                return Integer.valueOf(i2);
        }
    }
}
