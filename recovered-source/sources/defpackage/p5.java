package defpackage;

import coil3.decode.Decoder;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class p5 implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Decoder.Factory k;

    public /* synthetic */ p5(Decoder.Factory factory, int i) {
        this.j = i;
        this.k = factory;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Decoder.Factory factory = this.k;
        switch (i) {
            case 0:
                return CollectionsKt.B(factory);
            default:
                return CollectionsKt.B(factory);
        }
    }
}
