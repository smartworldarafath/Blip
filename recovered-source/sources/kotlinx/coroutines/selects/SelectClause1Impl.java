package kotlinx.coroutines.selects;

import defpackage.s4;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.channels.BufferedChannel;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SelectClause1Impl<Q> implements SelectClause1<Q> {
    public final BufferedChannel a;
    public final Function3 b;
    public final Function3 c;
    public final Function3 d;

    public SelectClause1Impl(BufferedChannel bufferedChannel, Function3 function3, Function3 function32, s4 s4Var) {
        this.a = bufferedChannel;
        this.b = function3;
        this.c = function32;
        this.d = s4Var;
    }
}
