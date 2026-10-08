package defpackage;

import com.google.firebase.components.ComponentContainer;
import com.google.firebase.components.ComponentFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d5 implements ComponentFactory {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ d5(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // com.google.firebase.components.ComponentFactory
    public final Object d(ComponentContainer componentContainer) {
        int i = this.j;
        return this.k;
    }
}
