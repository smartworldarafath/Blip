package androidx.compose.ui.graphics.vector;

import androidx.compose.ui.graphics.drawscope.DrawScope;
import defpackage.c;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VNode {
    public Function1 a;

    public abstract void a(DrawScope drawScope);

    public Function1 b() {
        return this.a;
    }

    public final void c() {
        Function1 b = b();
        if (b != null) {
            b.b(this);
        }
    }

    public void d(c cVar) {
        this.a = cVar;
    }
}
