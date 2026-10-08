package androidx.compose.animation.core;

import defpackage.ii;
import defpackage.qg;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VectorConvertersKt {
    public static final TwoWayConverter a = new TwoWayConverterImpl(new qg(21), new ii(8));
    public static final TwoWayConverter b = new TwoWayConverterImpl(new qg(22), new qg(23));
    public static final TwoWayConverter c = new TwoWayConverterImpl(new qg(24), new qg(25));
    public static final TwoWayConverter d = new TwoWayConverterImpl(new qg(26), new qg(27));
    public static final TwoWayConverter e = new TwoWayConverterImpl(new qg(28), new qg(29));
    public static final TwoWayConverter f = new TwoWayConverterImpl(new ii(0), new ii(1));
    public static final TwoWayConverter g = new TwoWayConverterImpl(new ii(2), new ii(3));
    public static final TwoWayConverter h = new TwoWayConverterImpl(new ii(4), new ii(5));
    public static final TwoWayConverter i = new TwoWayConverterImpl(new ii(6), new ii(7));

    public static final TwoWayConverter a(Function1 function1, Function1 function12) {
        return new TwoWayConverterImpl(function1, function12);
    }
}
